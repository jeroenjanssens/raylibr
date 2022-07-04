// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Wave {
//     unsigned int frameCount;    // Total number of frames (considering channels)
//     unsigned int sampleRate;    // Frequency (samples per second)
//     unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
//     unsigned int channels;      // Number of channels (1-mono, 2-stereo, ...)
//     void *data;                 // Buffer data pointer
// } Wave;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Wave as(SEXP x) {
    return *XPtr<Wave>(x);
  };
  
  template <> SEXP wrap(const Wave& x) {
    Wave *ptr = new Wave;
    (*ptr) = x;
    XPtr<Wave>xptr = XPtr<Wave>(ptr, true);
    xptr.attr("class") = "wave";
    return xptr;
  };
  
}

