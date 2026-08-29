// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void draw_texture_(Texture2D texture, int pos_x, int pos_y, Color tint) {
  return DrawTexture(texture, pos_x, pos_y, tint);
}

// [[Rcpp::export]]
void draw_texture_v_(Texture2D texture, Vector2 position, Color tint) {
  return DrawTextureV(texture, position, tint);
}

// [[Rcpp::export]]
void draw_texture_ex_(Texture2D texture, Vector2 position, float rotation, float scale, Color tint) {
  return DrawTextureEx(texture, position, rotation, scale, tint);
}

// [[Rcpp::export]]
void draw_texture_rec_(Texture2D texture, Rectangle source, Vector2 position, Color tint) {
  return DrawTextureRec(texture, source, position, tint);
}

// [[Rcpp::export]]
void draw_texture_pro_(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint) {
  return DrawTexturePro(texture, source, dest, origin, rotation, tint);
}

// [[Rcpp::export]]
void draw_texture_n_patch_(Texture2D texture, NPatchInfo n_patch_info, Rectangle dest, Vector2 origin, float rotation, Color tint) {
  return DrawTextureNPatch(texture, n_patch_info, dest, origin, rotation, tint);
}

// [[Rcpp::export]]
Font get_font_default_() {
  return GetFontDefault();
}

// [[Rcpp::export]]
Font load_font_(const char * file_name) {
  return LoadFont(file_name);
}

// [[Rcpp::export]]
Font load_font_from_image_(Image image, Color key, int first_char) {
  return LoadFontFromImage(image, key, first_char);
}

// [[Rcpp::export]]
bool is_font_valid_(Font font) {
  return IsFontValid(font);
}

// [[Rcpp::export]]
void unload_font_(Font font) {
  return UnloadFont(font);
}

// [[Rcpp::export]]
void draw_fps_(int pos_x, int pos_y) {
  return DrawFPS(pos_x, pos_y);
}

// [[Rcpp::export]]
void draw_text_(const char * text, int pos_x, int pos_y, int font_size, Color color) {
  return DrawText(text, pos_x, pos_y, font_size, color);
}

// [[Rcpp::export]]
void draw_text_ex_(Font font, const char * text, Vector2 position, float font_size, float spacing, Color tint) {
  return DrawTextEx(font, text, position, font_size, spacing, tint);
}

// [[Rcpp::export]]
void draw_text_pro_(Font font, const char * text, Vector2 position, Vector2 origin, float rotation, float font_size, float spacing, Color tint) {
  return DrawTextPro(font, text, position, origin, rotation, font_size, spacing, tint);
}

// [[Rcpp::export]]
void draw_text_codepoint_(Font font, int codepoint, Vector2 position, float font_size, Color tint) {
  return DrawTextCodepoint(font, codepoint, position, font_size, tint);
}

// [[Rcpp::export]]
int measure_text_(const char * text, int font_size) {
  return MeasureText(text, font_size);
}

// [[Rcpp::export]]
Vector2 measure_text_ex_(Font font, const char * text, float font_size, float spacing) {
  return MeasureTextEx(font, text, font_size, spacing);
}
