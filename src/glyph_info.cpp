// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct GlyphInfo {
//     int value;              // Character value (Unicode)
//     int offsetX;            // Character offset X when drawing
//     int offsetY;            // Character offset Y when drawing
//     int advanceX;           // Character advance position X
//     Image image;            // Character image data
// } GlyphInfo;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> GlyphInfo as(SEXP x) {
    return *XPtr<GlyphInfo>(x);
  };
  
  template <> SEXP wrap(const GlyphInfo& x) {
    GlyphInfo *ptr = new GlyphInfo;
    (*ptr) = x;
    XPtr<GlyphInfo>xptr = XPtr<GlyphInfo>(ptr, true);
    xptr.attr("class") = "glyph_info";
    return xptr;
  };
  
}

// [[Rcpp::export]]
GlyphInfo glyph_info_(int value, int offset_x, int offset_y, int advance_x, Image image) {
  GlyphInfo obj = {};
  obj.value = value;
  obj.offsetX = offset_x;
  obj.offsetY = offset_y;
  obj.advanceX = advance_x;
  obj.image = image;
  return obj;
}

// [[Rcpp::export]]
int glyph_info_get_value_(GlyphInfo obj) {
  return obj.value;
}

// [[Rcpp::export]]
GlyphInfo glyph_info_set_value_(GlyphInfo obj, int value) {
  obj.value = value;
  return obj;
}

// [[Rcpp::export]]
int glyph_info_get_offset_x_(GlyphInfo obj) {
  return obj.offsetX;
}

// [[Rcpp::export]]
GlyphInfo glyph_info_set_offset_x_(GlyphInfo obj, int offset_x) {
  obj.offsetX = offset_x;
  return obj;
}

// [[Rcpp::export]]
int glyph_info_get_offset_y_(GlyphInfo obj) {
  return obj.offsetY;
}

// [[Rcpp::export]]
GlyphInfo glyph_info_set_offset_y_(GlyphInfo obj, int offset_y) {
  obj.offsetY = offset_y;
  return obj;
}

// [[Rcpp::export]]
int glyph_info_get_advance_x_(GlyphInfo obj) {
  return obj.advanceX;
}

// [[Rcpp::export]]
GlyphInfo glyph_info_set_advance_x_(GlyphInfo obj, int advance_x) {
  obj.advanceX = advance_x;
  return obj;
}

// [[Rcpp::export]]
Image glyph_info_get_image_(GlyphInfo obj) {
  return obj.image;
}

// [[Rcpp::export]]
GlyphInfo glyph_info_set_image_(GlyphInfo obj, Image image) {
  obj.image = image;
  return obj;
}

