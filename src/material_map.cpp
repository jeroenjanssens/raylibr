// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct MaterialMap {
//     Texture2D texture;      // Material map texture
//     Color color;            // Material map color
//     float value;            // Material map value
// } MaterialMap;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> MaterialMap as(SEXP x) {
    return *XPtr<MaterialMap>(x);
  };
  
  template <> SEXP wrap(const MaterialMap& x) {
    MaterialMap *ptr = new MaterialMap;
    (*ptr) = x;
    XPtr<MaterialMap>xptr = XPtr<MaterialMap>(ptr, true);
    xptr.attr("class") = "material_map";
    return xptr;
  };
  
}

// [[Rcpp::export]]
MaterialMap material_map_(Texture texture, Color color, float value) {
  MaterialMap obj = {};
  obj.texture = texture;
  obj.color = color;
  obj.value = value;
  return obj;
}

// [[Rcpp::export]]
Texture material_map_get_texture_(MaterialMap obj) {
  return obj.texture;
}

// [[Rcpp::export]]
MaterialMap material_map_set_texture_(MaterialMap obj, Texture texture) {
  obj.texture = texture;
  return obj;
}

// [[Rcpp::export]]
Color material_map_get_color_(MaterialMap obj) {
  return obj.color;
}

// [[Rcpp::export]]
MaterialMap material_map_set_color_(MaterialMap obj, Color color) {
  obj.color = color;
  return obj;
}

// [[Rcpp::export]]
float material_map_get_value_(MaterialMap obj) {
  return obj.value;
}

// [[Rcpp::export]]
MaterialMap material_map_set_value_(MaterialMap obj, float value) {
  obj.value = value;
  return obj;
}

