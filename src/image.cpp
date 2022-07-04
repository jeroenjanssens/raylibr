// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Image {
//     void *data;             // Image raw data
//     int width;              // Image base width
//     int height;             // Image base height
//     int mipmaps;            // Mipmap levels, 1 by default
//     int format;             // Data format (PixelFormat type)
// } Image;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Image as(SEXP x) {
    return *XPtr<Image>(x);
  };
  
  template <> SEXP wrap(const Image& x) {
    Image *ptr = new Image;
    (*ptr) = x;
    XPtr<Image>xptr = XPtr<Image>(ptr, true);
    xptr.attr("class") = "image";
    return xptr;
  };
  
}

