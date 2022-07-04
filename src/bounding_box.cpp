// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct BoundingBox {
//     Vector3 min;            // Minimum vertex box-corner
//     Vector3 max;            // Maximum vertex box-corner
// } BoundingBox;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> BoundingBox as(SEXP x) {
    return *XPtr<BoundingBox>(x);
  };
  
  template <> SEXP wrap(const BoundingBox& x) {
    BoundingBox *ptr = new BoundingBox;
    (*ptr) = x;
    XPtr<BoundingBox>xptr = XPtr<BoundingBox>(ptr, true);
    xptr.attr("class") = "bounding_box";
    return xptr;
  };
  
}

// [[Rcpp::export]]
BoundingBox bounding_box_(Vector3 min, Vector3 max) {
  BoundingBox obj = {};
  obj.min = min;
  obj.max = max;
  return obj;
}

// [[Rcpp::export]]
Vector3 bounding_box_get_min_(BoundingBox obj) {
  return obj.min;
}

// [[Rcpp::export]]
BoundingBox bounding_box_set_min_(BoundingBox obj, Vector3 min) {
  obj.min = min;
  return obj;
}

// [[Rcpp::export]]
Vector3 bounding_box_get_max_(BoundingBox obj) {
  return obj.max;
}

// [[Rcpp::export]]
BoundingBox bounding_box_set_max_(BoundingBox obj, Vector3 max) {
  obj.max = max;
  return obj;
}

