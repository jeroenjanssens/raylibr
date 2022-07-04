// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Transform {
//     Vector3 translation;    // Translation
//     Quaternion rotation;    // Rotation
//     Vector3 scale;          // Scale
// } Transform;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Transform as(SEXP x) {
    return *XPtr<Transform>(x);
  };
  
  template <> SEXP wrap(const Transform& x) {
    Transform *ptr = new Transform;
    (*ptr) = x;
    XPtr<Transform>xptr = XPtr<Transform>(ptr, true);
    xptr.attr("class") = "transform";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Transform transform_(Vector3 translation, Vector4 rotation, Vector3 scale) {
  Transform obj = {};
  obj.translation = translation;
  obj.rotation = rotation;
  obj.scale = scale;
  return obj;
}

// [[Rcpp::export]]
Vector3 transform_get_translation_(Transform obj) {
  return obj.translation;
}

// [[Rcpp::export]]
Transform transform_set_translation_(Transform obj, Vector3 translation) {
  obj.translation = translation;
  return obj;
}

// [[Rcpp::export]]
Vector4 transform_get_rotation_(Transform obj) {
  return obj.rotation;
}

// [[Rcpp::export]]
Transform transform_set_rotation_(Transform obj, Vector4 rotation) {
  obj.rotation = rotation;
  return obj;
}

// [[Rcpp::export]]
Vector3 transform_get_scale_(Transform obj) {
  return obj.scale;
}

// [[Rcpp::export]]
Transform transform_set_scale_(Transform obj, Vector3 scale) {
  obj.scale = scale;
  return obj;
}

