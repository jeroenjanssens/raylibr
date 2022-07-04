// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct NPatchInfo {
//     Rectangle source;       // Texture source rectangle
//     int left;               // Left border offset
//     int top;                // Top border offset
//     int right;              // Right border offset
//     int bottom;             // Bottom border offset
//     int layout;             // Layout of the n-patch: 3x3, 1x3 or 3x1
// } NPatchInfo;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> NPatchInfo as(SEXP x) {
    return *XPtr<NPatchInfo>(x);
  };
  
  template <> SEXP wrap(const NPatchInfo& x) {
    NPatchInfo *ptr = new NPatchInfo;
    (*ptr) = x;
    XPtr<NPatchInfo>xptr = XPtr<NPatchInfo>(ptr, true);
    xptr.attr("class") = "npatch_info";
    return xptr;
  };
  
}

// [[Rcpp::export]]
NPatchInfo npatch_info_(Rectangle source, int left, int top, int right, int bottom, int layout) {
  NPatchInfo obj = {};
  obj.source = source;
  obj.left = left;
  obj.top = top;
  obj.right = right;
  obj.bottom = bottom;
  obj.layout = layout;
  return obj;
}

// [[Rcpp::export]]
Rectangle npatch_info_get_source_(NPatchInfo obj) {
  return obj.source;
}

// [[Rcpp::export]]
NPatchInfo npatch_info_set_source_(NPatchInfo obj, Rectangle source) {
  obj.source = source;
  return obj;
}

// [[Rcpp::export]]
int npatch_info_get_left_(NPatchInfo obj) {
  return obj.left;
}

// [[Rcpp::export]]
NPatchInfo npatch_info_set_left_(NPatchInfo obj, int left) {
  obj.left = left;
  return obj;
}

// [[Rcpp::export]]
int npatch_info_get_top_(NPatchInfo obj) {
  return obj.top;
}

// [[Rcpp::export]]
NPatchInfo npatch_info_set_top_(NPatchInfo obj, int top) {
  obj.top = top;
  return obj;
}

// [[Rcpp::export]]
int npatch_info_get_right_(NPatchInfo obj) {
  return obj.right;
}

// [[Rcpp::export]]
NPatchInfo npatch_info_set_right_(NPatchInfo obj, int right) {
  obj.right = right;
  return obj;
}

// [[Rcpp::export]]
int npatch_info_get_bottom_(NPatchInfo obj) {
  return obj.bottom;
}

// [[Rcpp::export]]
NPatchInfo npatch_info_set_bottom_(NPatchInfo obj, int bottom) {
  obj.bottom = bottom;
  return obj;
}

// [[Rcpp::export]]
int npatch_info_get_layout_(NPatchInfo obj) {
  return obj.layout;
}

// [[Rcpp::export]]
NPatchInfo npatch_info_set_layout_(NPatchInfo obj, int layout) {
  obj.layout = layout;
  return obj;
}

