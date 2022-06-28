// Do not edit by hand

#include "raylibr.h"

using namespace Rcpp;

namespace Rcpp {

  template <> AudioStream as(SEXP x) {
    return *XPtr<AudioStream>(x);
  };
  
  template <> SEXP wrap(const AudioStream& x) {
    AudioStream *ptr = new AudioStream;
    (*ptr) = x;
    XPtr<AudioStream>xptr = XPtr<AudioStream>(ptr, true);
    xptr.attr("class") = "audio_stream";
    return xptr;
  };
  
  template <> BoneInfo as(SEXP x) {
    return *XPtr<BoneInfo>(x);
  };
  
  template <> SEXP wrap(const BoneInfo& x) {
    BoneInfo *ptr = new BoneInfo;
    (*ptr) = x;
    XPtr<BoneInfo>xptr = XPtr<BoneInfo>(ptr, true);
    xptr.attr("class") = "bone_info";
    return xptr;
  };
  
  template <> Camera2D as(SEXP x) {
    return *XPtr<Camera2D>(x);
  };
  
  template <> SEXP wrap(const Camera2D& x) {
    Camera2D *ptr = new Camera2D;
    (*ptr) = x;
    XPtr<Camera2D>xptr = XPtr<Camera2D>(ptr, true);
    xptr.attr("class") = "camera_2d";
    return xptr;
  };
  
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
  
  template <> Image as(SEXP x) {
    return *XPtr<Image>(x);
  };
  
  template <> SEXP wrap(const Image& x) {
    Image *ptr = new Image;
    (*ptr) = x;
    XPtr<Image>xptr = XPtr<Image>(ptr, true);
    xptr.attr("class") = "image";
    return xptr;
  };
  
  template <> Material as(SEXP x) {
    return *XPtr<Material>(x);
  };
  
  template <> SEXP wrap(const Material& x) {
    Material *ptr = new Material;
    (*ptr) = x;
    XPtr<Material>xptr = XPtr<Material>(ptr, true);
    xptr.attr("class") = "material";
    return xptr;
  };
  
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
  
  template <> Mesh as(SEXP x) {
    return *XPtr<Mesh>(x);
  };
  
  template <> SEXP wrap(const Mesh& x) {
    Mesh *ptr = new Mesh;
    (*ptr) = x;
    XPtr<Mesh>xptr = XPtr<Mesh>(ptr, true);
    xptr.attr("class") = "mesh";
    return xptr;
  };
  
  template <> Model as(SEXP x) {
    return *XPtr<Model>(x);
  };
  
  template <> SEXP wrap(const Model& x) {
    Model *ptr = new Model;
    (*ptr) = x;
    XPtr<Model>xptr = XPtr<Model>(ptr, true);
    xptr.attr("class") = "model";
    return xptr;
  };
  
  template <> ModelAnimation as(SEXP x) {
    return *XPtr<ModelAnimation>(x);
  };
  
  template <> SEXP wrap(const ModelAnimation& x) {
    ModelAnimation *ptr = new ModelAnimation;
    (*ptr) = x;
    XPtr<ModelAnimation>xptr = XPtr<ModelAnimation>(ptr, true);
    xptr.attr("class") = "model_animation";
    return xptr;
  };
  
  template <> Music as(SEXP x) {
    return *XPtr<Music>(x);
  };
  
  template <> SEXP wrap(const Music& x) {
    Music *ptr = new Music;
    (*ptr) = x;
    XPtr<Music>xptr = XPtr<Music>(ptr, true);
    xptr.attr("class") = "music";
    return xptr;
  };
  
  template <> Rectangle as(SEXP x) {
    return *XPtr<Rectangle>(x);
  };
  
  template <> SEXP wrap(const Rectangle& x) {
    Rectangle *ptr = new Rectangle;
    (*ptr) = x;
    XPtr<Rectangle>xptr = XPtr<Rectangle>(ptr, true);
    xptr.attr("class") = "rectangle";
    return xptr;
  };
  
  template <> RenderTexture as(SEXP x) {
    return *XPtr<RenderTexture>(x);
  };
  
  template <> SEXP wrap(const RenderTexture& x) {
    RenderTexture *ptr = new RenderTexture;
    (*ptr) = x;
    XPtr<RenderTexture>xptr = XPtr<RenderTexture>(ptr, true);
    xptr.attr("class") = "render_texture";
    return xptr;
  };
  
  template <> Shader as(SEXP x) {
    return *XPtr<Shader>(x);
  };
  
  template <> SEXP wrap(const Shader& x) {
    Shader *ptr = new Shader;
    (*ptr) = x;
    XPtr<Shader>xptr = XPtr<Shader>(ptr, true);
    xptr.attr("class") = "shader";
    return xptr;
  };
  
  template <> Sound as(SEXP x) {
    return *XPtr<Sound>(x);
  };
  
  template <> SEXP wrap(const Sound& x) {
    Sound *ptr = new Sound;
    (*ptr) = x;
    XPtr<Sound>xptr = XPtr<Sound>(ptr, true);
    xptr.attr("class") = "sound";
    return xptr;
  };
  
  template <> Texture as(SEXP x) {
    return *XPtr<Texture>(x);
  };
  
  template <> SEXP wrap(const Texture& x) {
    Texture *ptr = new Texture;
    (*ptr) = x;
    XPtr<Texture>xptr = XPtr<Texture>(ptr, true);
    xptr.attr("class") = "texture";
    return xptr;
  };
  
  template <> Wave as(SEXP x) {
    return *XPtr<Wave>(x);
  };
  
  template <> SEXP wrap(const Wave& x) {
    Wave *ptr = new Wave;
    (*ptr) = x;
    XPtr<Wave>xptr = XPtr<Wave>(ptr, true);
    xptr.attr("class") = "wave";
    return xptr;
  };
  
}

