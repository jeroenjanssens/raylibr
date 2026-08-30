#include "raylibr.h"

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>

static Rcpp::Function* g_update_fn = nullptr;
static Rcpp::Function* g_cleanup_fn = nullptr;

static void transfer_frame() {
  emscripten_run_script(
    "if (Module._raylibr_bc) {"
    "  var _c = Module.canvas;"
    "  var _gl = GL.currentContext ? GL.currentContext.GLctx : null;"
    "  if (_gl && _c) {"
    "    var _w = _c.width;"
    "    var _h = _c.height;"
    "    var _px = new Uint8Array(_w * _h * 4);"
    "    _gl.readPixels(0, 0, _w, _h, _gl.RGBA, _gl.UNSIGNED_BYTE, _px);"
    "    Module._raylibr_bc.postMessage({t:'f', w:_w, h:_h, px:_px.buffer}, [_px.buffer]);"
    "  }"
    "}"
  );
}

static void signal_done() {
  emscripten_run_script(
    "if (Module._raylibr_bc) Module._raylibr_bc.postMessage({t:'done'});"
  );
}

void emscripten_loop_callback() {
  if (g_update_fn) {
    try {
      (*g_update_fn)();
      transfer_frame();
    } catch (...) {
      if (g_cleanup_fn) {
        try { (*g_cleanup_fn)(); } catch (...) {}
      }
      emscripten_cancel_main_loop();
      delete g_update_fn; g_update_fn = nullptr;
      delete g_cleanup_fn; g_cleanup_fn = nullptr;
      signal_done();
    }
  }
}
#endif

// [[Rcpp::export(name = "set_main_loop_callback_")]]
void set_main_loop_callback(Rcpp::Function update_fn, SEXP cleanup_fn) {
#ifdef __EMSCRIPTEN__
  delete g_update_fn;
  delete g_cleanup_fn;
  g_update_fn = new Rcpp::Function(update_fn);
  g_cleanup_fn = (TYPEOF(cleanup_fn) == CLOSXP) ? new Rcpp::Function(cleanup_fn) : nullptr;
  emscripten_set_main_loop(emscripten_loop_callback, 0, 0);
#else
  Rcpp::stop("set_main_loop_callback_ is only available on web (Emscripten)");
#endif
}

// [[Rcpp::export(name = "raylib_version_")]]
std::string raylib_version_impl() {
  return RAYLIB_VERSION;
}

// [[Rcpp::export(name = "is_web_")]]
bool is_web_impl() {
#ifdef __EMSCRIPTEN__
  return true;
#else
  return false;
#endif
}

// [[Rcpp::export(name = "transfer_frame_")]]
void transfer_frame_r() {
#ifdef __EMSCRIPTEN__
  transfer_frame();
#endif
}

// [[Rcpp::export(name = "eval_js_")]]
std::string eval_js_impl(std::string script) {
#ifdef __EMSCRIPTEN__
  const char* result = emscripten_run_script_string(script.c_str());
  return std::string(result ? result : "");
#else
  (void)script;
  return "not web";
#endif
}

// [[Rcpp::export(name = "setup_canvas_")]]
std::string setup_canvas_impl(int width, int height) {
#ifdef __EMSCRIPTEN__
  char script[1024];
  snprintf(script, sizeof(script),
    "(function() {"
    "  try {"
    "    if (typeof OffscreenCanvas === 'undefined') return 'no OffscreenCanvas';"
    "    var _c = new OffscreenCanvas(%d, %d);"
    "    _c.id = 'canvas';"
    "    Module.canvas = _c;"
    "    var _attr = {majorVersion:2, minorVersion:0, alpha:true, depth:true,"
    "      stencil:true, antialias:true, premultipliedAlpha:true,"
    "      preserveDrawingBuffer:false, powerPreference:'default',"
    "      failIfMajorPerformanceCaveat:false, enableExtensionsByDefault:true};"
    "    var _h = GL.createContext(_c, _attr);"
    "    if (_h <= 0) return 'createContext failed: ' + _h;"
    "    var _r = _emscripten_webgl_make_context_current(_h);"
    "    if (_r !== 0) return 'make_current failed: ' + _r;"
    "    Module._raylibr_bc = new BroadcastChannel('raylibr-frames');"
    "    var _ctx = GL.contexts[_h];"
    "    var _ver = _ctx && _ctx.GLctx ? _ctx.GLctx.getParameter(_ctx.GLctx.VERSION) : 'no ctx';"
    "    return 'ok: ' + _ver + ' handle=' + _h;"
    "  } catch(e) { return 'error: ' + e.message; }"
    "})()", width, height);
  char* result = (char*)emscripten_run_script_string(script);
  return std::string(result ? result : "null");
#else
  (void)width; (void)height;
  return "not web";
#endif
}
