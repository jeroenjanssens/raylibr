// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Rectangle {
//     float x;                // Rectangle top-left corner position x
//     float y;                // Rectangle top-left corner position y
//     float width;            // Rectangle width
//     float height;           // Rectangle height
// } Rectangle;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
Rectangle rectangle_(float x, float y, float width, float height) {
  Rectangle obj = {};
  obj.x = x;
  obj.y = y;
  obj.width = width;
  obj.height = height;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_x_(Rectangle obj) {
  return obj.x;
}

// [[Rcpp::export]]
Rectangle rectangle_set_x_(Rectangle obj, float x) {
  obj.x = x;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_y_(Rectangle obj) {
  return obj.y;
}

// [[Rcpp::export]]
Rectangle rectangle_set_y_(Rectangle obj, float y) {
  obj.y = y;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_width_(Rectangle obj) {
  return obj.width;
}

// [[Rcpp::export]]
Rectangle rectangle_set_width_(Rectangle obj, float width) {
  obj.width = width;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_height_(Rectangle obj) {
  return obj.height;
}

// [[Rcpp::export]]
Rectangle rectangle_set_height_(Rectangle obj, float height) {
  obj.height = height;
  return obj;
}

