// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct AudioStream {
//     rAudioBuffer *buffer;       // Pointer to internal data used by the audio system
// 
//     unsigned int sampleRate;    // Frequency (samples per second)
//     unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
//     unsigned int channels;      // Number of channels (1-mono, 2-stereo, ...)
// } AudioStream;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> AudioStream as(SEXP x) {
    return *XPtr<AudioStream>(x);
  };
  
  template <> SEXP wrap(const AudioStream& x) {
    AudioStream *ptr = new AudioStream;
    (*ptr) = x;
    XPtr<AudioStream>xptr = XPtr<AudioStream>(ptr, true);
    xptr.attr("class") = "audio_stream";
    return xptr;
  };
  
}

