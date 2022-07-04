// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Music {
//     AudioStream stream;         // Audio stream
//     unsigned int frameCount;    // Total number of frames (considering channels)
//     bool looping;               // Music looping enable
// 
//     int ctxType;                // Type of music context (audio filetype)
//     void *ctxData;              // Audio context data, depends on type
// } Music;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Music as(SEXP x) {
    return *XPtr<Music>(x);
  };
  
  template <> SEXP wrap(const Music& x) {
    Music *ptr = new Music;
    (*ptr) = x;
    XPtr<Music>xptr = XPtr<Music>(ptr, true);
    xptr.attr("class") = "music";
    return xptr;
  };
  
}

