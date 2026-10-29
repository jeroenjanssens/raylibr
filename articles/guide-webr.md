# webR

raylibr can run in the browser via
[webR](https://docs.r-wasm.org/webr/latest/), with R and Raylib both
compiled to WebAssembly. Every demo on this site runs entirely
client-side — no server required.

## Detecting webR

Use
[`is_web()`](https://jeroenjanssens.github.io/raylibr/reference/is_web.md)
to check whether your code is running under Emscripten/webR:

``` r

if (is_web()) {
  # Browser-specific setup
} else {
  # Desktop-specific setup
}
```

## The game loop

On desktop, R can use a blocking `while` loop. In the browser, blocking
the thread would freeze the page.
[`run_game_loop()`](https://jeroenjanssens.github.io/raylibr/reference/run_game_loop.md)
handles both cases:

``` r

run_game_loop(
  init_fn = function() {
    init_window(600L, 400L, "My Game")
    set_target_fps(60L)
  },
  update_fn = function() {
    begin_drawing()
    clear_background("black")
    draw_text("Hello from webR!", 100L, 180L, 30L, "white")
    end_drawing()
  },
  cleanup_fn = close_window
)
```

On desktop this runs a `while (!window_should_close())` loop. On webR it
registers `update_fn` as an Emscripten main-loop callback, letting the
browser’s event loop stay responsive.

## JavaScript interop

[`eval_js()`](https://jeroenjanssens.github.io/raylibr/reference/eval_js.md)
executes JavaScript from R, useful for browser-specific features:

``` r

eval_js("console.log('Hello from R!')")
eval_js("document.title = 'My raylibr Game'")
```

## Architecture

Raylib runs in a webR **web worker**, not on the main thread. Rendering
and input are bridged across threads:

    Browser main thread                 webR Web Worker
    ┌──────────────────────┐           ┌──────────────────────┐
    │  <canvas>            │           │  R interpreter       │
    │  2D rendering ctx    │◄──frames──│  raylibr (WASM)      │
    │                      │           │  Raylib (WASM)       │
    │  Mouse/keyboard      │           │  OffscreenCanvas     │
    │  event listeners     │──input──►│  WebGL context       │
    │                      │  (SAB)    │                      │
    └──────────────────────┘           └──────────────────────┘

**Frame transfer**: Raylib’s `SwapScreenBuffer()` calls
`gl.readPixels()` on the OffscreenCanvas, then sends pixel data to the
main thread via `self.postMessage()` with a transferable buffer. The
main thread flips the rows (WebGL is bottom-up) and draws to the visible
`<canvas>` with `putImageData()`.

**Input forwarding**: The main thread writes mouse coordinates and key
codes to a `SharedArrayBuffer`. Raylib’s `PollInputEvents()` reads from
this buffer each frame using `Atomics.load()` and `Atomics.exchange()`.

**Sleeping**: `WindowShouldClose()` and `WaitTime()` use
`Atomics.wait()` instead of `emscripten_sleep()`, avoiding ASYNCIFY
overhead. This works in web workers where `Atomics.wait` is permitted.

## Building raylibr for webR

Prerequisites:

- [Emscripten
  SDK](https://emscripten.org/docs/getting_started/downloads.html)
  (tested with 4.0+)
- R with `Rcpp` installed natively (for headers)
- The `raylibr` package installed natively (`R CMD INSTALL .`)

Run the build script from the repository root:

``` bash
bash inst/wasm/build-webr.sh
```

This produces a webR-compatible package tarball. The script:

1.  Extracts Raylib 6.0 from the bundled tarball
2.  Patches Raylib’s platform code for worker mode
    (`inst/wasm/patch_raylib.py`)
3.  Compiles Raylib with `emcc`
    (`-DPLATFORM_WEB_EMSCRIPTEN -DGRAPHICS_API_OPENGL_ES2`)
4.  Compiles raylibr’s C++ sources with `em++` as a side module
5.  Links everything into `raylibr.so` (a WASM side module)
6.  Packages as `.tgz` with R’s lazy-load database from the native
    install

## HTML host page

Each demo page intercepts webR’s internal Web Worker to receive frame
data and forward input. Here is the minimal pattern:

``` html
<canvas id="canvas" width="600" height="400"></canvas>
<div id="loading">Loading raylibr...</div>

<script type="module">
const canvas = document.getElementById('canvas');
const ctx2d = canvas.getContext('2d');
const loading = document.getElementById('loading');

// Monkey-patch Worker to intercept webR's internal worker
const _OrigWorker = Worker;
let webRWorker = null;
globalThis.Worker = class extends _OrigWorker {
  constructor(...args) {
    super(...args);
    webRWorker = this;
    this.addEventListener('message', (e) => {
      if (e.data && e.data.type === '__raylibr_cursor') {
        canvas.style.cursor = e.data.cursor;
      } else if (e.data && e.data.type === '__raylibr_frame') {
        // Row-flip: WebGL reads bottom-up, canvas expects top-down
        const src = new Uint8ClampedArray(e.data.px);
        const w = e.data.w, h = e.data.h, stride = w * 4;
        const dst = new Uint8ClampedArray(src.length);
        for (let y = 0; y < h; y++) {
          dst.set(src.subarray((h - 1 - y) * stride, (h - y) * stride), y * stride);
        }
        ctx2d.putImageData(new ImageData(dst, w, h), 0, 0);
        if (loading.style.display !== 'none') loading.style.display = 'none';
      }
    });
  }
};

import { WebR } from 'https://webr.r-wasm.org/v0.6.0/webr.mjs';

// Audio unlock (needed for demos that play sound)
canvas.addEventListener("click", () => {
  if (webRWorker) webRWorker.postMessage({type: "__raylibr_audio_unlock"});
});

// Start webR
const webR = new WebR();
await webR.init();
await webR.installPackages(['Rcpp'], { repos: ['https://repo.r-wasm.org'], quiet: true });
const localRepo = new URL('repo', window.location.href).href;
await webR.installPackages(['raylibr'], { repos: [localRepo], quiet: true });
await webR.evalR('library(raylibr)');
await webR.evalR('...');  // Your R code here
</script>
```

For demos that need input, listen for the `__raylibr_sab` message to
receive the SharedArrayBuffer, then forward mouse/keyboard events by
writing to it with `Atomics.store()`:

``` js
// Inside the Worker message listener, add:
if (e.data && e.data.type === '__raylibr_sab') {
  inputSAB = new Int32Array(e.data.sab);
}

// Forward mouse position
canvas.addEventListener('mousemove', (e) => {
  if (!inputSAB) return;
  const rect = canvas.getBoundingClientRect();
  Atomics.store(inputSAB, 0, Math.round(e.clientX - rect.left));
  Atomics.store(inputSAB, 1, Math.round(e.clientY - rect.top));
  Atomics.store(inputSAB, 2, 1);
});

// Forward keyboard input (key pressed)
canvas.addEventListener('keydown', (e) => {
  if (!inputSAB) return;
  const KEY_MAP = { ArrowUp: 265, ArrowDown: 264, ArrowLeft: 263, ArrowRight: 262 };
  const raylibKey = KEY_MAP[e.key] || e.key.toUpperCase().charCodeAt(0);
  Atomics.store(inputSAB, 3, raylibKey);
  e.preventDefault();
});
```

## SharedArrayBuffer layout

The input SAB is an `Int32Array` with 8 elements:

| Index | Contents | Access |
|----|----|----|
| 0 | Mouse X | `Atomics.store` / `Atomics.load` |
| 1 | Mouse Y | `Atomics.store` / `Atomics.load` |
| 2 | Cursor on screen (0/1) | `Atomics.store` / `Atomics.load` |
| 3 | Last key pressed (Raylib key code) | `Atomics.store` / `Atomics.exchange` (consumed) |
| 4 | Left mouse button (0/1) | `Atomics.store` / `Atomics.load` |
| 5 | Right mouse button (0/1) | `Atomics.store` / `Atomics.load` |
| 6 | Key-down bitmask | `Atomics.or` / `Atomics.and` / `Atomics.load` |
| 7 | Char pressed (code point) | `Atomics.store` / `Atomics.exchange` (consumed) |

The key-down bitmask (index 6) encodes held-key state as bit flags: W=1,
A=2, S=4, D=8, Left=16, Right=32, Up=64, Down=128, Space=256, \[=512,
\]=1024, .=2048, ,=4096, LShift=8192, RShift=16384. Not all demos use
all bits.

## Cross-origin isolation

`SharedArrayBuffer` requires [cross-origin
isolation](https://web.dev/articles/coop-coep). Your server must send
these headers:

    Cross-Origin-Opener-Policy: same-origin
    Cross-Origin-Embedder-Policy: require-corp

For GitHub Pages (which doesn’t support custom headers), this site uses
[coi-serviceworker](https://github.com/nickmulvaney/nickmulvaney.github.io)
to set them via a service worker.

For local development, webR’s `PostMessage` channel works without these
headers but is slower.

## Limitations

- **No fullscreen or window resizing** (OffscreenCanvas has fixed
  dimensions)
- **No touch input** forwarding (could be added via SAB)
- **One instance per page** (the Worker monkey-patch captures a single
  worker reference)
- **No native file system** — use
  [`raylibr_resource()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_resource.md)
  for bundled assets

## Audio

Audio works in worker mode via SharedArrayBuffer ring buffers. The
worker generates PCM data each frame (called from `SwapScreenBuffer`),
and the main thread’s `ScriptProcessorNode` reads from the ring buffer
for playback. See `raylibr-audio.js` for the proxy implementation and
the `cubes` and `beatbox` demos for examples. A user click is required
to unlock the `AudioContext` (browser autoplay policy).
