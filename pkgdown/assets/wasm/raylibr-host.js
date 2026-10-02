/**
 * Shared host helper for raylibr webR demos.
 *
 * Handles Worker monkey-patching, frame rendering, input forwarding,
 * audio proxy, and webR bootstrap so each demo HTML only needs a
 * config object and R code.
 *
 * @param {Object} opts
 * @param {HTMLCanvasElement} opts.canvas
 * @param {HTMLElement} [opts.loadingEl]
 * @param {Object} [opts.input]
 * @param {boolean} [opts.input.mouse] - Forward mouse position (SAB[0,1,2])
 * @param {boolean} [opts.input.mouseButtons] - Forward mouse buttons (SAB[4,5])
 * @param {Object} [opts.input.keyMap] - Key → Raylib code for SAB[3]
 * @param {Object} [opts.input.keydownMap] - e.code → bitmask for SAB[6]
 * @param {boolean} [opts.input.charInput] - Forward char input (SAB[7])
 * @param {boolean} [opts.audio] - Enable audio proxy
 * @param {boolean} [opts.focusOnFirstFrame]
 * @param {boolean} [opts.focusOnMousedown]
 * @returns {Promise<{webR: object, worker: Worker}>}
 */
export async function initRaylibr(opts) {
  const { canvas, loadingEl, input, audio, focusOnFirstFrame, focusOnMousedown } = opts;
  const ctx2d = canvas.getContext('2d');

  let inputSAB = null;
  let webRWorker = null;
  let audioProxy = null;
  let _pendingFullscreen = false;

  // Inject fullscreen CSS so canvas scales to fill screen
  if (!document.getElementById('_raylibr_fs_style')) {
    const style = document.createElement('style');
    style.id = '_raylibr_fs_style';
    style.textContent = ':fullscreen canvas { width: 100vw; height: 100vh; object-fit: contain; }';
    document.head.appendChild(style);
  }

  if (audio) {
    const mod = await import('./raylibr-audio.js');
    audioProxy = mod.default || mod.audioProxy || mod;
  }

  const needsSAB = input && (input.mouse || input.mouseButtons || input.keyMap || input.keydownMap || input.charInput);

  const _OrigWorker = Worker;
  globalThis.Worker = class extends _OrigWorker {
    constructor(...args) {
      super(...args);
      webRWorker = this;
      this.addEventListener('message', (e) => {
        if (!e.data || !e.data.type) return;
        switch (e.data.type) {
          case '__raylibr_sab':
            if (needsSAB) inputSAB = new Int32Array(e.data.sab);
            break;
          case '__raylibr_cursor':
            canvas.style.cursor = e.data.cursor;
            break;
          case '__raylibr_fullscreen': {
            const p = !document.fullscreenElement
              ? document.documentElement.requestFullscreen()
              : document.exitFullscreen();
            p.catch(() => {
              _pendingFullscreen = true;
            });
            break;
          }
          case '__raylibr_frame': {
            const src = new Uint8ClampedArray(e.data.px);
            const w = e.data.w, h = e.data.h, stride = w * 4;
            const dst = new Uint8ClampedArray(src.length);
            for (let y = 0; y < h; y++) {
              dst.set(src.subarray((h - 1 - y) * stride, (h - y) * stride), y * stride);
            }
            ctx2d.putImageData(new ImageData(dst, w, h), 0, 0);
            if (loadingEl && loadingEl.style.display !== 'none') {
              loadingEl.style.display = 'none';
              if (focusOnFirstFrame) canvas.focus();
            }
            break;
          }
          case '__raylibr_audio':
            if (audioProxy) audioProxy.handle(e.data);
            break;
        }
      });
    }
  };

  function _tryFullscreen() {
    if (!_pendingFullscreen) return;
    _pendingFullscreen = false;
    if (!document.fullscreenElement) document.documentElement.requestFullscreen();
    else document.exitFullscreen();
  }

  // Input: mouse position
  if (input && input.mouse) {
    canvas.addEventListener('mousemove', (e) => {
      if (!inputSAB) return;
      const rect = canvas.getBoundingClientRect();
      const sx = canvas.width / rect.width;
      const sy = canvas.height / rect.height;
      Atomics.store(inputSAB, 0, Math.round((e.clientX - rect.left) * sx));
      Atomics.store(inputSAB, 1, Math.round((e.clientY - rect.top) * sy));
      Atomics.store(inputSAB, 2, 1);
    });
    canvas.addEventListener('mouseenter', () => {
      if (inputSAB) Atomics.store(inputSAB, 2, 1);
    });
    canvas.addEventListener('mouseleave', () => {
      if (!inputSAB) return;
      Atomics.store(inputSAB, 2, 0);
      if (input.mouseButtons) {
        Atomics.store(inputSAB, 4, 0);
        Atomics.store(inputSAB, 5, 0);
      }
    });
  }

  // Input: mouse buttons
  if (input && input.mouseButtons) {
    canvas.addEventListener('mousedown', (e) => {
      if (!inputSAB) return;
      if (e.button === 0) Atomics.store(inputSAB, 4, 1);
      if (e.button === 2) Atomics.store(inputSAB, 5, 1);
      if (focusOnMousedown) canvas.focus();
      if (!input.charInput) e.preventDefault();
    });
    canvas.addEventListener('mouseup', (e) => {
      if (!inputSAB) return;
      if (e.button === 0) Atomics.store(inputSAB, 4, 0);
      if (e.button === 2) Atomics.store(inputSAB, 5, 0);
    });
    canvas.addEventListener('contextmenu', (e) => e.preventDefault());
  }

  // Input: keyboard
  if (input && (input.keyMap || input.keydownMap || input.charInput)) {
    canvas.addEventListener('keydown', (e) => {
      _tryFullscreen();
      if (!inputSAB) return;
      let handled = false;

      if (input.keydownMap && input.keydownMap[e.code]) {
        Atomics.or(inputSAB, 6, input.keydownMap[e.code]);
        handled = true;
      }

      if (input.keyMap) {
        const raylibKey = input.keyMap[e.key] || (e.key.length === 1 ? e.key.toUpperCase().charCodeAt(0) : 0);
        if (raylibKey) {
          Atomics.store(inputSAB, 3, raylibKey);
          handled = true;
        }
      }

      if (input.charInput && e.key.length === 1) {
        Atomics.store(inputSAB, 7, e.key.codePointAt(0));
        handled = true;
      }

      if (handled) e.preventDefault();
    });

    if (input.keydownMap) {
      canvas.addEventListener('keyup', (e) => {
        if (!inputSAB || !input.keydownMap[e.code]) return;
        Atomics.and(inputSAB, 6, ~input.keydownMap[e.code]);
      });
      canvas.addEventListener('blur', () => {
        if (inputSAB) Atomics.store(inputSAB, 6, 0);
      });
    }
  }

  // Fullscreen pending: also trigger on mousedown (user activation event)
  canvas.addEventListener('mousedown', () => { _tryFullscreen(); }, true);

  // Audio unlock + general click/interaction handler
  canvas.addEventListener('click', () => {
    _tryFullscreen();
    if (webRWorker) webRWorker.postMessage({ type: '__raylibr_audio_unlock' });
    if (audioProxy) audioProxy.unlock();
  });

  // WebR bootstrap
  const { WebR } = await import('https://webr.r-wasm.org/v0.6.0/webr.mjs');
  const webR = new WebR();
  await webR.init();

  if (loadingEl) loadingEl.textContent = 'Installing packages...';
  await webR.installPackages(['Rcpp'], { repos: ['https://repo.r-wasm.org'], quiet: true });
  const localRepo = new URL('repo', window.location.href).href;
  await webR.installPackages(['raylibr'], { repos: [localRepo], quiet: true });

  if (loadingEl) loadingEl.textContent = 'Starting demo...';
  await webR.evalR('library(raylibr)');

  return { webR, worker: webRWorker };
}
