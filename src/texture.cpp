// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Texture {
//     unsigned int id;        // OpenGL texture id
//     int width;              // Texture base width
//     int height;             // Texture base height
//     int mipmaps;            // Mipmap levels, 1 by default
//     int format;             // Data format (PixelFormat type)
// } Texture;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
Texture texture_(unsigned int id, int width, int height, int mipmaps, int format) {
  Texture obj = {};
  obj.id = id;
  obj.width = width;
  obj.height = height;
  obj.mipmaps = mipmaps;
  obj.format = format;
  return obj;
}

// [[Rcpp::export]]
unsigned int texture_get_id_(Texture obj) {
  return obj.id;
}

// [[Rcpp::export]]
Texture texture_set_id_(Texture obj, unsigned int id) {
  obj.id = id;
  return obj;
}

// [[Rcpp::export]]
int texture_get_width_(Texture obj) {
  return obj.width;
}

// [[Rcpp::export]]
Texture texture_set_width_(Texture obj, int width) {
  obj.width = width;
  return obj;
}

// [[Rcpp::export]]
int texture_get_height_(Texture obj) {
  return obj.height;
}

// [[Rcpp::export]]
Texture texture_set_height_(Texture obj, int height) {
  obj.height = height;
  return obj;
}

// [[Rcpp::export]]
int texture_get_mipmaps_(Texture obj) {
  return obj.mipmaps;
}

// [[Rcpp::export]]
Texture texture_set_mipmaps_(Texture obj, int mipmaps) {
  obj.mipmaps = mipmaps;
  return obj;
}

// [[Rcpp::export]]
int texture_get_format_(Texture obj) {
  return obj.format;
}

// [[Rcpp::export]]
Texture texture_set_format_(Texture obj, int format) {
  obj.format = format;
  return obj;
}

