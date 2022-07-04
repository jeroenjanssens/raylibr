// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Ray {
//     Vector3 position;       // Ray position (origin)
//     Vector3 direction;      // Ray direction
// } Ray;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Ray as(SEXP x) {
    return *XPtr<Ray>(x);
  };
  
  template <> SEXP wrap(const Ray& x) {
    Ray *ptr = new Ray;
    (*ptr) = x;
    XPtr<Ray>xptr = XPtr<Ray>(ptr, true);
    xptr.attr("class") = "ray";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Ray ray_(Vector3 position, Vector3 direction) {
  Ray obj = {};
  obj.position = position;
  obj.direction = direction;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_get_position_(Ray obj) {
  return obj.position;
}

// [[Rcpp::export]]
Ray ray_set_position_(Ray obj, Vector3 position) {
  obj.position = position;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_get_direction_(Ray obj) {
  return obj.direction;
}

// [[Rcpp::export]]
Ray ray_set_direction_(Ray obj, Vector3 direction) {
  obj.direction = direction;
  return obj;
}

