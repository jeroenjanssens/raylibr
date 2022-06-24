#include <raylib.h>
#include <raymath.h>

#undef DEG2RAD
typedef Matrix RaylibMatrix;

#include <Rcpp.h>
using namespace Rcpp;
#undef DEG2RAD

#ifndef __RAYLIBRH__
#define __RAYLIBRH__

extern std::map<Rcpp::String, Color> rcolors;

#endif // __RAYLIBRH__
