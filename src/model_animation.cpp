// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct ModelAnimation {
//     int boneCount;          // Number of bones
//     int frameCount;         // Number of animation frames
//     BoneInfo *bones;        // Bones information (skeleton)
//     Transform **framePoses; // Poses array by frame
// } ModelAnimation;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> ModelAnimation as(SEXP x) {
    return *XPtr<ModelAnimation>(x);
  };
  
  template <> SEXP wrap(const ModelAnimation& x) {
    ModelAnimation *ptr = new ModelAnimation;
    (*ptr) = x;
    XPtr<ModelAnimation>xptr = XPtr<ModelAnimation>(ptr, true);
    xptr.attr("class") = "model_animation";
    return xptr;
  };
  
}

