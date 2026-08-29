// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void begin_texture_mode_(RenderTexture2D target) {
  return BeginTextureMode(target);
}

// [[Rcpp::export]]
void end_texture_mode_() {
  return EndTextureMode();
}

// [[Rcpp::export]]
Image load_image_(const char * file_name) {
  return LoadImage(file_name);
}

// [[Rcpp::export]]
Image load_image_from_texture_(Texture2D texture) {
  return LoadImageFromTexture(texture);
}

// [[Rcpp::export]]
Image load_image_from_screen_() {
  return LoadImageFromScreen();
}

// [[Rcpp::export]]
bool is_image_valid_(Image image) {
  return IsImageValid(image);
}

// [[Rcpp::export]]
void unload_image_(Image image) {
  return UnloadImage(image);
}

// [[Rcpp::export]]
bool export_image_(Image image, const char * file_name) {
  return ExportImage(image, file_name);
}

// [[Rcpp::export]]
bool export_image_as_code_(Image image, const char * file_name) {
  return ExportImageAsCode(image, file_name);
}

// [[Rcpp::export]]
Image gen_image_color_(int width, int height, Color color) {
  return GenImageColor(width, height, color);
}

// [[Rcpp::export]]
Image gen_image_gradient_linear_(int width, int height, int direction, Color start, Color end) {
  return GenImageGradientLinear(width, height, direction, start, end);
}

// [[Rcpp::export]]
Image gen_image_gradient_radial_(int width, int height, float density, Color inner, Color outer) {
  return GenImageGradientRadial(width, height, density, inner, outer);
}

// [[Rcpp::export]]
Image gen_image_gradient_square_(int width, int height, float density, Color inner, Color outer) {
  return GenImageGradientSquare(width, height, density, inner, outer);
}

// [[Rcpp::export]]
Image gen_image_checked_(int width, int height, int checks_x, int checks_y, Color col1, Color col2) {
  return GenImageChecked(width, height, checks_x, checks_y, col1, col2);
}

// [[Rcpp::export]]
Image gen_image_white_noise_(int width, int height, float factor) {
  return GenImageWhiteNoise(width, height, factor);
}

// [[Rcpp::export]]
Image gen_image_cellular_(int width, int height, int tile_size) {
  return GenImageCellular(width, height, tile_size);
}

// [[Rcpp::export]]
Image gen_image_text_(int width, int height, const char * text) {
  return GenImageText(width, height, text);
}

// [[Rcpp::export]]
Image image_copy_(Image image) {
  return ImageCopy(image);
}

// [[Rcpp::export]]
Image image_from_image_(Image image, Rectangle rec) {
  return ImageFromImage(image, rec);
}

// [[Rcpp::export]]
Color get_image_color_(Image image, int x, int y) {
  return GetImageColor(image, x, y);
}

// [[Rcpp::export]]
Texture2D load_texture_(const char * file_name) {
  return LoadTexture(file_name);
}

// [[Rcpp::export]]
Texture2D load_texture_from_image_(Image image) {
  return LoadTextureFromImage(image);
}

// [[Rcpp::export]]
RenderTexture2D load_render_texture_(int width, int height) {
  return LoadRenderTexture(width, height);
}

// [[Rcpp::export]]
bool is_texture_valid_(Texture2D texture) {
  return IsTextureValid(texture);
}

// [[Rcpp::export]]
void unload_texture_(Texture2D texture) {
  return UnloadTexture(texture);
}

// [[Rcpp::export]]
bool is_render_texture_valid_(RenderTexture2D target) {
  return IsRenderTextureValid(target);
}

// [[Rcpp::export]]
void unload_render_texture_(RenderTexture2D target) {
  return UnloadRenderTexture(target);
}

// [[Rcpp::export]]
void set_texture_filter_(Texture2D texture, int filter) {
  return SetTextureFilter(texture, filter);
}

// [[Rcpp::export]]
void set_texture_wrap_(Texture2D texture, int wrap) {
  return SetTextureWrap(texture, wrap);
}

// [[Rcpp::export]]
int color_to_int_(Color color) {
  return ColorToInt(color);
}

// [[Rcpp::export]]
Vector4 color_normalize_(Color color) {
  return ColorNormalize(color);
}

// [[Rcpp::export]]
Color color_tint_(Color color, Color tint) {
  return ColorTint(color, tint);
}

// [[Rcpp::export]]
Color color_alpha_(Color color, float alpha) {
  return ColorAlpha(color, alpha);
}

// [[Rcpp::export]]
Color color_alpha_blend_(Color dst, Color src, Color tint) {
  return ColorAlphaBlend(dst, src, tint);
}
