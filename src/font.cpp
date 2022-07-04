// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Font {
//     int baseSize;           // Base size (default chars height)
//     int glyphCount;         // Number of glyph characters
//     int glyphPadding;       // Padding around the glyph characters
//     Texture2D texture;      // Texture atlas containing the glyphs
//     Rectangle *recs;        // Rectangles in texture for the glyphs
//     GlyphInfo *glyphs;      // Glyphs info data
// } Font;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Font as(SEXP x) {
    return *XPtr<Font>(x);
  };
  
  template <> SEXP wrap(const Font& x) {
    Font *ptr = new Font;
    (*ptr) = x;
    XPtr<Font>xptr = XPtr<Font>(ptr, true);
    xptr.attr("class") = "font";
    return xptr;
  };
  
}

