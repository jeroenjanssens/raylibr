#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// From raylib.h:
// Rectangle, 4 components
// typedef struct Rectangle {
//   float x;                // Rectangle top-left corner position x
//   float y;                // Rectangle top-left corner position y
//   float width;            // Rectangle width
//   float height;           // Rectangle height
// } Rectangle;

// From raylib_types.h:
// template <> SEXP wrap(const Rectangle& x);
// template <> Rectangle as(SEXP);

// From gen_wrappers.cpp:
// template <> Rectangle as(SEXP x) {
//   return *XPtr<Rectangle>(x);
// };
// template <> SEXP wrap(const Rectangle& x) {
//   Rectangle *ptr = new Rectangle;
//   (*ptr) = x;
//   XPtr<Rectangle>xptr = XPtr<Rectangle>(ptr, true);
//   xptr.attr("class") = "rectangle";
//   return xptr;
// };

// [[Rcpp::export]]
float rectangle_get_x(Rectangle o) {
  return o.x;
}

// [[Rcpp::export]]
float rectangle_get_y(Rectangle o) {
  return o.y;
}

// [[Rcpp::export]]
float rectangle_get_width(Rectangle o) {
  return o.width;
}

// [[Rcpp::export]]
float rectangle_get_height(Rectangle o) {
  return o.height;
}

// [[Rcpp::export]]
Rectangle rectangle_set_x(Rectangle o, float x) {
  o.x = x;
  return o;
}

// [[Rcpp::export]]
Rectangle rectangle_set_y(Rectangle o, float y) {
  o.y = y;
  return o;
}

// [[Rcpp::export]]
Rectangle rectangle_set_width(Rectangle o, float width) {
  o.width = width;
  return o;
}

// [[Rcpp::export]]
Rectangle rectangle_set_height(Rectangle o, float height) {
  o.height = height;
  return o;
}

//' @export
// [[Rcpp::export]]
Rectangle rectangle(float x, float y, float width, float height) {
  Rectangle o = {};
  o.x = x;
  o.y = y;
  o.width = width;
  o.height = height;
  return o;
}
