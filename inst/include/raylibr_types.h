// Do not edit by hand

#include <raylib.h>

typedef Matrix RaylibMatrix;
#undef DEG2RAD

#include <RcppCommon.h>

#ifndef __RAYLIB_TYPES__
#define __RAYLIB_TYPES__

using namespace Rcpp;

namespace Rcpp {

  template <> SEXP wrap(const AudioStream& x);
  template <> AudioStream as(SEXP);
  
  template <> SEXP wrap(const BoneInfo& x);
  template <> BoneInfo as(SEXP);
  
  template <> SEXP wrap(const Camera2D& x);
  template <> Camera2D as(SEXP);
  
  template <> SEXP wrap(const Camera3D& x);
  template <> Camera3D as(SEXP);
  
  template <> SEXP wrap(const Color& x);
  template <> Color as(SEXP);
  
  template <> SEXP wrap(const Font& x);
  template <> Font as(SEXP);
  
  template <> SEXP wrap(const GlyphInfo& x);
  template <> GlyphInfo as(SEXP);
  
  template <> SEXP wrap(const Image& x);
  template <> Image as(SEXP);
  
  template <> SEXP wrap(const Material& x);
  template <> Material as(SEXP);
  
  template <> SEXP wrap(const MaterialMap& x);
  template <> MaterialMap as(SEXP);
  
  template <> SEXP wrap(const Mesh& x);
  template <> Mesh as(SEXP);
  
  template <> SEXP wrap(const Model& x);
  template <> Model as(SEXP);
  
  template <> SEXP wrap(const ModelAnimation& x);
  template <> ModelAnimation as(SEXP);
  
  template <> SEXP wrap(const Music& x);
  template <> Music as(SEXP);
  
  template <> SEXP wrap(const NPatchInfo& x);
  template <> NPatchInfo as(SEXP);
  
  template <> SEXP wrap(const RaylibMatrix& x);
  template <> RaylibMatrix as(SEXP);
  
  template <> SEXP wrap(const Rectangle& x);
  template <> Rectangle as(SEXP);
  
  template <> SEXP wrap(const RenderTexture& x);
  template <> RenderTexture as(SEXP);
  
  template <> SEXP wrap(const Shader& x);
  template <> Shader as(SEXP);
  
  template <> SEXP wrap(const Sound& x);
  template <> Sound as(SEXP);
  
  template <> SEXP wrap(const Texture& x);
  template <> Texture as(SEXP);
  
  template <> SEXP wrap(const Vector2& x);
  template <> Vector2 as(SEXP);
  
  template <> SEXP wrap(const Vector3& x);
  template <> Vector3 as(SEXP);
  
  template <> SEXP wrap(const Vector4& x);
  template <> Vector4 as(SEXP);
  
  template <> SEXP wrap(const Wave& x);
  template <> Wave as(SEXP);
  
}

#endif
