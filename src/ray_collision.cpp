// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct RayCollision {
//     bool hit;               // Did the ray hit something?
//     float distance;         // Distance to nearest hit
//     Vector3 point;          // Point of nearest hit
//     Vector3 normal;         // Surface normal of hit
// } RayCollision;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
RayCollision ray_collision_(bool hit, float distance, Vector3 point, Vector3 normal) {
  RayCollision obj = {};
  obj.hit = hit;
  obj.distance = distance;
  obj.point = point;
  obj.normal = normal;
  return obj;
}

// [[Rcpp::export]]
bool ray_collision_get_hit_(RayCollision obj) {
  return obj.hit;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_hit_(RayCollision obj, bool hit) {
  obj.hit = hit;
  return obj;
}

// [[Rcpp::export]]
float ray_collision_get_distance_(RayCollision obj) {
  return obj.distance;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_distance_(RayCollision obj, float distance) {
  obj.distance = distance;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_collision_get_point_(RayCollision obj) {
  return obj.point;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_point_(RayCollision obj, Vector3 point) {
  obj.point = point;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_collision_get_normal_(RayCollision obj) {
  return obj.normal;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_normal_(RayCollision obj, Vector3 normal) {
  obj.normal = normal;
  return obj;
}

