// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct RenderTexture {
//     unsigned int id;        // OpenGL framebuffer object id
//     Texture texture;        // Color buffer attachment texture
//     Texture depth;          // Depth buffer attachment texture
// } RenderTexture;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
RenderTexture render_texture_(unsigned int id, Texture texture, Texture depth) {
  RenderTexture obj = {};
  obj.id = id;
  obj.texture = texture;
  obj.depth = depth;
  return obj;
}

// [[Rcpp::export]]
unsigned int render_texture_get_id_(RenderTexture obj) {
  return obj.id;
}

// [[Rcpp::export]]
RenderTexture render_texture_set_id_(RenderTexture obj, unsigned int id) {
  obj.id = id;
  return obj;
}

// [[Rcpp::export]]
Texture render_texture_get_texture_(RenderTexture obj) {
  return obj.texture;
}

// [[Rcpp::export]]
RenderTexture render_texture_set_texture_(RenderTexture obj, Texture texture) {
  obj.texture = texture;
  return obj;
}

// [[Rcpp::export]]
Texture render_texture_get_depth_(RenderTexture obj) {
  return obj.depth;
}

// [[Rcpp::export]]
RenderTexture render_texture_set_depth_(RenderTexture obj, Texture depth) {
  obj.depth = depth;
  return obj;
}

