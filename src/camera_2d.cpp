// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Camera2D {
//     Vector2 offset;         // Camera offset (displacement from target)
//     Vector2 target;         // Camera target (rotation and zoom origin)
//     float rotation;         // Camera rotation in degrees
//     float zoom;             // Camera zoom (scaling), should be 1.0f by default
// } Camera2D;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
Camera2D camera_2d_(Vector2 offset, Vector2 target, float rotation, float zoom) {
  Camera2D obj = {};
  obj.offset = offset;
  obj.target = target;
  obj.rotation = rotation;
  obj.zoom = zoom;
  return obj;
}

// [[Rcpp::export]]
Vector2 camera_2d_get_offset_(Camera2D obj) {
  return obj.offset;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_offset_(Camera2D obj, Vector2 offset) {
  obj.offset = offset;
  return obj;
}

// [[Rcpp::export]]
Vector2 camera_2d_get_target_(Camera2D obj) {
  return obj.target;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_target_(Camera2D obj, Vector2 target) {
  obj.target = target;
  return obj;
}

// [[Rcpp::export]]
float camera_2d_get_rotation_(Camera2D obj) {
  return obj.rotation;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_rotation_(Camera2D obj, float rotation) {
  obj.rotation = rotation;
  return obj;
}

// [[Rcpp::export]]
float camera_2d_get_zoom_(Camera2D obj) {
  return obj.zoom;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_zoom_(Camera2D obj, float zoom) {
  obj.zoom = zoom;
  return obj;
}

