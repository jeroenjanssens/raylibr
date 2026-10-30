#include "../inst/include/raylibr_types.h"
#include <raymath.h>
#include <rlgl.h>
#include <rcamera.h>
#include <raygui.h>

#include <Rcpp.h>
using namespace Rcpp;
#undef DEG2RAD

#ifndef __RAYLIBRH__
#define __RAYLIBRH__

extern std::map<Rcpp::String, Color> rcolors;

// Functions that need an OpenGL context crash R when no window is open, so
// stop with an R error instead. fn is the R function name.
inline void raylibr_require_window(const char *fn) {
  if (!IsWindowReady()) {
    std::string msg = std::string("`") + fn + "()` needs an open window. Call `init_window()` first.";
    throw Rcpp::exception(msg.c_str(), false);
  }
}

#endif // __RAYLIBRH__
