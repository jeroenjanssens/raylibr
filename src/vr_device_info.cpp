// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct VrDeviceInfo {
//     int hResolution;                // Horizontal resolution in pixels
//     int vResolution;                // Vertical resolution in pixels
//     float hScreenSize;              // Horizontal size in meters
//     float vScreenSize;              // Vertical size in meters
//     float vScreenCenter;            // Screen center in meters
//     float eyeToScreenDistance;      // Distance between eye and display in meters
//     float lensSeparationDistance;   // Lens separation distance in meters
//     float interpupillaryDistance;   // IPD (distance between pupils) in meters
//     float lensDistortionValues[4];  // Lens distortion constant parameters
//     float chromaAbCorrection[4];    // Chromatic aberration correction parameters
// } VrDeviceInfo;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> VrDeviceInfo as(SEXP x) {
    return *XPtr<VrDeviceInfo>(x);
  };
  
  template <> SEXP wrap(const VrDeviceInfo& x) {
    VrDeviceInfo *ptr = new VrDeviceInfo;
    (*ptr) = x;
    XPtr<VrDeviceInfo>xptr = XPtr<VrDeviceInfo>(ptr, true);
    xptr.attr("class") = "vr_device_info";
    return xptr;
  };
  
}

