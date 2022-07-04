// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Camera3D {
//     Vector3 position;       // Camera position
//     Vector3 target;         // Camera target it looks-at
//     Vector3 up;             // Camera up vector (rotation over its axis)
//     float fovy;             // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
//     int projection;         // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
// } Camera3D;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Camera3D as(SEXP x) {
    return *XPtr<Camera3D>(x);
  };
  
  template <> SEXP wrap(const Camera3D& x) {
    Camera3D *ptr = new Camera3D;
    (*ptr) = x;
    XPtr<Camera3D>xptr = XPtr<Camera3D>(ptr, true);
    xptr.attr("class") = "camera_3d";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Camera3D camera_3d_(Vector3 position, Vector3 target, Vector3 up, float fovy, int projection) {
  Camera3D obj = {};
  obj.position = position;
  obj.target = target;
  obj.up = up;
  obj.fovy = fovy;
  obj.projection = projection;
  return obj;
}

// [[Rcpp::export]]
Vector3 camera_3d_get_position_(Camera3D obj) {
  return obj.position;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_position_(Camera3D obj, Vector3 position) {
  obj.position = position;
  return obj;
}

// [[Rcpp::export]]
Vector3 camera_3d_get_target_(Camera3D obj) {
  return obj.target;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_target_(Camera3D obj, Vector3 target) {
  obj.target = target;
  return obj;
}

// [[Rcpp::export]]
Vector3 camera_3d_get_up_(Camera3D obj) {
  return obj.up;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_up_(Camera3D obj, Vector3 up) {
  obj.up = up;
  return obj;
}

// [[Rcpp::export]]
float camera_3d_get_fovy_(Camera3D obj) {
  return obj.fovy;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_fovy_(Camera3D obj, float fovy) {
  obj.fovy = fovy;
  return obj;
}

// [[Rcpp::export]]
int camera_3d_get_projection_(Camera3D obj) {
  return obj.projection;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_projection_(Camera3D obj, int projection) {
  obj.projection = projection;
  return obj;
}

