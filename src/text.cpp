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

// [[Rcpp::export]]
int get_glyph_index_(Font font, int codepoint) {
  return GetGlyphIndex(font, codepoint);
}

// [[Rcpp::export]]
GlyphInfo get_glyph_info_(Font font, int codepoint) {
  return GetGlyphInfo(font, codepoint);
}

// [[Rcpp::export]]
Rectangle get_glyph_atlas_rec_(Font font, int codepoint) {
  return GetGlyphAtlasRec(font, codepoint);
}

// [[Rcpp::export]]
int get_codepoint_count_(const char * text) {
  return GetCodepointCount(text);
}

// [[Rcpp::export]]
bool text_is_equal_(const char * text1, const char * text2) {
  return TextIsEqual(text1, text2);
}

// [[Rcpp::export]]
unsigned int text_length_(const char * text) {
  return TextLength(text);
}

// [[Rcpp::export]]
const char * text_subtext_(const char * text, int position, int length) {
  return TextSubtext(text, position, length);
}

// [[Rcpp::export]]
const char * text_remove_spaces_(const char * text) {
  return TextRemoveSpaces(text);
}

// [[Rcpp::export]]
const char * text_replace_(const char * text, const char * search, const char * replacement) {
  return TextReplace(text, search, replacement);
}

// [[Rcpp::export]]
const char * text_replace_alloc_(const char * text, const char * search, const char * replacement) {
  return TextReplaceAlloc(text, search, replacement);
}

// [[Rcpp::export]]
const char * text_replace_between_(const char * text, const char * begin, const char * end, const char * replacement) {
  return TextReplaceBetween(text, begin, end, replacement);
}

// [[Rcpp::export]]
const char * text_replace_between_alloc_(const char * text, const char * begin, const char * end, const char * replacement) {
  return TextReplaceBetweenAlloc(text, begin, end, replacement);
}

// [[Rcpp::export]]
const char * text_insert_(const char * text, const char * insert, int position) {
  return TextInsert(text, insert, position);
}

// [[Rcpp::export]]
const char * text_insert_alloc_(const char * text, const char * insert, int position) {
  return TextInsertAlloc(text, insert, position);
}

// [[Rcpp::export]]
int text_find_index_(const char * text, const char * search) {
  return TextFindIndex(text, search);
}

// [[Rcpp::export]]
const char * text_to_upper_(const char * text) {
  return TextToUpper(text);
}

// [[Rcpp::export]]
const char * text_to_lower_(const char * text) {
  return TextToLower(text);
}

// [[Rcpp::export]]
const char * text_to_pascal_(const char * text) {
  return TextToPascal(text);
}

// [[Rcpp::export]]
const char * text_to_snake_(const char * text) {
  return TextToSnake(text);
}

// [[Rcpp::export]]
const char * text_to_camel_(const char * text) {
  return TextToCamel(text);
}

// [[Rcpp::export]]
int text_to_integer_(const char * text) {
  return TextToInteger(text);
}

// [[Rcpp::export]]
float text_to_float_(const char * text) {
  return TextToFloat(text);
}

// [[Rcpp::export]]
void draw_texture_vectorized_(List texture, NumericVector pos_x, NumericVector pos_y, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTexture(as<Texture2D>(texture[i]), (int)pos_x[i], (int)pos_y[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_texture_v_vectorized_(List texture, NumericMatrix position, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureV(as<Texture2D>(texture[i]), Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_texture_ex_vectorized_(List texture, NumericMatrix position, NumericVector rotation, NumericVector scale, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureEx(as<Texture2D>(texture[i]), Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, (float)rotation[i], (float)scale[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_texture_rec_vectorized_(List texture, List source, NumericMatrix position, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureRec(as<Texture2D>(texture[i]), as<Rectangle>(source[i]), Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_texture_pro_vectorized_(List texture, List source, List dest, NumericMatrix origin, NumericVector rotation, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTexturePro(as<Texture2D>(texture[i]), as<Rectangle>(source[i]), as<Rectangle>(dest[i]), Vector2{as<float>(wrap(origin(i,0))), as<float>(wrap(origin(i,1)))}, (float)rotation[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_texture_n_patch_vectorized_(List texture, List n_patch_info, List dest, NumericMatrix origin, NumericVector rotation, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureNPatch(as<Texture2D>(texture[i]), as<NPatchInfo>(n_patch_info[i]), as<Rectangle>(dest[i]), Vector2{as<float>(wrap(origin(i,0))), as<float>(wrap(origin(i,1)))}, (float)rotation[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_fps_vectorized_(NumericVector pos_x, NumericVector pos_y) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawFPS((int)pos_x[i], (int)pos_y[i]);
  }
}

// [[Rcpp::export]]
void draw_text_vectorized_(CharacterVector text, NumericVector pos_x, NumericVector pos_y, NumericVector font_size, List color) {
  for (int i = 0; i < text.length(); i++) {
    DrawText(Rcpp::as<std::string>(text[i]).c_str(), (int)pos_x[i], (int)pos_y[i], (int)font_size[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_text_ex_vectorized_(List font, CharacterVector text, NumericMatrix position, NumericVector font_size, NumericVector spacing, List tint) {
  for (int i = 0; i < font.length(); i++) {
    DrawTextEx(as<Font>(font[i]), Rcpp::as<std::string>(text[i]).c_str(), Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, (float)font_size[i], (float)spacing[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_text_pro_vectorized_(List font, CharacterVector text, NumericMatrix position, NumericMatrix origin, NumericVector rotation, NumericVector font_size, NumericVector spacing, List tint) {
  for (int i = 0; i < font.length(); i++) {
    DrawTextPro(as<Font>(font[i]), Rcpp::as<std::string>(text[i]).c_str(), Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, Vector2{as<float>(wrap(origin(i,0))), as<float>(wrap(origin(i,1)))}, (float)rotation[i], (float)font_size[i], (float)spacing[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_text_codepoint_vectorized_(List font, NumericVector codepoint, NumericMatrix position, NumericVector font_size, List tint) {
  for (int i = 0; i < font.length(); i++) {
    DrawTextCodepoint(as<Font>(font[i]), (int)codepoint[i], Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, (float)font_size[i], as<Color>(tint[i]));
  }
}
