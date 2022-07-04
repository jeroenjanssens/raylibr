// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct VrStereoConfig {
//     Matrix projection[2];           // VR projection matrices (per eye)
//     Matrix viewOffset[2];           // VR view offset matrices (per eye)
//     float leftLensCenter[2];        // VR left lens center
//     float rightLensCenter[2];       // VR right lens center
//     float leftScreenCenter[2];      // VR left screen center
//     float rightScreenCenter[2];     // VR right screen center
//     float scale[2];                 // VR distortion scale
//     float scaleIn[2];               // VR distortion scale in
// } VrStereoConfig;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> VrStereoConfig as(SEXP x) {
    return *XPtr<VrStereoConfig>(x);
  };
  
  template <> SEXP wrap(const VrStereoConfig& x) {
    VrStereoConfig *ptr = new VrStereoConfig;
    (*ptr) = x;
    XPtr<VrStereoConfig>xptr = XPtr<VrStereoConfig>(ptr, true);
    xptr.attr("class") = "vr_stereo_config";
    return xptr;
  };
  
}

