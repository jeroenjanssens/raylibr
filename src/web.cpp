#include "raylibr.h"

#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>

static Rcpp::Function* g_update_fn = nullptr;
static Rcpp::Function* g_cleanup_fn = nullptr;

void emscripten_loop_callback() {
  if (g_update_fn) {
    try {
      (*g_update_fn)();
    } catch (...) {
      if (g_cleanup_fn) {
        try { (*g_cleanup_fn)(); } catch (...) {}
      }
      emscripten_cancel_main_loop();
      delete g_update_fn; g_update_fn = nullptr;
      delete g_cleanup_fn; g_cleanup_fn = nullptr;
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
  emscripten_set_main_loop(emscripten_loop_callback, 0, 1);
  delete g_update_fn; g_update_fn = nullptr;
  delete g_cleanup_fn; g_cleanup_fn = nullptr;
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
