// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Sound {
//     AudioStream stream;         // Audio stream
//     unsigned int frameCount;    // Total number of frames (considering channels)
// } Sound;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Sound as(SEXP x) {
    return *XPtr<Sound>(x);
  };
  
  template <> SEXP wrap(const Sound& x) {
    Sound *ptr = new Sound;
    (*ptr) = x;
    XPtr<Sound>xptr = XPtr<Sound>(ptr, true);
    xptr.attr("class") = "sound";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Sound sound_(AudioStream stream, unsigned int frame_count) {
  Sound obj = {};
  obj.stream = stream;
  obj.frameCount = frame_count;
  return obj;
}

// [[Rcpp::export]]
AudioStream sound_get_stream_(Sound obj) {
  return obj.stream;
}

// [[Rcpp::export]]
Sound sound_set_stream_(Sound obj, AudioStream stream) {
  obj.stream = stream;
  return obj;
}

// [[Rcpp::export]]
unsigned int sound_get_frame_count_(Sound obj) {
  return obj.frameCount;
}

// [[Rcpp::export]]
Sound sound_set_frame_count_(Sound obj, unsigned int frame_count) {
  obj.frameCount = frame_count;
  return obj;
}

