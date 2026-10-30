// Route Raylib's log messages through R's console.
//
// Raylib's default TraceLog() writes with vprintf() to the process's stdout,
// which bypasses R's console (and R's output capturing). This sends them to
// R's stderr stream instead, like message() does.

#include "raylibr.h"
#include <cstdarg>
#include <cstdio>

// webR is single-threaded (and its R doesn't provide the thread functions
// <thread> needs), so the thread check is only compiled for desktop R.
#ifndef __EMSCRIPTEN__
#include <thread>
static std::thread::id r_thread;
#endif

static void raylibr_trace_log(int level, const char *text, va_list args) {
#ifndef __EMSCRIPTEN__
  // R's API may only be called from R's main thread; Raylib also logs from
  // its audio thread, so drop those messages rather than crash.
  if (std::this_thread::get_id() != r_thread) return;
#endif

  const char *prefix = "";
  switch (level) {
    case LOG_TRACE: prefix = "TRACE: "; break;
    case LOG_DEBUG: prefix = "DEBUG: "; break;
    case LOG_INFO: prefix = "INFO: "; break;
    case LOG_WARNING: prefix = "WARNING: "; break;
    case LOG_ERROR: prefix = "ERROR: "; break;
    case LOG_FATAL: prefix = "FATAL: "; break;
    default: break;
  }
  char buffer[1024];
  vsnprintf(buffer, sizeof(buffer), text, args);
  REprintf("%s%s\n", prefix, buffer);
}

// Called from .onLoad(). Only messages at warning level and above are
// shown by default; use set_trace_log_level() to see more.
// [[Rcpp::export]]
void raylibr_init_logging_() {
#ifndef __EMSCRIPTEN__
  r_thread = std::this_thread::get_id();
#endif
  SetTraceLogCallback(raylibr_trace_log);
  SetTraceLogLevel(LOG_WARNING);
}
