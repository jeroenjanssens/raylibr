# Compiling raylibr to WebAssembly

raylibr can be compiled to WebAssembly and run in the browser via
[webR](https://docs.r-wasm.org/webr/latest/). This page explains the
build process and how the WASM demos on this site work.

## Prerequisites

- [Emscripten
  SDK](https://emscripten.org/docs/getting_started/downloads.html)
  (tested with 4.0+)
- R with `Rcpp` installed natively (for headers and the R lazy-load
  database)
- The `raylibr` package installed natively (`R CMD INSTALL .`)

## How it works

Raylib 6.0 includes a `PLATFORM_WEB_EMSCRIPTEN` backend that uses direct
Emscripten HTML5 APIs instead of GLFW. The build script compiles both
Raylib and raylibr’s C++ sources to WebAssembly as an Emscripten [side
module](https://emscripten.org/docs/compiling/Dynamic-Linking.html),
which webR can load at runtime.

Key components:

1.  **Raylib as a static WASM library** (`libraylib.web.a`) compiled
    with `emcc` and `-DPLATFORM_WEB_EMSCRIPTEN`
2.  **raylibr C++ sources** compiled with `em++` as a side module
    (`-s SIDE_MODULE=1`)
3.  **Raylib patches** (`inst/wasm/patch_raylib.py`) that make the
    platform code worker-compatible:
    - Creates an `OffscreenCanvas` and WebGL context in the worker (no
      DOM required)
    - Replaces `emscripten_sleep()` with `Atomics.wait()` for
      non-blocking sleep
    - Sends rendered frames to the main thread via `BroadcastChannel`
      and `readPixels()`
    - Reads mouse and keyboard input from a `SharedArrayBuffer` written
      by the main thread
4.  **HTML host pages** that display frames on a `<canvas>` and forward
    input events

## Building

Run the build script from the repository root:

``` bash
bash inst/wasm/build-webr.sh
```

This produces a webR-compatible package tarball at
`pkgdown/assets/wasm/repo/bin/emscripten/contrib/4.6/raylibr_6.0.0.9000.tgz`.

The build script:

1.  Extracts Raylib 6.0 from the bundled tarball
2.  Patches Raylib’s `rcore.c` and `rcore_web_emscripten.c` for worker
    mode
3.  Compiles Raylib with `emcc`
    (`-DPLATFORM_WEB_EMSCRIPTEN -DGRAPHICS_API_OPENGL_ES2`)
4.  Compiles raylibr’s C++ sources with `em++`
5.  Links everything into `raylibr.so` (a WASM side module)
6.  Packages it as a `.tgz` with R’s lazy-load database from the native
    install

## Architecture

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
`gl.readPixels()` on the OffscreenCanvas, then sends the pixel data to
the main thread via `BroadcastChannel.postMessage()`. The main thread
flips the rows (WebGL is bottom-up) and draws to the visible `<canvas>`
with `putImageData()`.

**Input forwarding**: The main thread writes mouse coordinates and key
codes to a `SharedArrayBuffer`. Raylib’s `PollInputEvents()` reads from
this buffer on each frame using `Atomics.load()` and
`Atomics.exchange()`.

**Sleeping**: `WindowShouldClose()` and `WaitTime()` use
`Atomics.wait()` instead of `emscripten_sleep()`, which requires
ASYNCIFY. This works in Web Workers (where `Atomics.wait` is allowed)
and avoids busy-waiting.

## HTML host page

Each demo page follows this pattern:

``` html
<canvas id="canvas" width="600" height="400"></canvas>

<script type="module">
import { WebR } from 'https://webr.r-wasm.org/v0.6.0/webr.mjs';

const canvas = document.getElementById('canvas');
const ctx2d = canvas.getContext('2d');
let inputSAB = null;

// Receive frames and SAB from worker
const bc = new BroadcastChannel('raylibr-frames');
bc.onmessage = (e) => {
  if (e.data.t === 'f') {
    // Flip rows (WebGL readPixels is bottom-up)
    const src = new Uint8ClampedArray(e.data.px);
    const w = e.data.w, h = e.data.h, stride = w * 4;
    const dst = new Uint8ClampedArray(src.length);
    for (let y = 0; y < h; y++) {
      dst.set(src.subarray((h - 1 - y) * stride, (h - y) * stride), y * stride);
    }
    ctx2d.putImageData(new ImageData(dst, w, h), 0, 0);
  } else if (e.data.t === 'sab') {
    inputSAB = new Int32Array(e.data.sab);
  }
};

// Forward mouse input to worker via SAB
canvas.addEventListener('mousemove', (e) => {
  if (!inputSAB) return;
  const rect = canvas.getBoundingClientRect();
  Atomics.store(inputSAB, 0, Math.round(e.clientX - rect.left));
  Atomics.store(inputSAB, 1, Math.round(e.clientY - rect.top));
  Atomics.store(inputSAB, 2, 1); // cursor on screen
});

// Forward keyboard input (Raylib key codes)
const KEY_MAP = { ArrowUp: 265, ArrowDown: 264, ArrowLeft: 263, ArrowRight: 262 };
canvas.addEventListener('keydown', (e) => {
  if (!inputSAB) return;
  const raylibKey = KEY_MAP[e.key] || e.key.toUpperCase().charCodeAt(0);
  Atomics.store(inputSAB, 3, raylibKey);
  e.preventDefault();
});

// Start webR and run the demo
const webR = new WebR();
await webR.init();
await webR.installPackages(['Rcpp'], { repos: ['https://repo.r-wasm.org'], quiet: true });
await webR.installPackages(['raylibr'], { repos: ['./repo'], quiet: true });
await webR.evalR('library(raylibr)');

// Run the exact same R code as the native demo
await webR.evalR(`
  init_window(600, 400, "My Demo")
  while (!window_should_close()) {
    begin_drawing()
    clear_background("black")
    draw_text("Hello from R + WASM!", 100, 180, 30, "white")
    end_drawing()
  }
  close_window()
`);
</script>
```

## SharedArrayBuffer layout

The input SAB is an `Int32Array` with 8 elements:

| Index | Contents | Access |
|----|----|----|
| 0 | Mouse X | `Atomics.store` / `Atomics.load` |
| 1 | Mouse Y | `Atomics.store` / `Atomics.load` |
| 2 | Cursor on screen (0/1) | `Atomics.store` / `Atomics.load` |
| 3 | Last key pressed (Raylib key code) | `Atomics.store` / `Atomics.exchange` (consumed) |
| 4-7 | Reserved |  |

## Raylib key codes

Common Raylib key codes for the `KEY_MAP`:

| Key        | Code  |
|------------|-------|
| A-Z        | 65-90 |
| 0-9        | 48-57 |
| Space      | 32    |
| Enter      | 257   |
| Escape     | 256   |
| ArrowRight | 262   |
| ArrowLeft  | 263   |
| ArrowDown  | 264   |
| ArrowUp    | 265   |

## Cross-origin headers

`SharedArrayBuffer` requires [cross-origin
isolation](https://web.dev/articles/coop-coep). Your server must send:

    Cross-Origin-Opener-Policy: same-origin
    Cross-Origin-Embedder-Policy: require-corp

For local development, use a server that sets these headers. webR’s
`PostMessage` channel works without them but is slower.

## Limitations

- No audio support in worker mode (Web Audio API requires the main
  thread)
- No fullscreen or window resizing (OffscreenCanvas has fixed
  dimensions)
- Touch input is not forwarded (could be added via SAB)
- Only one raylibr instance per page (BroadcastChannel uses a fixed
  name)
