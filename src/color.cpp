// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Color {
//     unsigned char r;        // Color red value
//     unsigned char g;        // Color green value
//     unsigned char b;        // Color blue value
//     unsigned char a;        // Color alpha value
// } Color;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
Color color_(unsigned int r, unsigned int g, unsigned int b, unsigned int a) {
  Color obj = {};
  obj.r = r;
  obj.g = g;
  obj.b = b;
  obj.a = a;
  return obj;
}

// [[Rcpp::export]]
unsigned int color_get_r_(Color obj) {
  return obj.r;
}

// [[Rcpp::export]]
Color color_set_r_(Color obj, unsigned int r) {
  obj.r = r;
  return obj;
}

// [[Rcpp::export]]
unsigned int color_get_g_(Color obj) {
  return obj.g;
}

// [[Rcpp::export]]
Color color_set_g_(Color obj, unsigned int g) {
  obj.g = g;
  return obj;
}

// [[Rcpp::export]]
unsigned int color_get_b_(Color obj) {
  return obj.b;
}

// [[Rcpp::export]]
Color color_set_b_(Color obj, unsigned int b) {
  obj.b = b;
  return obj;
}

// [[Rcpp::export]]
unsigned int color_get_a_(Color obj) {
  return obj.a;
}

// [[Rcpp::export]]
Color color_set_a_(Color obj, unsigned int a) {
  obj.a = a;
  return obj;
}

