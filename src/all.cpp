// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

////////////////////////////////////////////////////////////////////////////////
// typedef struct AudioStream {
//     rAudioBuffer *buffer;       // Pointer to internal data used by the audio system
// 
//     unsigned int sampleRate;    // Frequency (samples per second)
//     unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
//     unsigned int channels;      // Number of channels (1-mono, 2-stereo, ...)
// } AudioStream;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> AudioStream as(SEXP x) {
    return *XPtr<AudioStream>(x);
  };
  
  template <> SEXP wrap(const AudioStream& x) {
    AudioStream *ptr = new AudioStream;
    (*ptr) = x;
    XPtr<AudioStream>xptr = XPtr<AudioStream>(ptr, true);
    xptr.attr("class") = "raylibr_audio_stream";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct BoneInfo {
//     char name[32];          // Bone name
//     int parent;             // Bone parent
// } BoneInfo;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> BoneInfo as(SEXP x) {
    return *XPtr<BoneInfo>(x);
  };
  
  template <> SEXP wrap(const BoneInfo& x) {
    BoneInfo *ptr = new BoneInfo;
    (*ptr) = x;
    XPtr<BoneInfo>xptr = XPtr<BoneInfo>(ptr, true);
    xptr.attr("class") = "raylibr_bone_info";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct BoundingBox {
//     Vector3 min;            // Minimum vertex box-corner
//     Vector3 max;            // Maximum vertex box-corner
// } BoundingBox;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> BoundingBox as(SEXP x) {
    return *XPtr<BoundingBox>(x);
  };
  
  template <> SEXP wrap(const BoundingBox& x) {
    BoundingBox *ptr = new BoundingBox;
    (*ptr) = x;
    XPtr<BoundingBox>xptr = XPtr<BoundingBox>(ptr, true);
    xptr.attr("class") = "raylibr_bounding_box";
    return xptr;
  };
  
}

// [[Rcpp::export]]
BoundingBox bounding_box_(Vector3 min, Vector3 max) {
  BoundingBox obj = {};
  obj.min = min;
  obj.max = max;
  return obj;
}

// [[Rcpp::export]]
Vector3 bounding_box_get_min_(BoundingBox obj) {
  return obj.min;
}

// [[Rcpp::export]]
BoundingBox bounding_box_set_min_(BoundingBox obj, Vector3 min) {
  obj.min = min;
  return obj;
}

// [[Rcpp::export]]
Vector3 bounding_box_get_max_(BoundingBox obj) {
  return obj.max;
}

// [[Rcpp::export]]
BoundingBox bounding_box_set_max_(BoundingBox obj, Vector3 max) {
  obj.max = max;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Camera2D {
//     Vector2 offset;         // Camera offset (displacement from target)
//     Vector2 target;         // Camera target (rotation and zoom origin)
//     float rotation;         // Camera rotation in degrees
//     float zoom;             // Camera zoom (scaling), should be 1.0f by default
// } Camera2D;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Camera2D as(SEXP x) {
    return *XPtr<Camera2D>(x);
  };
  
  template <> SEXP wrap(const Camera2D& x) {
    Camera2D *ptr = new Camera2D;
    (*ptr) = x;
    XPtr<Camera2D>xptr = XPtr<Camera2D>(ptr, true);
    xptr.attr("class") = "raylibr_camera_2d";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Camera2D camera_2d_(Vector2 offset, Vector2 target, float rotation, float zoom) {
  Camera2D obj = {};
  obj.offset = offset;
  obj.target = target;
  obj.rotation = rotation;
  obj.zoom = zoom;
  return obj;
}

// [[Rcpp::export]]
Vector2 camera_2d_get_offset_(Camera2D obj) {
  return obj.offset;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_offset_(Camera2D obj, Vector2 offset) {
  obj.offset = offset;
  return obj;
}

// [[Rcpp::export]]
Vector2 camera_2d_get_target_(Camera2D obj) {
  return obj.target;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_target_(Camera2D obj, Vector2 target) {
  obj.target = target;
  return obj;
}

// [[Rcpp::export]]
float camera_2d_get_rotation_(Camera2D obj) {
  return obj.rotation;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_rotation_(Camera2D obj, float rotation) {
  obj.rotation = rotation;
  return obj;
}

// [[Rcpp::export]]
float camera_2d_get_zoom_(Camera2D obj) {
  return obj.zoom;
}

// [[Rcpp::export]]
Camera2D camera_2d_set_zoom_(Camera2D obj, float zoom) {
  obj.zoom = zoom;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Camera3D {
//     Vector3 position;       // Camera position
//     Vector3 target;         // Camera target it looks-at
//     Vector3 up;             // Camera up vector (rotation over its axis)
//     float fovy;             // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
//     int projection;         // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
// } Camera3D;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Camera3D as(SEXP x) {
    return *XPtr<Camera3D>(x);
  };
  
  template <> SEXP wrap(const Camera3D& x) {
    Camera3D *ptr = new Camera3D;
    (*ptr) = x;
    XPtr<Camera3D>xptr = XPtr<Camera3D>(ptr, true);
    xptr.attr("class") = "raylibr_camera_3d";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Camera3D camera_3d_(Vector3 position, Vector3 target, Vector3 up, float fovy, int projection) {
  Camera3D obj = {};
  obj.position = position;
  obj.target = target;
  obj.up = up;
  obj.fovy = fovy;
  obj.projection = projection;
  return obj;
}

// [[Rcpp::export]]
Vector3 camera_3d_get_position_(Camera3D obj) {
  return obj.position;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_position_(Camera3D obj, Vector3 position) {
  obj.position = position;
  return obj;
}

// [[Rcpp::export]]
Vector3 camera_3d_get_target_(Camera3D obj) {
  return obj.target;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_target_(Camera3D obj, Vector3 target) {
  obj.target = target;
  return obj;
}

// [[Rcpp::export]]
Vector3 camera_3d_get_up_(Camera3D obj) {
  return obj.up;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_up_(Camera3D obj, Vector3 up) {
  obj.up = up;
  return obj;
}

// [[Rcpp::export]]
float camera_3d_get_fovy_(Camera3D obj) {
  return obj.fovy;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_fovy_(Camera3D obj, float fovy) {
  obj.fovy = fovy;
  return obj;
}

// [[Rcpp::export]]
int camera_3d_get_projection_(Camera3D obj) {
  return obj.projection;
}

// [[Rcpp::export]]
Camera3D camera_3d_set_projection_(Camera3D obj, int projection) {
  obj.projection = projection;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Color {
//     unsigned char r;        // Color red value
//     unsigned char g;        // Color green value
//     unsigned char b;        // Color blue value
//     unsigned char a;        // Color alpha value
// } Color;
////////////////////////////////////////////////////////////////////////////////

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

////////////////////////////////////////////////////////////////////////////////
// typedef struct Font {
//     int baseSize;           // Base size (default chars height)
//     int glyphCount;         // Number of glyph characters
//     int glyphPadding;       // Padding around the glyph characters
//     Texture2D texture;      // Texture atlas containing the glyphs
//     Rectangle *recs;        // Rectangles in texture for the glyphs
//     GlyphInfo *glyphs;      // Glyphs info data
// } Font;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Font as(SEXP x) {
    return *XPtr<Font>(x);
  };
  
  template <> SEXP wrap(const Font& x) {
    Font *ptr = new Font;
    (*ptr) = x;
    XPtr<Font>xptr = XPtr<Font>(ptr, true);
    xptr.attr("class") = "raylibr_font";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct GlyphInfo {
//     int value;              // Character value (Unicode)
//     int offsetX;            // Character offset X when drawing
//     int offsetY;            // Character offset Y when drawing
//     int advanceX;           // Character advance position X
//     Image image;            // Character image data
// } GlyphInfo;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> GlyphInfo as(SEXP x) {
    return *XPtr<GlyphInfo>(x);
  };
  
  template <> SEXP wrap(const GlyphInfo& x) {
    GlyphInfo *ptr = new GlyphInfo;
    (*ptr) = x;
    XPtr<GlyphInfo>xptr = XPtr<GlyphInfo>(ptr, true);
    xptr.attr("class") = "raylibr_glyph_info";
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

////////////////////////////////////////////////////////////////////////////////
// typedef struct Image {
//     void *data;             // Image raw data
//     int width;              // Image base width
//     int height;             // Image base height
//     int mipmaps;            // Mipmap levels, 1 by default
//     int format;             // Data format (PixelFormat type)
// } Image;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Image as(SEXP x) {
    return *XPtr<Image>(x);
  };
  
  template <> SEXP wrap(const Image& x) {
    Image *ptr = new Image;
    (*ptr) = x;
    XPtr<Image>xptr = XPtr<Image>(ptr, true);
    xptr.attr("class") = "raylibr_image";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Material {
//     Shader shader;          // Material shader
//     MaterialMap *maps;      // Material maps array (MAX_MATERIAL_MAPS)
//     float params[4];        // Material generic parameters (if required)
// } Material;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Material as(SEXP x) {
    return *XPtr<Material>(x);
  };
  
  template <> SEXP wrap(const Material& x) {
    Material *ptr = new Material;
    (*ptr) = x;
    XPtr<Material>xptr = XPtr<Material>(ptr, true);
    xptr.attr("class") = "raylibr_material";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct MaterialMap {
//     Texture2D texture;      // Material map texture
//     Color color;            // Material map color
//     float value;            // Material map value
// } MaterialMap;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> MaterialMap as(SEXP x) {
    return *XPtr<MaterialMap>(x);
  };
  
  template <> SEXP wrap(const MaterialMap& x) {
    MaterialMap *ptr = new MaterialMap;
    (*ptr) = x;
    XPtr<MaterialMap>xptr = XPtr<MaterialMap>(ptr, true);
    xptr.attr("class") = "raylibr_material_map";
    return xptr;
  };
  
}

// [[Rcpp::export]]
MaterialMap material_map_(Texture texture, Color color, float value) {
  MaterialMap obj = {};
  obj.texture = texture;
  obj.color = color;
  obj.value = value;
  return obj;
}

// [[Rcpp::export]]
Texture material_map_get_texture_(MaterialMap obj) {
  return obj.texture;
}

// [[Rcpp::export]]
MaterialMap material_map_set_texture_(MaterialMap obj, Texture texture) {
  obj.texture = texture;
  return obj;
}

// [[Rcpp::export]]
Color material_map_get_color_(MaterialMap obj) {
  return obj.color;
}

// [[Rcpp::export]]
MaterialMap material_map_set_color_(MaterialMap obj, Color color) {
  obj.color = color;
  return obj;
}

// [[Rcpp::export]]
float material_map_get_value_(MaterialMap obj) {
  return obj.value;
}

// [[Rcpp::export]]
MaterialMap material_map_set_value_(MaterialMap obj, float value) {
  obj.value = value;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Mesh {
//     int vertexCount;        // Number of vertices stored in arrays
//     int triangleCount;      // Number of triangles stored (indexed or not)
// 
//     // Vertex attributes data
//     float *vertices;        // Vertex position (XYZ - 3 components per vertex) (shader-location = 0)
//     float *texcoords;       // Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
//     float *texcoords2;      // Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
//     float *normals;         // Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
//     float *tangents;        // Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)
//     unsigned char *colors;      // Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
//     unsigned short *indices;    // Vertex indices (in case vertex data comes indexed)
// 
//     // Animation vertex data
//     float *animVertices;    // Animated vertex positions (after bones transformations)
//     float *animNormals;     // Animated normals (after bones transformations)
//     unsigned char *boneIds; // Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)
//     float *boneWeights;     // Vertex bone weight, up to 4 bones influence by vertex (skinning)
// 
//     // OpenGL identifiers
//     unsigned int vaoId;     // OpenGL Vertex Array Object id
//     unsigned int *vboId;    // OpenGL Vertex Buffer Objects id (default vertex data)
// } Mesh;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Mesh as(SEXP x) {
    return *XPtr<Mesh>(x);
  };
  
  template <> SEXP wrap(const Mesh& x) {
    Mesh *ptr = new Mesh;
    (*ptr) = x;
    XPtr<Mesh>xptr = XPtr<Mesh>(ptr, true);
    xptr.attr("class") = "raylibr_mesh";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Model {
//     Matrix transform;       // Local transform matrix
// 
//     int meshCount;          // Number of meshes
//     int materialCount;      // Number of materials
//     Mesh *meshes;           // Meshes array
//     Material *materials;    // Materials array
//     int *meshMaterial;      // Mesh material number
// 
//     // Animation data
//     int boneCount;          // Number of bones
//     BoneInfo *bones;        // Bones information (skeleton)
//     Transform *bindPose;    // Bones base transformation (pose)
// } Model;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Model as(SEXP x) {
    return *XPtr<Model>(x);
  };
  
  template <> SEXP wrap(const Model& x) {
    Model *ptr = new Model;
    (*ptr) = x;
    XPtr<Model>xptr = XPtr<Model>(ptr, true);
    xptr.attr("class") = "raylibr_model";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct ModelAnimation {
//     int boneCount;          // Number of bones
//     int frameCount;         // Number of animation frames
//     BoneInfo *bones;        // Bones information (skeleton)
//     Transform **framePoses; // Poses array by frame
// } ModelAnimation;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> ModelAnimation as(SEXP x) {
    return *XPtr<ModelAnimation>(x);
  };
  
  template <> SEXP wrap(const ModelAnimation& x) {
    ModelAnimation *ptr = new ModelAnimation;
    (*ptr) = x;
    XPtr<ModelAnimation>xptr = XPtr<ModelAnimation>(ptr, true);
    xptr.attr("class") = "raylibr_model_animation";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Music {
//     AudioStream stream;         // Audio stream
//     unsigned int frameCount;    // Total number of frames (considering channels)
//     bool looping;               // Music looping enable
// 
//     int ctxType;                // Type of music context (audio filetype)
//     void *ctxData;              // Audio context data, depends on type
// } Music;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Music as(SEXP x) {
    return *XPtr<Music>(x);
  };
  
  template <> SEXP wrap(const Music& x) {
    Music *ptr = new Music;
    (*ptr) = x;
    XPtr<Music>xptr = XPtr<Music>(ptr, true);
    xptr.attr("class") = "raylibr_music";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct NPatchInfo {
//     Rectangle source;       // Texture source rectangle
//     int left;               // Left border offset
//     int top;                // Top border offset
//     int right;              // Right border offset
//     int bottom;             // Bottom border offset
//     int layout;             // Layout of the n-patch: 3x3, 1x3 or 3x1
// } NPatchInfo;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> NPatchInfo as(SEXP x) {
    return *XPtr<NPatchInfo>(x);
  };
  
  template <> SEXP wrap(const NPatchInfo& x) {
    NPatchInfo *ptr = new NPatchInfo;
    (*ptr) = x;
    XPtr<NPatchInfo>xptr = XPtr<NPatchInfo>(ptr, true);
    xptr.attr("class") = "raylibr_npatch_info";
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

////////////////////////////////////////////////////////////////////////////////
// typedef struct Ray {
//     Vector3 position;       // Ray position (origin)
//     Vector3 direction;      // Ray direction
// } Ray;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Ray as(SEXP x) {
    return *XPtr<Ray>(x);
  };
  
  template <> SEXP wrap(const Ray& x) {
    Ray *ptr = new Ray;
    (*ptr) = x;
    XPtr<Ray>xptr = XPtr<Ray>(ptr, true);
    xptr.attr("class") = "raylibr_ray";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Ray ray_(Vector3 position, Vector3 direction) {
  Ray obj = {};
  obj.position = position;
  obj.direction = direction;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_get_position_(Ray obj) {
  return obj.position;
}

// [[Rcpp::export]]
Ray ray_set_position_(Ray obj, Vector3 position) {
  obj.position = position;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_get_direction_(Ray obj) {
  return obj.direction;
}

// [[Rcpp::export]]
Ray ray_set_direction_(Ray obj, Vector3 direction) {
  obj.direction = direction;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct RayCollision {
//     bool hit;               // Did the ray hit something?
//     float distance;         // Distance to nearest hit
//     Vector3 point;          // Point of nearest hit
//     Vector3 normal;         // Surface normal of hit
// } RayCollision;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> RayCollision as(SEXP x) {
    return *XPtr<RayCollision>(x);
  };
  
  template <> SEXP wrap(const RayCollision& x) {
    RayCollision *ptr = new RayCollision;
    (*ptr) = x;
    XPtr<RayCollision>xptr = XPtr<RayCollision>(ptr, true);
    xptr.attr("class") = "raylibr_ray_collision";
    return xptr;
  };
  
}

// [[Rcpp::export]]
RayCollision ray_collision_(bool hit, float distance, Vector3 point, Vector3 normal) {
  RayCollision obj = {};
  obj.hit = hit;
  obj.distance = distance;
  obj.point = point;
  obj.normal = normal;
  return obj;
}

// [[Rcpp::export]]
bool ray_collision_get_hit_(RayCollision obj) {
  return obj.hit;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_hit_(RayCollision obj, bool hit) {
  obj.hit = hit;
  return obj;
}

// [[Rcpp::export]]
float ray_collision_get_distance_(RayCollision obj) {
  return obj.distance;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_distance_(RayCollision obj, float distance) {
  obj.distance = distance;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_collision_get_point_(RayCollision obj) {
  return obj.point;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_point_(RayCollision obj, Vector3 point) {
  obj.point = point;
  return obj;
}

// [[Rcpp::export]]
Vector3 ray_collision_get_normal_(RayCollision obj) {
  return obj.normal;
}

// [[Rcpp::export]]
RayCollision ray_collision_set_normal_(RayCollision obj, Vector3 normal) {
  obj.normal = normal;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Rectangle {
//     float x;                // Rectangle top-left corner position x
//     float y;                // Rectangle top-left corner position y
//     float width;            // Rectangle width
//     float height;           // Rectangle height
// } Rectangle;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Rectangle as(SEXP x) {
    return *XPtr<Rectangle>(x);
  };
  
  template <> SEXP wrap(const Rectangle& x) {
    Rectangle *ptr = new Rectangle;
    (*ptr) = x;
    XPtr<Rectangle>xptr = XPtr<Rectangle>(ptr, true);
    xptr.attr("class") = "raylibr_rectangle";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Rectangle rectangle_(float x, float y, float width, float height) {
  Rectangle obj = {};
  obj.x = x;
  obj.y = y;
  obj.width = width;
  obj.height = height;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_x_(Rectangle obj) {
  return obj.x;
}

// [[Rcpp::export]]
Rectangle rectangle_set_x_(Rectangle obj, float x) {
  obj.x = x;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_y_(Rectangle obj) {
  return obj.y;
}

// [[Rcpp::export]]
Rectangle rectangle_set_y_(Rectangle obj, float y) {
  obj.y = y;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_width_(Rectangle obj) {
  return obj.width;
}

// [[Rcpp::export]]
Rectangle rectangle_set_width_(Rectangle obj, float width) {
  obj.width = width;
  return obj;
}

// [[Rcpp::export]]
float rectangle_get_height_(Rectangle obj) {
  return obj.height;
}

// [[Rcpp::export]]
Rectangle rectangle_set_height_(Rectangle obj, float height) {
  obj.height = height;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct RenderTexture {
//     unsigned int id;        // OpenGL framebuffer object id
//     Texture texture;        // Color buffer attachment texture
//     Texture depth;          // Depth buffer attachment texture
// } RenderTexture;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> RenderTexture as(SEXP x) {
    return *XPtr<RenderTexture>(x);
  };
  
  template <> SEXP wrap(const RenderTexture& x) {
    RenderTexture *ptr = new RenderTexture;
    (*ptr) = x;
    XPtr<RenderTexture>xptr = XPtr<RenderTexture>(ptr, true);
    xptr.attr("class") = "raylibr_render_texture";
    return xptr;
  };
  
}

// [[Rcpp::export]]
RenderTexture render_texture_(unsigned int id, Texture texture, Texture depth) {
  RenderTexture obj = {};
  obj.id = id;
  obj.texture = texture;
  obj.depth = depth;
  return obj;
}

// [[Rcpp::export]]
unsigned int render_texture_get_id_(RenderTexture obj) {
  return obj.id;
}

// [[Rcpp::export]]
RenderTexture render_texture_set_id_(RenderTexture obj, unsigned int id) {
  obj.id = id;
  return obj;
}

// [[Rcpp::export]]
Texture render_texture_get_texture_(RenderTexture obj) {
  return obj.texture;
}

// [[Rcpp::export]]
RenderTexture render_texture_set_texture_(RenderTexture obj, Texture texture) {
  obj.texture = texture;
  return obj;
}

// [[Rcpp::export]]
Texture render_texture_get_depth_(RenderTexture obj) {
  return obj.depth;
}

// [[Rcpp::export]]
RenderTexture render_texture_set_depth_(RenderTexture obj, Texture depth) {
  obj.depth = depth;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Shader {
//     unsigned int id;        // Shader program id
//     int *locs;              // Shader locations array (RL_MAX_SHADER_LOCATIONS)
// } Shader;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Shader as(SEXP x) {
    return *XPtr<Shader>(x);
  };
  
  template <> SEXP wrap(const Shader& x) {
    Shader *ptr = new Shader;
    (*ptr) = x;
    XPtr<Shader>xptr = XPtr<Shader>(ptr, true);
    xptr.attr("class") = "raylibr_shader";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Sound {
//     AudioStream stream;         // Audio stream
//     unsigned int frameCount;    // Total number of frames (considering channels)
// } Sound;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Sound as(SEXP x) {
    return *XPtr<Sound>(x);
  };
  
  template <> SEXP wrap(const Sound& x) {
    Sound *ptr = new Sound;
    (*ptr) = x;
    XPtr<Sound>xptr = XPtr<Sound>(ptr, true);
    xptr.attr("class") = "raylibr_sound";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Sound sound_(AudioStream stream, unsigned int frame_count) {
  Sound obj = {};
  obj.stream = stream;
  obj.frameCount = frame_count;
  return obj;
}

// [[Rcpp::export]]
AudioStream sound_get_stream_(Sound obj) {
  return obj.stream;
}

// [[Rcpp::export]]
Sound sound_set_stream_(Sound obj, AudioStream stream) {
  obj.stream = stream;
  return obj;
}

// [[Rcpp::export]]
unsigned int sound_get_frame_count_(Sound obj) {
  return obj.frameCount;
}

// [[Rcpp::export]]
Sound sound_set_frame_count_(Sound obj, unsigned int frame_count) {
  obj.frameCount = frame_count;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Texture {
//     unsigned int id;        // OpenGL texture id
//     int width;              // Texture base width
//     int height;             // Texture base height
//     int mipmaps;            // Mipmap levels, 1 by default
//     int format;             // Data format (PixelFormat type)
// } Texture;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Texture as(SEXP x) {
    return *XPtr<Texture>(x);
  };
  
  template <> SEXP wrap(const Texture& x) {
    Texture *ptr = new Texture;
    (*ptr) = x;
    XPtr<Texture>xptr = XPtr<Texture>(ptr, true);
    xptr.attr("class") = "raylibr_texture";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Texture texture_(unsigned int id, int width, int height, int mipmaps, int format) {
  Texture obj = {};
  obj.id = id;
  obj.width = width;
  obj.height = height;
  obj.mipmaps = mipmaps;
  obj.format = format;
  return obj;
}

// [[Rcpp::export]]
unsigned int texture_get_id_(Texture obj) {
  return obj.id;
}

// [[Rcpp::export]]
Texture texture_set_id_(Texture obj, unsigned int id) {
  obj.id = id;
  return obj;
}

// [[Rcpp::export]]
int texture_get_width_(Texture obj) {
  return obj.width;
}

// [[Rcpp::export]]
Texture texture_set_width_(Texture obj, int width) {
  obj.width = width;
  return obj;
}

// [[Rcpp::export]]
int texture_get_height_(Texture obj) {
  return obj.height;
}

// [[Rcpp::export]]
Texture texture_set_height_(Texture obj, int height) {
  obj.height = height;
  return obj;
}

// [[Rcpp::export]]
int texture_get_mipmaps_(Texture obj) {
  return obj.mipmaps;
}

// [[Rcpp::export]]
Texture texture_set_mipmaps_(Texture obj, int mipmaps) {
  obj.mipmaps = mipmaps;
  return obj;
}

// [[Rcpp::export]]
int texture_get_format_(Texture obj) {
  return obj.format;
}

// [[Rcpp::export]]
Texture texture_set_format_(Texture obj, int format) {
  obj.format = format;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Transform {
//     Vector3 translation;    // Translation
//     Quaternion rotation;    // Rotation
//     Vector3 scale;          // Scale
// } Transform;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Transform as(SEXP x) {
    return *XPtr<Transform>(x);
  };
  
  template <> SEXP wrap(const Transform& x) {
    Transform *ptr = new Transform;
    (*ptr) = x;
    XPtr<Transform>xptr = XPtr<Transform>(ptr, true);
    xptr.attr("class") = "raylibr_transform";
    return xptr;
  };
  
}

// [[Rcpp::export]]
Transform transform_(Vector3 translation, Vector4 rotation, Vector3 scale) {
  Transform obj = {};
  obj.translation = translation;
  obj.rotation = rotation;
  obj.scale = scale;
  return obj;
}

// [[Rcpp::export]]
Vector3 transform_get_translation_(Transform obj) {
  return obj.translation;
}

// [[Rcpp::export]]
Transform transform_set_translation_(Transform obj, Vector3 translation) {
  obj.translation = translation;
  return obj;
}

// [[Rcpp::export]]
Vector4 transform_get_rotation_(Transform obj) {
  return obj.rotation;
}

// [[Rcpp::export]]
Transform transform_set_rotation_(Transform obj, Vector4 rotation) {
  obj.rotation = rotation;
  return obj;
}

// [[Rcpp::export]]
Vector3 transform_get_scale_(Transform obj) {
  return obj.scale;
}

// [[Rcpp::export]]
Transform transform_set_scale_(Transform obj, Vector3 scale) {
  obj.scale = scale;
  return obj;
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct VrDeviceInfo {
//     int hResolution;                // Horizontal resolution in pixels
//     int vResolution;                // Vertical resolution in pixels
//     float hScreenSize;              // Horizontal size in meters
//     float vScreenSize;              // Vertical size in meters
//     float vScreenCenter;            // Screen center in meters
//     float eyeToScreenDistance;      // Distance between eye and display in meters
//     float lensSeparationDistance;   // Lens separation distance in meters
//     float interpupillaryDistance;   // IPD (distance between pupils) in meters
//     float lensDistortionValues[4];  // Lens distortion constant parameters
//     float chromaAbCorrection[4];    // Chromatic aberration correction parameters
// } VrDeviceInfo;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> VrDeviceInfo as(SEXP x) {
    return *XPtr<VrDeviceInfo>(x);
  };
  
  template <> SEXP wrap(const VrDeviceInfo& x) {
    VrDeviceInfo *ptr = new VrDeviceInfo;
    (*ptr) = x;
    XPtr<VrDeviceInfo>xptr = XPtr<VrDeviceInfo>(ptr, true);
    xptr.attr("class") = "raylibr_vr_device_info";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct VrStereoConfig {
//     Matrix projection[2];           // VR projection matrices (per eye)
//     Matrix viewOffset[2];           // VR view offset matrices (per eye)
//     float leftLensCenter[2];        // VR left lens center
//     float rightLensCenter[2];       // VR right lens center
//     float leftScreenCenter[2];      // VR left screen center
//     float rightScreenCenter[2];     // VR right screen center
//     float scale[2];                 // VR distortion scale
//     float scaleIn[2];               // VR distortion scale in
// } VrStereoConfig;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> VrStereoConfig as(SEXP x) {
    return *XPtr<VrStereoConfig>(x);
  };
  
  template <> SEXP wrap(const VrStereoConfig& x) {
    VrStereoConfig *ptr = new VrStereoConfig;
    (*ptr) = x;
    XPtr<VrStereoConfig>xptr = XPtr<VrStereoConfig>(ptr, true);
    xptr.attr("class") = "raylibr_vr_stereo_config";
    return xptr;
  };
  
}

////////////////////////////////////////////////////////////////////////////////
// typedef struct Wave {
//     unsigned int frameCount;    // Total number of frames (considering channels)
//     unsigned int sampleRate;    // Frequency (samples per second)
//     unsigned int sampleSize;    // Bit depth (bits per sample): 8, 16, 32 (24 not supported)
//     unsigned int channels;      // Number of channels (1-mono, 2-stereo, ...)
//     void *data;                 // Buffer data pointer
// } Wave;
////////////////////////////////////////////////////////////////////////////////

namespace Rcpp {

  template <> Wave as(SEXP x) {
    return *XPtr<Wave>(x);
  };
  
  template <> SEXP wrap(const Wave& x) {
    Wave *ptr = new Wave;
    (*ptr) = x;
    XPtr<Wave>xptr = XPtr<Wave>(ptr, true);
    xptr.attr("class") = "raylibr_wave";
    return xptr;
  };
  
}

// Begin extra_classes.cpp

namespace Rcpp {
  template <> SEXP wrap(const Vector2& x) {
    NumericVector v = NumericVector::create(x.x, x.y);
    v.attr("names") = CharacterVector::create("x", "y");
    return v;
  };

  template <> Vector2 as(SEXP x) {
    NumericVector v = as<NumericVector>(x);
    return Vector2 {as<float>(wrap(v[0])),
                    as<float>(wrap(v[1]))
      };
  };

  template <> SEXP wrap(const Vector3& x) {
    NumericVector v = NumericVector::create(x.x, x.y, x.z);
    v.attr("names") = CharacterVector::create("x", "y", "z");
    return v;
  };

  template <> Vector3 as(SEXP x) {
    NumericVector v = as<NumericVector>(x);
    return Vector3 {as<float>(wrap(v[0])),
                    as<float>(wrap(v[1])),
                    as<float>(wrap(v[2]))
      };
  };

  template <> RaylibMatrix as(SEXP x) {
    NumericMatrix m = as<NumericMatrix>(x);
    return RaylibMatrix {
      as<float>(wrap(m[0])),
      as<float>(wrap(m[4])),
      as<float>(wrap(m[8])),
      as<float>(wrap(m[12])),

      as<float>(wrap(m[1])),
      as<float>(wrap(m[5])),
      as<float>(wrap(m[9])),
      as<float>(wrap(m[13])),

      as<float>(wrap(m[2])),
      as<float>(wrap(m[6])),
      as<float>(wrap(m[10])),
      as<float>(wrap(m[14])),

      as<float>(wrap(m[3])),
      as<float>(wrap(m[7])),
      as<float>(wrap(m[11])),
      as<float>(wrap(m[15]))
    };
  };

  template <> SEXP wrap(const RaylibMatrix& m) {
    NumericVector v = {m.m0, m.m1, m.m2, m.m3,
                       m.m4, m.m5, m.m6, m.m7,
                       m.m8, m.m9, m.m10, m.m11,
                       m.m12, m.m13, m.m14, m.m15};

    v.attr("dim") = Dimension(4, 4);
    return as<NumericMatrix>(v);
  };

  template <> SEXP wrap(const Vector4& x) {
    NumericVector v = NumericVector::create(x.x, x.y, x.z, x.w);
    v.attr("names") = CharacterVector::create("x", "y", "z", "w");
    return v;
  };

  template <> Vector4 as(SEXP x) {
    NumericVector v = as<NumericVector>(x);
    return Vector4 {as<float>(wrap(v[0])),
                    as<float>(wrap(v[1])),
                    as<float>(wrap(v[2])),
                    as<float>(wrap(v[3]))
      };
  };

  template <> SEXP wrap(const Color& x) {
    Color *ptr = new Color;
    (*ptr) = x;
    XPtr<Color>xptr = XPtr<Color>(ptr, true);
    xptr.attr("class") = "color";
    return xptr;
  };

  template <> Color as(SEXP x) {
    Color color;
    switch(TYPEOF(x)) {
      case EXTPTRSXP: {
        return *XPtr<Color>(x);
      }
      case VECSXP: {
        List y = List(x);
        try {
          color.r = as<unsigned char>(y["r"]);
        } catch(...) {
          color.r = 0;
        }

        try {
          color.g = as<unsigned char>(y["g"]);
        } catch(...) {
          color.g = 0;
        }

        try {
          color.b = as<unsigned char>(y["b"]);
        } catch(...) {
          color.b = 0;
        }

        try {
          color.a = as<unsigned char>(y["a"]);
        } catch(...) {
          color.a = 255;
        }
        break;
      }
      case REALSXP: {
        color = GetColor(as<unsigned int>(x));
        break;
      }
      case STRSXP: {
        color = rcolors[as<String>(x)];
        break;
      }
      default: {
        stop("Incompatible color provided");
      }
    }

    return color;
  };

}
// End extra_classes.cpp

// [[Rcpp::export]]
void init_window_(int width, int height, const char * title) {
  return InitWindow(width, height, title);
}

// [[Rcpp::export]]
bool window_should_close_() {
  return WindowShouldClose();
}

// [[Rcpp::export]]
void close_window_() {
  return CloseWindow();
}

// [[Rcpp::export]]
bool is_window_ready_() {
  return IsWindowReady();
}

// [[Rcpp::export]]
bool is_window_fullscreen_() {
  return IsWindowFullscreen();
}

// [[Rcpp::export]]
bool is_window_hidden_() {
  return IsWindowHidden();
}

// [[Rcpp::export]]
bool is_window_minimized_() {
  return IsWindowMinimized();
}

// [[Rcpp::export]]
bool is_window_maximized_() {
  return IsWindowMaximized();
}

// [[Rcpp::export]]
bool is_window_focused_() {
  return IsWindowFocused();
}

// [[Rcpp::export]]
bool is_window_resized_() {
  return IsWindowResized();
}

// [[Rcpp::export]]
bool is_window_state_(unsigned int flag) {
  return IsWindowState(flag);
}

// [[Rcpp::export]]
void set_window_state_(unsigned int flags) {
  return SetWindowState(flags);
}

// [[Rcpp::export]]
void clear_window_state_(unsigned int flags) {
  return ClearWindowState(flags);
}

// [[Rcpp::export]]
void toggle_fullscreen_() {
  return ToggleFullscreen();
}

// [[Rcpp::export]]
void maximize_window_() {
  return MaximizeWindow();
}

// [[Rcpp::export]]
void minimize_window_() {
  return MinimizeWindow();
}

// [[Rcpp::export]]
void restore_window_() {
  return RestoreWindow();
}

// [[Rcpp::export]]
void set_window_icon_(Image image) {
  return SetWindowIcon(image);
}

// [[Rcpp::export]]
void set_window_title_(const char * title) {
  return SetWindowTitle(title);
}

// [[Rcpp::export]]
void set_window_position_(int x, int y) {
  return SetWindowPosition(x, y);
}

// [[Rcpp::export]]
void set_window_monitor_(int monitor) {
  return SetWindowMonitor(monitor);
}

// [[Rcpp::export]]
void set_window_min_size_(int width, int height) {
  return SetWindowMinSize(width, height);
}

// [[Rcpp::export]]
void set_window_size_(int width, int height) {
  return SetWindowSize(width, height);
}

// [[Rcpp::export]]
int get_screen_width_() {
  return GetScreenWidth();
}

// [[Rcpp::export]]
int get_screen_height_() {
  return GetScreenHeight();
}

// [[Rcpp::export]]
int get_monitor_count_() {
  return GetMonitorCount();
}

// [[Rcpp::export]]
int get_current_monitor_() {
  return GetCurrentMonitor();
}

// [[Rcpp::export]]
Vector2 get_monitor_position_(int monitor) {
  return GetMonitorPosition(monitor);
}

// [[Rcpp::export]]
int get_monitor_width_(int monitor) {
  return GetMonitorWidth(monitor);
}

// [[Rcpp::export]]
int get_monitor_height_(int monitor) {
  return GetMonitorHeight(monitor);
}

// [[Rcpp::export]]
int get_monitor_physical_width_(int monitor) {
  return GetMonitorPhysicalWidth(monitor);
}

// [[Rcpp::export]]
int get_monitor_physical_height_(int monitor) {
  return GetMonitorPhysicalHeight(monitor);
}

// [[Rcpp::export]]
int get_monitor_refresh_rate_(int monitor) {
  return GetMonitorRefreshRate(monitor);
}

// [[Rcpp::export]]
Vector2 get_window_position_() {
  return GetWindowPosition();
}

// [[Rcpp::export]]
Vector2 get_window_scale_dpi_() {
  return GetWindowScaleDPI();
}

// [[Rcpp::export]]
const char * get_monitor_name_(int monitor) {
  return GetMonitorName(monitor);
}

// [[Rcpp::export]]
void show_cursor_() {
  return ShowCursor();
}

// [[Rcpp::export]]
void hide_cursor_() {
  return HideCursor();
}

// [[Rcpp::export]]
bool is_cursor_hidden_() {
  return IsCursorHidden();
}

// [[Rcpp::export]]
void enable_cursor_() {
  return EnableCursor();
}

// [[Rcpp::export]]
void disable_cursor_() {
  return DisableCursor();
}

// [[Rcpp::export]]
bool is_cursor_on_screen_() {
  return IsCursorOnScreen();
}

// [[Rcpp::export]]
void clear_background_(Color color) {
  return ClearBackground(color);
}

// [[Rcpp::export]]
void begin_drawing_() {
  return BeginDrawing();
}

// [[Rcpp::export]]
void end_drawing_() {
  return EndDrawing();
}

// [[Rcpp::export]]
void begin_mode_2d_(Camera2D camera) {
  return BeginMode2D(camera);
}

// [[Rcpp::export]]
void end_mode_2d_() {
  return EndMode2D();
}

// [[Rcpp::export]]
void begin_mode_3d_(Camera3D camera) {
  return BeginMode3D(camera);
}

// [[Rcpp::export]]
void end_mode_3d_() {
  return EndMode3D();
}

// [[Rcpp::export]]
void begin_texture_mode_(RenderTexture target) {
  return BeginTextureMode(target);
}

// [[Rcpp::export]]
void end_texture_mode_() {
  return EndTextureMode();
}

// [[Rcpp::export]]
void begin_shader_mode_(Shader shader) {
  return BeginShaderMode(shader);
}

// [[Rcpp::export]]
void end_shader_mode_() {
  return EndShaderMode();
}

// [[Rcpp::export]]
void begin_blend_mode_(int mode) {
  return BeginBlendMode(mode);
}

// [[Rcpp::export]]
void end_blend_mode_() {
  return EndBlendMode();
}

// [[Rcpp::export]]
void begin_scissor_mode_(int x, int y, int width, int height) {
  return BeginScissorMode(x, y, width, height);
}

// [[Rcpp::export]]
void end_scissor_mode_() {
  return EndScissorMode();
}

// [[Rcpp::export]]
void end_vr_stereo_mode_() {
  return EndVrStereoMode();
}

// [[Rcpp::export]]
Shader load_shader_(const char * vs_file_name, const char * fs_file_name) {
  return LoadShader(vs_file_name, fs_file_name);
}

// [[Rcpp::export]]
Shader load_shader_from_memory_(const char * vs_code, const char * fs_code) {
  return LoadShaderFromMemory(vs_code, fs_code);
}

// [[Rcpp::export]]
int get_shader_location_(Shader shader, const char * uniform_name) {
  return GetShaderLocation(shader, uniform_name);
}

// [[Rcpp::export]]
int get_shader_location_attrib_(Shader shader, const char * attrib_name) {
  return GetShaderLocationAttrib(shader, attrib_name);
}

// [[Rcpp::export]]
void set_shader_value_matrix_(Shader shader, int loc_index, RaylibMatrix mat) {
  return SetShaderValueMatrix(shader, loc_index, mat);
}

// [[Rcpp::export]]
void set_shader_value_texture_(Shader shader, int loc_index, Texture texture) {
  return SetShaderValueTexture(shader, loc_index, texture);
}

// [[Rcpp::export]]
void unload_shader_(Shader shader) {
  return UnloadShader(shader);
}

// [[Rcpp::export]]
RaylibMatrix get_camera_matrix_(Camera3D camera) {
  return GetCameraMatrix(camera);
}

// [[Rcpp::export]]
RaylibMatrix get_camera_matrix_2d_(Camera2D camera) {
  return GetCameraMatrix2D(camera);
}

// [[Rcpp::export]]
Vector2 get_world_to_screen_(Vector3 position, Camera3D camera) {
  return GetWorldToScreen(position, camera);
}

// [[Rcpp::export]]
Vector2 get_world_to_screen_ex_(Vector3 position, Camera3D camera, int width, int height) {
  return GetWorldToScreenEx(position, camera, width, height);
}

// [[Rcpp::export]]
Vector2 get_world_to_screen_2d_(Vector2 position, Camera2D camera) {
  return GetWorldToScreen2D(position, camera);
}

// [[Rcpp::export]]
Vector2 get_screen_to_world_2d_(Vector2 position, Camera2D camera) {
  return GetScreenToWorld2D(position, camera);
}

// [[Rcpp::export]]
void set_target_fps_(int fps) {
  return SetTargetFPS(fps);
}

// [[Rcpp::export]]
int get_fps_() {
  return GetFPS();
}

// [[Rcpp::export]]
float get_frame_time_() {
  return GetFrameTime();
}

// [[Rcpp::export]]
double get_time_() {
  return GetTime();
}

// [[Rcpp::export]]
int get_random_value_(int min, int max) {
  return GetRandomValue(min, max);
}

// [[Rcpp::export]]
void take_screenshot_(const char * file_name) {
  return TakeScreenshot(file_name);
}

// [[Rcpp::export]]
void set_trace_log_level_(int log_level) {
  return SetTraceLogLevel(log_level);
}

// [[Rcpp::export]]
const char * load_file_text_(const char * file_name) {
  return LoadFileText(file_name);
}

// [[Rcpp::export]]
bool file_exists_(const char * file_name) {
  return FileExists(file_name);
}

// [[Rcpp::export]]
bool directory_exists_(const char * dir_path) {
  return DirectoryExists(dir_path);
}

// [[Rcpp::export]]
bool is_file_extension_(const char * file_name, const char * ext) {
  return IsFileExtension(file_name, ext);
}

// [[Rcpp::export]]
const char * get_file_extension_(const char * file_name) {
  return GetFileExtension(file_name);
}

// [[Rcpp::export]]
const char * get_file_name_(const char * file_path) {
  return GetFileName(file_path);
}

// [[Rcpp::export]]
const char * get_file_name_without_ext_(const char * file_path) {
  return GetFileNameWithoutExt(file_path);
}

// [[Rcpp::export]]
const char * get_directory_path_(const char * file_path) {
  return GetDirectoryPath(file_path);
}

// [[Rcpp::export]]
const char * get_prev_directory_path_(const char * dir_path) {
  return GetPrevDirectoryPath(dir_path);
}

// [[Rcpp::export]]
const char * get_working_directory_() {
  return GetWorkingDirectory();
}

// [[Rcpp::export]]
void clear_directory_files_() {
  return ClearDirectoryFiles();
}

// [[Rcpp::export]]
bool change_directory_(const char * dir) {
  return ChangeDirectory(dir);
}

// [[Rcpp::export]]
bool is_file_dropped_() {
  return IsFileDropped();
}

// [[Rcpp::export]]
void clear_dropped_files_() {
  return ClearDroppedFiles();
}

// [[Rcpp::export]]
long get_file_mod_time_(const char * file_name) {
  return GetFileModTime(file_name);
}

// [[Rcpp::export]]
bool save_storage_value_(unsigned int position, int value) {
  return SaveStorageValue(position, value);
}

// [[Rcpp::export]]
int load_storage_value_(unsigned int position) {
  return LoadStorageValue(position);
}

// [[Rcpp::export]]
bool is_key_pressed_(int key) {
  return IsKeyPressed(key);
}

// [[Rcpp::export]]
bool is_key_down_(int key) {
  return IsKeyDown(key);
}

// [[Rcpp::export]]
bool is_key_released_(int key) {
  return IsKeyReleased(key);
}

// [[Rcpp::export]]
bool is_key_up_(int key) {
  return IsKeyUp(key);
}

// [[Rcpp::export]]
void set_exit_key_(int key) {
  return SetExitKey(key);
}

// [[Rcpp::export]]
int get_key_pressed_() {
  return GetKeyPressed();
}

// [[Rcpp::export]]
int get_char_pressed_() {
  return GetCharPressed();
}

// [[Rcpp::export]]
bool is_gamepad_available_(int gamepad) {
  return IsGamepadAvailable(gamepad);
}

// [[Rcpp::export]]
const char * get_gamepad_name_(int gamepad) {
  return GetGamepadName(gamepad);
}

// [[Rcpp::export]]
bool is_gamepad_button_pressed_(int gamepad, int button) {
  return IsGamepadButtonPressed(gamepad, button);
}

// [[Rcpp::export]]
bool is_gamepad_button_down_(int gamepad, int button) {
  return IsGamepadButtonDown(gamepad, button);
}

// [[Rcpp::export]]
bool is_gamepad_button_released_(int gamepad, int button) {
  return IsGamepadButtonReleased(gamepad, button);
}

// [[Rcpp::export]]
bool is_gamepad_button_up_(int gamepad, int button) {
  return IsGamepadButtonUp(gamepad, button);
}

// [[Rcpp::export]]
int get_gamepad_button_pressed_() {
  return GetGamepadButtonPressed();
}

// [[Rcpp::export]]
int get_gamepad_axis_count_(int gamepad) {
  return GetGamepadAxisCount(gamepad);
}

// [[Rcpp::export]]
float get_gamepad_axis_movement_(int gamepad, int axis) {
  return GetGamepadAxisMovement(gamepad, axis);
}

// [[Rcpp::export]]
int set_gamepad_mappings_(const char * mappings) {
  return SetGamepadMappings(mappings);
}

// [[Rcpp::export]]
bool is_mouse_button_pressed_(int button) {
  return IsMouseButtonPressed(button);
}

// [[Rcpp::export]]
bool is_mouse_button_down_(int button) {
  return IsMouseButtonDown(button);
}

// [[Rcpp::export]]
bool is_mouse_button_released_(int button) {
  return IsMouseButtonReleased(button);
}

// [[Rcpp::export]]
bool is_mouse_button_up_(int button) {
  return IsMouseButtonUp(button);
}

// [[Rcpp::export]]
int get_mouse_x_() {
  return GetMouseX();
}

// [[Rcpp::export]]
int get_mouse_y_() {
  return GetMouseY();
}

// [[Rcpp::export]]
Vector2 get_mouse_position_() {
  return GetMousePosition();
}

// [[Rcpp::export]]
Vector2 get_mouse_delta_() {
  return GetMouseDelta();
}

// [[Rcpp::export]]
void set_mouse_position_(int x, int y) {
  return SetMousePosition(x, y);
}

// [[Rcpp::export]]
void set_mouse_offset_(int offset_x, int offset_y) {
  return SetMouseOffset(offset_x, offset_y);
}

// [[Rcpp::export]]
void set_mouse_scale_(float scale_x, float scale_y) {
  return SetMouseScale(scale_x, scale_y);
}

// [[Rcpp::export]]
float get_mouse_wheel_move_() {
  return GetMouseWheelMove();
}

// [[Rcpp::export]]
void set_mouse_cursor_(int cursor) {
  return SetMouseCursor(cursor);
}

// [[Rcpp::export]]
int get_touch_x_() {
  return GetTouchX();
}

// [[Rcpp::export]]
int get_touch_y_() {
  return GetTouchY();
}

// [[Rcpp::export]]
Vector2 get_touch_position_(int index) {
  return GetTouchPosition(index);
}

// [[Rcpp::export]]
int get_touch_point_id_(int index) {
  return GetTouchPointId(index);
}

// [[Rcpp::export]]
int get_touch_point_count_() {
  return GetTouchPointCount();
}

// [[Rcpp::export]]
void set_gestures_enabled_(unsigned int flags) {
  return SetGesturesEnabled(flags);
}

// [[Rcpp::export]]
bool is_gesture_detected_(int gesture) {
  return IsGestureDetected(gesture);
}

// [[Rcpp::export]]
int get_gesture_detected_() {
  return GetGestureDetected();
}

// [[Rcpp::export]]
float get_gesture_hold_duration_() {
  return GetGestureHoldDuration();
}

// [[Rcpp::export]]
Vector2 get_gesture_drag_vector_() {
  return GetGestureDragVector();
}

// [[Rcpp::export]]
float get_gesture_drag_angle_() {
  return GetGestureDragAngle();
}

// [[Rcpp::export]]
Vector2 get_gesture_pinch_vector_() {
  return GetGesturePinchVector();
}

// [[Rcpp::export]]
float get_gesture_pinch_angle_() {
  return GetGesturePinchAngle();
}

// [[Rcpp::export]]
void set_camera_mode_(Camera3D camera, int mode) {
  return SetCameraMode(camera, mode);
}

// [[Rcpp::export]]
void set_camera_pan_control_(int key_pan) {
  return SetCameraPanControl(key_pan);
}

// [[Rcpp::export]]
void set_camera_alt_control_(int key_alt) {
  return SetCameraAltControl(key_alt);
}

// [[Rcpp::export]]
void set_camera_smooth_zoom_control_(int key_smooth_zoom) {
  return SetCameraSmoothZoomControl(key_smooth_zoom);
}

// [[Rcpp::export]]
void set_camera_move_controls_(int key_front, int key_back, int key_right, int key_left, int key_up, int key_down) {
  return SetCameraMoveControls(key_front, key_back, key_right, key_left, key_up, key_down);
}

// [[Rcpp::export]]
void set_shapes_texture_(Texture texture, Rectangle source) {
  return SetShapesTexture(texture, source);
}

// [[Rcpp::export]]
void draw_pixel_(int pos_x, int pos_y, Color color) {
  return DrawPixel(pos_x, pos_y, color);
}

// [[Rcpp::export]]
void draw_pixel_vectorized_(NumericVector pos_x, NumericVector pos_y, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawPixel(pos_x[i], pos_y[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_pixel_v_(Vector2 position, Color color) {
  return DrawPixelV(position, color);
}

// [[Rcpp::export]]
void draw_pixel_v_vectorized_(NumericMatrix position, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawPixelV(Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_line_(int start_pos_x, int start_pos_y, int end_pos_x, int end_pos_y, Color color) {
  return DrawLine(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color);
}

// [[Rcpp::export]]
void draw_line_vectorized_(NumericVector start_pos_x, NumericVector start_pos_y, NumericVector end_pos_x, NumericVector end_pos_y, List color) {
  for (int i = 0; i < start_pos_x.length(); i++) {
    DrawLine(start_pos_x[i], start_pos_y[i], end_pos_x[i], end_pos_y[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_line_v_(Vector2 start_pos, Vector2 end_pos, Color color) {
  return DrawLineV(start_pos, end_pos, color);
}

// [[Rcpp::export]]
void draw_line_v_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineV(Vector2{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))) }, Vector2{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_line_ex_(Vector2 start_pos, Vector2 end_pos, float thick, Color color) {
  return DrawLineEx(start_pos, end_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_ex_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector thick, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineEx(Vector2{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))) }, Vector2{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))) }, thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_line_bezier_(Vector2 start_pos, Vector2 end_pos, float thick, Color color) {
  return DrawLineBezier(start_pos, end_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector thick, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineBezier(Vector2{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))) }, Vector2{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))) }, thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_line_bezier_quad_(Vector2 start_pos, Vector2 end_pos, Vector2 control_pos, float thick, Color color) {
  return DrawLineBezierQuad(start_pos, end_pos, control_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_quad_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericMatrix control_pos, NumericVector thick, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineBezierQuad(Vector2{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))) }, Vector2{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))) }, Vector2{ as<float>(wrap(control_pos(i, 0))), as<float>(wrap(control_pos(i, 1))) }, thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_line_bezier_cubic_(Vector2 start_pos, Vector2 end_pos, Vector2 start_control_pos, Vector2 end_control_pos, float thick, Color color) {
  return DrawLineBezierCubic(start_pos, end_pos, start_control_pos, end_control_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_cubic_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericMatrix start_control_pos, NumericMatrix end_control_pos, NumericVector thick, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineBezierCubic(Vector2{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))) }, Vector2{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))) }, Vector2{ as<float>(wrap(start_control_pos(i, 0))), as<float>(wrap(start_control_pos(i, 1))) }, Vector2{ as<float>(wrap(end_control_pos(i, 0))), as<float>(wrap(end_control_pos(i, 1))) }, thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_(int center_x, int center_y, float radius, Color color) {
  return DrawCircle(center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void draw_circle_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawCircle(center_x[i], center_y[i], radius[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_sector_(Vector2 center, float radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawCircleSector(center, radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_circle_sector_vectorized_(NumericMatrix center, NumericVector radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleSector(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, radius[i], start_angle[i], end_angle[i], segments[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_sector_lines_(Vector2 center, float radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawCircleSectorLines(center, radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_circle_sector_lines_vectorized_(NumericMatrix center, NumericVector radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleSectorLines(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, radius[i], start_angle[i], end_angle[i], segments[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_gradient_(int center_x, int center_y, float radius, Color color_1, Color color_2) {
  return DrawCircleGradient(center_x, center_y, radius, color_1, color_2);
}

// [[Rcpp::export]]
void draw_circle_gradient_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius, List color_1, List color_2) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawCircleGradient(center_x[i], center_y[i], radius[i], color_1[i], color_2[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_v_(Vector2 center, float radius, Color color) {
  return DrawCircleV(center, radius, color);
}

// [[Rcpp::export]]
void draw_circle_v_vectorized_(NumericMatrix center, NumericVector radius, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleV(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, radius[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_lines_(int center_x, int center_y, float radius, Color color) {
  return DrawCircleLines(center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void draw_circle_lines_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawCircleLines(center_x[i], center_y[i], radius[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_ellipse_(int center_x, int center_y, float radius_h, float radius_v, Color color) {
  return DrawEllipse(center_x, center_y, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ellipse_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius_h, NumericVector radius_v, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawEllipse(center_x[i], center_y[i], radius_h[i], radius_v[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_ellipse_lines_(int center_x, int center_y, float radius_h, float radius_v, Color color) {
  return DrawEllipseLines(center_x, center_y, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ellipse_lines_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius_h, NumericVector radius_v, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawEllipseLines(center_x[i], center_y[i], radius_h[i], radius_v[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_ring_(Vector2 center, float inner_radius, float outer_radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawRing(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_ring_vectorized_(NumericMatrix center, NumericVector inner_radius, NumericVector outer_radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawRing(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, inner_radius[i], outer_radius[i], start_angle[i], end_angle[i], segments[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_ring_lines_(Vector2 center, float inner_radius, float outer_radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawRingLines(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_ring_lines_vectorized_(NumericMatrix center, NumericVector inner_radius, NumericVector outer_radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawRingLines(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, inner_radius[i], outer_radius[i], start_angle[i], end_angle[i], segments[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_(int pos_x, int pos_y, int width, int height, Color color) {
  return DrawRectangle(pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void draw_rectangle_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangle(pos_x[i], pos_y[i], width[i], height[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_v_(Vector2 position, Vector2 size, Color color) {
  return DrawRectangleV(position, size, color);
}

// [[Rcpp::export]]
void draw_rectangle_v_vectorized_(NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawRectangleV(Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, Vector2{ as<float>(wrap(size(i, 0))), as<float>(wrap(size(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_rec_(Rectangle rec, Color color) {
  return DrawRectangleRec(rec, color);
}

// [[Rcpp::export]]
void draw_rectangle_rec_vectorized_(List rec, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRec(rec[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_pro_(Rectangle rec, Vector2 origin, float rotation, Color color) {
  return DrawRectanglePro(rec, origin, rotation, color);
}

// [[Rcpp::export]]
void draw_rectangle_pro_vectorized_(List rec, NumericMatrix origin, NumericVector rotation, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectanglePro(rec[i], Vector2{ as<float>(wrap(origin(i, 0))), as<float>(wrap(origin(i, 1))) }, rotation[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_gradient_v_(int pos_x, int pos_y, int width, int height, Color color_1, Color color_2) {
  return DrawRectangleGradientV(pos_x, pos_y, width, height, color_1, color_2);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_v_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color_1, List color_2) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangleGradientV(pos_x[i], pos_y[i], width[i], height[i], color_1[i], color_2[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_gradient_h_(int pos_x, int pos_y, int width, int height, Color color_1, Color color_2) {
  return DrawRectangleGradientH(pos_x, pos_y, width, height, color_1, color_2);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_h_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color_1, List color_2) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangleGradientH(pos_x[i], pos_y[i], width[i], height[i], color_1[i], color_2[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_gradient_ex_(Rectangle rec, Color col_1, Color col_2, Color col_3, Color col_4) {
  return DrawRectangleGradientEx(rec, col_1, col_2, col_3, col_4);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_ex_vectorized_(List rec, List col_1, List col_2, List col_3, List col_4) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleGradientEx(rec[i], col_1[i], col_2[i], col_3[i], col_4[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_lines_(int pos_x, int pos_y, int width, int height, Color color) {
  return DrawRectangleLines(pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void draw_rectangle_lines_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangleLines(pos_x[i], pos_y[i], width[i], height[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_lines_ex_(Rectangle rec, float line_thick, Color color) {
  return DrawRectangleLinesEx(rec, line_thick, color);
}

// [[Rcpp::export]]
void draw_rectangle_lines_ex_vectorized_(List rec, NumericVector line_thick, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleLinesEx(rec[i], line_thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_rounded_(Rectangle rec, float roundness, int segments, Color color) {
  return DrawRectangleRounded(rec, roundness, segments, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_vectorized_(List rec, NumericVector roundness, NumericVector segments, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRounded(rec[i], roundness[i], segments[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_(Rectangle rec, float roundness, int segments, float line_thick, Color color) {
  return DrawRectangleRoundedLines(rec, roundness, segments, line_thick, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_vectorized_(List rec, NumericVector roundness, NumericVector segments, NumericVector line_thick, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRoundedLines(rec[i], roundness[i], segments[i], line_thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_triangle_(Vector2 v_1, Vector2 v_2, Vector2 v_3, Color color) {
  return DrawTriangle(v_1, v_2, v_3, color);
}

// [[Rcpp::export]]
void draw_triangle_vectorized_(NumericMatrix v_1, NumericMatrix v_2, NumericMatrix v_3, List color) {
  for (int i = 0; i < v_1.nrow(); i++) {
    DrawTriangle(Vector2{ as<float>(wrap(v_1(i, 0))), as<float>(wrap(v_1(i, 1))) }, Vector2{ as<float>(wrap(v_2(i, 0))), as<float>(wrap(v_2(i, 1))) }, Vector2{ as<float>(wrap(v_3(i, 0))), as<float>(wrap(v_3(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_triangle_lines_(Vector2 v_1, Vector2 v_2, Vector2 v_3, Color color) {
  return DrawTriangleLines(v_1, v_2, v_3, color);
}

// [[Rcpp::export]]
void draw_triangle_lines_vectorized_(NumericMatrix v_1, NumericMatrix v_2, NumericMatrix v_3, List color) {
  for (int i = 0; i < v_1.nrow(); i++) {
    DrawTriangleLines(Vector2{ as<float>(wrap(v_1(i, 0))), as<float>(wrap(v_1(i, 1))) }, Vector2{ as<float>(wrap(v_2(i, 0))), as<float>(wrap(v_2(i, 1))) }, Vector2{ as<float>(wrap(v_3(i, 0))), as<float>(wrap(v_3(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_poly_(Vector2 center, int sides, float radius, float rotation, Color color) {
  return DrawPoly(center, sides, radius, rotation, color);
}

// [[Rcpp::export]]
void draw_poly_vectorized_(NumericMatrix center, NumericVector sides, NumericVector radius, NumericVector rotation, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawPoly(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, sides[i], radius[i], rotation[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_poly_lines_(Vector2 center, int sides, float radius, float rotation, Color color) {
  return DrawPolyLines(center, sides, radius, rotation, color);
}

// [[Rcpp::export]]
void draw_poly_lines_vectorized_(NumericMatrix center, NumericVector sides, NumericVector radius, NumericVector rotation, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawPolyLines(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, sides[i], radius[i], rotation[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_poly_lines_ex_(Vector2 center, int sides, float radius, float rotation, float line_thick, Color color) {
  return DrawPolyLinesEx(center, sides, radius, rotation, line_thick, color);
}

// [[Rcpp::export]]
void draw_poly_lines_ex_vectorized_(NumericMatrix center, NumericVector sides, NumericVector radius, NumericVector rotation, NumericVector line_thick, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawPolyLinesEx(Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, sides[i], radius[i], rotation[i], line_thick[i], color[i]);
  }
}

// [[Rcpp::export]]
bool check_collision_recs_(Rectangle rec_1, Rectangle rec_2) {
  return CheckCollisionRecs(rec_1, rec_2);
}

// [[Rcpp::export]]
bool check_collision_circles_(Vector2 center_1, float radius_1, Vector2 center_2, float radius_2) {
  return CheckCollisionCircles(center_1, radius_1, center_2, radius_2);
}

// [[Rcpp::export]]
bool check_collision_circle_rec_(Vector2 center, float radius, Rectangle rec) {
  return CheckCollisionCircleRec(center, radius, rec);
}

// [[Rcpp::export]]
bool check_collision_point_rec_(Vector2 point, Rectangle rec) {
  return CheckCollisionPointRec(point, rec);
}

// [[Rcpp::export]]
bool check_collision_point_circle_(Vector2 point, Vector2 center, float radius) {
  return CheckCollisionPointCircle(point, center, radius);
}

// [[Rcpp::export]]
bool check_collision_point_triangle_(Vector2 point, Vector2 p_1, Vector2 p_2, Vector2 p_3) {
  return CheckCollisionPointTriangle(point, p_1, p_2, p_3);
}

// [[Rcpp::export]]
bool check_collision_lines_(Vector2 start_pos_1, Vector2 end_pos_1, Vector2 start_pos_2, Vector2 end_pos_2, Vector2 &collision_point) {
  return CheckCollisionLines(start_pos_1, end_pos_1, start_pos_2, end_pos_2, &collision_point);
}

// [[Rcpp::export]]
bool check_collision_point_line_(Vector2 point, Vector2 p_1, Vector2 p_2, int threshold) {
  return CheckCollisionPointLine(point, p_1, p_2, threshold);
}

// [[Rcpp::export]]
Rectangle get_collision_rec_(Rectangle rec_1, Rectangle rec_2) {
  return GetCollisionRec(rec_1, rec_2);
}

// [[Rcpp::export]]
Image load_image_(const char * file_name) {
  return LoadImage(file_name);
}

// [[Rcpp::export]]
Image load_image_raw_(const char * file_name, int width, int height, int format, int header_size) {
  return LoadImageRaw(file_name, width, height, format, header_size);
}

// [[Rcpp::export]]
Image load_image_from_texture_(Texture texture) {
  return LoadImageFromTexture(texture);
}

// [[Rcpp::export]]
Image load_image_from_screen_() {
  return LoadImageFromScreen();
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
Image gen_image_gradient_v_(int width, int height, Color top, Color bottom) {
  return GenImageGradientV(width, height, top, bottom);
}

// [[Rcpp::export]]
Image gen_image_gradient_h_(int width, int height, Color left, Color right) {
  return GenImageGradientH(width, height, left, right);
}

// [[Rcpp::export]]
Image gen_image_gradient_radial_(int width, int height, float density, Color inner, Color outer) {
  return GenImageGradientRadial(width, height, density, inner, outer);
}

// [[Rcpp::export]]
Image gen_image_checked_(int width, int height, int checks_x, int checks_y, Color col_1, Color col_2) {
  return GenImageChecked(width, height, checks_x, checks_y, col_1, col_2);
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
Image image_copy_(Image image) {
  return ImageCopy(image);
}

// [[Rcpp::export]]
Image image_from_image_(Image image, Rectangle rec) {
  return ImageFromImage(image, rec);
}

// [[Rcpp::export]]
Image image_text_(const char * text, int font_size, Color color) {
  return ImageText(text, font_size, color);
}

// [[Rcpp::export]]
Image image_text_ex_(Font font, const char * text, float font_size, float spacing, Color tint) {
  return ImageTextEx(font, text, font_size, spacing, tint);
}

// [[Rcpp::export]]
void image_format_(Image &image, int new_format) {
  return ImageFormat(&image, new_format);
}

// [[Rcpp::export]]
void image_to_pot_(Image &image, Color fill) {
  return ImageToPOT(&image, fill);
}

// [[Rcpp::export]]
void image_crop_(Image &image, Rectangle crop) {
  return ImageCrop(&image, crop);
}

// [[Rcpp::export]]
void image_alpha_crop_(Image &image, float threshold) {
  return ImageAlphaCrop(&image, threshold);
}

// [[Rcpp::export]]
void image_alpha_clear_(Image &image, Color color, float threshold) {
  return ImageAlphaClear(&image, color, threshold);
}

// [[Rcpp::export]]
void image_alpha_mask_(Image &image, Image alpha_mask) {
  return ImageAlphaMask(&image, alpha_mask);
}

// [[Rcpp::export]]
void image_alpha_premultiply_(Image &image) {
  return ImageAlphaPremultiply(&image);
}

// [[Rcpp::export]]
void image_resize_(Image &image, int new_width, int new_height) {
  return ImageResize(&image, new_width, new_height);
}

// [[Rcpp::export]]
void image_resize_nn_(Image &image, int new_width, int new_height) {
  return ImageResizeNN(&image, new_width, new_height);
}

// [[Rcpp::export]]
void image_resize_canvas_(Image &image, int new_width, int new_height, int offset_x, int offset_y, Color fill) {
  return ImageResizeCanvas(&image, new_width, new_height, offset_x, offset_y, fill);
}

// [[Rcpp::export]]
void image_mipmaps_(Image &image) {
  return ImageMipmaps(&image);
}

// [[Rcpp::export]]
void image_dither_(Image &image, int r_bpp, int g_bpp, int b_bpp, int a_bpp) {
  return ImageDither(&image, r_bpp, g_bpp, b_bpp, a_bpp);
}

// [[Rcpp::export]]
void image_flip_vertical_(Image &image) {
  return ImageFlipVertical(&image);
}

// [[Rcpp::export]]
void image_flip_horizontal_(Image &image) {
  return ImageFlipHorizontal(&image);
}

// [[Rcpp::export]]
void image_rotate_cw_(Image &image) {
  return ImageRotateCW(&image);
}

// [[Rcpp::export]]
void image_rotate_ccw_(Image &image) {
  return ImageRotateCCW(&image);
}

// [[Rcpp::export]]
void image_color_tint_(Image &image, Color color) {
  return ImageColorTint(&image, color);
}

// [[Rcpp::export]]
void image_color_invert_(Image &image) {
  return ImageColorInvert(&image);
}

// [[Rcpp::export]]
void image_color_grayscale_(Image &image) {
  return ImageColorGrayscale(&image);
}

// [[Rcpp::export]]
void image_color_contrast_(Image &image, float contrast) {
  return ImageColorContrast(&image, contrast);
}

// [[Rcpp::export]]
void image_color_brightness_(Image &image, int brightness) {
  return ImageColorBrightness(&image, brightness);
}

// [[Rcpp::export]]
void image_color_replace_(Image &image, Color color, Color replace) {
  return ImageColorReplace(&image, color, replace);
}

// [[Rcpp::export]]
void unload_image_colors_(Color &colors) {
  return UnloadImageColors(&colors);
}

// [[Rcpp::export]]
void unload_image_palette_(Color &colors) {
  return UnloadImagePalette(&colors);
}

// [[Rcpp::export]]
Rectangle get_image_alpha_border_(Image image, float threshold) {
  return GetImageAlphaBorder(image, threshold);
}

// [[Rcpp::export]]
Color get_image_color_(Image image, int x, int y) {
  return GetImageColor(image, x, y);
}

// [[Rcpp::export]]
void image_clear_background_(Image &dst, Color color) {
  return ImageClearBackground(&dst, color);
}

// [[Rcpp::export]]
void image_draw_pixel_(Image &dst, int pos_x, int pos_y, Color color) {
  return ImageDrawPixel(&dst, pos_x, pos_y, color);
}

// [[Rcpp::export]]
void image_draw_pixel_vectorized_(Image &dst, NumericVector pos_x, NumericVector pos_y, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    ImageDrawPixel(&dst, pos_x[i], pos_y[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_pixel_v_(Image &dst, Vector2 position, Color color) {
  return ImageDrawPixelV(&dst, position, color);
}

// [[Rcpp::export]]
void image_draw_pixel_v_vectorized_(Image &dst, NumericMatrix position, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    ImageDrawPixelV(&dst, Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_line_(Image &dst, int start_pos_x, int start_pos_y, int end_pos_x, int end_pos_y, Color color) {
  return ImageDrawLine(&dst, start_pos_x, start_pos_y, end_pos_x, end_pos_y, color);
}

// [[Rcpp::export]]
void image_draw_line_vectorized_(Image &dst, NumericVector start_pos_x, NumericVector start_pos_y, NumericVector end_pos_x, NumericVector end_pos_y, List color) {
  for (int i = 0; i < start_pos_x.length(); i++) {
    ImageDrawLine(&dst, start_pos_x[i], start_pos_y[i], end_pos_x[i], end_pos_y[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_line_v_(Image &dst, Vector2 start, Vector2 end, Color color) {
  return ImageDrawLineV(&dst, start, end, color);
}

// [[Rcpp::export]]
void image_draw_line_v_vectorized_(Image &dst, NumericMatrix start, NumericMatrix end, List color) {
  for (int i = 0; i < start.nrow(); i++) {
    ImageDrawLineV(&dst, Vector2{ as<float>(wrap(start(i, 0))), as<float>(wrap(start(i, 1))) }, Vector2{ as<float>(wrap(end(i, 0))), as<float>(wrap(end(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_circle_(Image &dst, int center_x, int center_y, int radius, Color color) {
  return ImageDrawCircle(&dst, center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void image_draw_circle_vectorized_(Image &dst, NumericVector center_x, NumericVector center_y, NumericVector radius, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    ImageDrawCircle(&dst, center_x[i], center_y[i], radius[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_circle_v_(Image &dst, Vector2 center, int radius, Color color) {
  return ImageDrawCircleV(&dst, center, radius, color);
}

// [[Rcpp::export]]
void image_draw_circle_v_vectorized_(Image &dst, NumericMatrix center, NumericVector radius, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    ImageDrawCircleV(&dst, Vector2{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))) }, radius[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_rectangle_(Image &dst, int pos_x, int pos_y, int width, int height, Color color) {
  return ImageDrawRectangle(&dst, pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_vectorized_(Image &dst, NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    ImageDrawRectangle(&dst, pos_x[i], pos_y[i], width[i], height[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_rectangle_v_(Image &dst, Vector2 position, Vector2 size, Color color) {
  return ImageDrawRectangleV(&dst, position, size, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_v_vectorized_(Image &dst, NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    ImageDrawRectangleV(&dst, Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, Vector2{ as<float>(wrap(size(i, 0))), as<float>(wrap(size(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_rectangle_rec_(Image &dst, Rectangle rec, Color color) {
  return ImageDrawRectangleRec(&dst, rec, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_rec_vectorized_(Image &dst, List rec, List color) {
  for (int i = 0; i < rec.length(); i++) {
    ImageDrawRectangleRec(&dst, rec[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_rectangle_lines_(Image &dst, Rectangle rec, int thick, Color color) {
  return ImageDrawRectangleLines(&dst, rec, thick, color);
}

// [[Rcpp::export]]
void image_draw_rectangle_lines_vectorized_(Image &dst, List rec, NumericVector thick, List color) {
  for (int i = 0; i < rec.length(); i++) {
    ImageDrawRectangleLines(&dst, rec[i], thick[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_(Image &dst, Image src, Rectangle src_rec, Rectangle dst_rec, Color tint) {
  return ImageDraw(&dst, src, src_rec, dst_rec, tint);
}

// [[Rcpp::export]]
void image_draw_text_(Image &dst, const char * text, int pos_x, int pos_y, int font_size, Color color) {
  return ImageDrawText(&dst, text, pos_x, pos_y, font_size, color);
}

// [[Rcpp::export]]
void image_draw_text_vectorized_(Image &dst, CharacterVector text, NumericVector pos_x, NumericVector pos_y, NumericVector font_size, List color) {
  for (int i = 0; i < text.length(); i++) {
    ImageDrawText(&dst, text[i], pos_x[i], pos_y[i], font_size[i], color[i]);
  }
}

// [[Rcpp::export]]
void image_draw_text_ex_(Image &dst, Font font, const char * text, Vector2 position, float font_size, float spacing, Color tint) {
  return ImageDrawTextEx(&dst, font, text, position, font_size, spacing, tint);
}

// [[Rcpp::export]]
void image_draw_text_ex_vectorized_(Image &dst, List font, CharacterVector text, NumericMatrix position, NumericVector font_size, NumericVector spacing, List tint) {
  for (int i = 0; i < font.length(); i++) {
    ImageDrawTextEx(&dst, font[i], text[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, font_size[i], spacing[i], tint[i]);
  }
}

// [[Rcpp::export]]
Texture load_texture_(const char * file_name) {
  return LoadTexture(file_name);
}

// [[Rcpp::export]]
Texture load_texture_from_image_(Image image) {
  return LoadTextureFromImage(image);
}

// [[Rcpp::export]]
RenderTexture load_render_texture_(int width, int height) {
  return LoadRenderTexture(width, height);
}

// [[Rcpp::export]]
void unload_texture_(Texture texture) {
  return UnloadTexture(texture);
}

// [[Rcpp::export]]
void unload_render_texture_(RenderTexture target) {
  return UnloadRenderTexture(target);
}

// [[Rcpp::export]]
void gen_texture_mipmaps_(Texture &texture) {
  return GenTextureMipmaps(&texture);
}

// [[Rcpp::export]]
void set_texture_filter_(Texture texture, int filter) {
  return SetTextureFilter(texture, filter);
}

// [[Rcpp::export]]
void set_texture_wrap_(Texture texture, int wrap) {
  return SetTextureWrap(texture, wrap);
}

// [[Rcpp::export]]
void draw_texture_(Texture texture, int pos_x, int pos_y, Color tint) {
  return DrawTexture(texture, pos_x, pos_y, tint);
}

// [[Rcpp::export]]
void draw_texture_vectorized_(List texture, NumericVector pos_x, NumericVector pos_y, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTexture(texture[i], pos_x[i], pos_y[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_v_(Texture texture, Vector2 position, Color tint) {
  return DrawTextureV(texture, position, tint);
}

// [[Rcpp::export]]
void draw_texture_v_vectorized_(List texture, NumericMatrix position, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureV(texture[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_ex_(Texture texture, Vector2 position, float rotation, float scale, Color tint) {
  return DrawTextureEx(texture, position, rotation, scale, tint);
}

// [[Rcpp::export]]
void draw_texture_ex_vectorized_(List texture, NumericMatrix position, NumericVector rotation, NumericVector scale, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureEx(texture[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, rotation[i], scale[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_rec_(Texture texture, Rectangle source, Vector2 position, Color tint) {
  return DrawTextureRec(texture, source, position, tint);
}

// [[Rcpp::export]]
void draw_texture_rec_vectorized_(List texture, List source, NumericMatrix position, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureRec(texture[i], source[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_quad_(Texture texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint) {
  return DrawTextureQuad(texture, tiling, offset, quad, tint);
}

// [[Rcpp::export]]
void draw_texture_quad_vectorized_(List texture, NumericMatrix tiling, NumericMatrix offset, List quad, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureQuad(texture[i], Vector2{ as<float>(wrap(tiling(i, 0))), as<float>(wrap(tiling(i, 1))) }, Vector2{ as<float>(wrap(offset(i, 0))), as<float>(wrap(offset(i, 1))) }, quad[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_tiled_(Texture texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint) {
  return DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint);
}

// [[Rcpp::export]]
void draw_texture_tiled_vectorized_(List texture, List source, List dest, NumericMatrix origin, NumericVector rotation, NumericVector scale, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureTiled(texture[i], source[i], dest[i], Vector2{ as<float>(wrap(origin(i, 0))), as<float>(wrap(origin(i, 1))) }, rotation[i], scale[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_pro_(Texture texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint) {
  return DrawTexturePro(texture, source, dest, origin, rotation, tint);
}

// [[Rcpp::export]]
void draw_texture_pro_vectorized_(List texture, List source, List dest, NumericMatrix origin, NumericVector rotation, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTexturePro(texture[i], source[i], dest[i], Vector2{ as<float>(wrap(origin(i, 0))), as<float>(wrap(origin(i, 1))) }, rotation[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_npatch_(Texture texture, NPatchInfo n_patch_info, Rectangle dest, Vector2 origin, float rotation, Color tint) {
  return DrawTextureNPatch(texture, n_patch_info, dest, origin, rotation, tint);
}

// [[Rcpp::export]]
void draw_texture_npatch_vectorized_(List texture, List n_patch_info, List dest, NumericMatrix origin, NumericVector rotation, List tint) {
  for (int i = 0; i < texture.length(); i++) {
    DrawTextureNPatch(texture[i], n_patch_info[i], dest[i], Vector2{ as<float>(wrap(origin(i, 0))), as<float>(wrap(origin(i, 1))) }, rotation[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_texture_poly_(Texture texture, Vector2 center, Vector2 &points, Vector2 &texcoords, int point_count, Color tint) {
  return DrawTexturePoly(texture, center, &points, &texcoords, point_count, tint);
}

// [[Rcpp::export]]
Color fade_(Color color, float alpha) {
  return Fade(color, alpha);
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
Color color_from_normalized_(Vector4 normalized) {
  return ColorFromNormalized(normalized);
}

// [[Rcpp::export]]
Vector3 color_to_hsv_(Color color) {
  return ColorToHSV(color);
}

// [[Rcpp::export]]
Color color_from_hsv_(float hue, float saturation, float value) {
  return ColorFromHSV(hue, saturation, value);
}

// [[Rcpp::export]]
Color color_alpha_(Color color, float alpha) {
  return ColorAlpha(color, alpha);
}

// [[Rcpp::export]]
Color color_alpha_blend_(Color dst, Color src, Color tint) {
  return ColorAlphaBlend(dst, src, tint);
}

// [[Rcpp::export]]
Color get_color_(unsigned int hex_value) {
  return GetColor(hex_value);
}

// [[Rcpp::export]]
int get_pixel_data_size_(int width, int height, int format) {
  return GetPixelDataSize(width, height, format);
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
void unload_font_data_(GlyphInfo &chars, int glyph_count) {
  return UnloadFontData(&chars, glyph_count);
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
void draw_fps_vectorized_(NumericVector pos_x, NumericVector pos_y) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawFPS(pos_x[i], pos_y[i]);
  }
}

// [[Rcpp::export]]
void draw_text_(const char * text, int pos_x, int pos_y, int font_size, Color color) {
  return DrawText(text, pos_x, pos_y, font_size, color);
}

// [[Rcpp::export]]
void draw_text_vectorized_(CharacterVector text, NumericVector pos_x, NumericVector pos_y, NumericVector font_size, List color) {
  for (int i = 0; i < text.length(); i++) {
    DrawText(text[i], pos_x[i], pos_y[i], font_size[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_text_ex_(Font font, const char * text, Vector2 position, float font_size, float spacing, Color tint) {
  return DrawTextEx(font, text, position, font_size, spacing, tint);
}

// [[Rcpp::export]]
void draw_text_ex_vectorized_(List font, CharacterVector text, NumericMatrix position, NumericVector font_size, NumericVector spacing, List tint) {
  for (int i = 0; i < font.length(); i++) {
    DrawTextEx(font[i], text[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, font_size[i], spacing[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_text_pro_(Font font, const char * text, Vector2 position, Vector2 origin, float rotation, float font_size, float spacing, Color tint) {
  return DrawTextPro(font, text, position, origin, rotation, font_size, spacing, tint);
}

// [[Rcpp::export]]
void draw_text_pro_vectorized_(List font, CharacterVector text, NumericMatrix position, NumericMatrix origin, NumericVector rotation, NumericVector font_size, NumericVector spacing, List tint) {
  for (int i = 0; i < font.length(); i++) {
    DrawTextPro(font[i], text[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, Vector2{ as<float>(wrap(origin(i, 0))), as<float>(wrap(origin(i, 1))) }, rotation[i], font_size[i], spacing[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_text_codepoint_(Font font, int codepoint, Vector2 position, float font_size, Color tint) {
  return DrawTextCodepoint(font, codepoint, position, font_size, tint);
}

// [[Rcpp::export]]
void draw_text_codepoint_vectorized_(List font, NumericVector codepoint, NumericMatrix position, NumericVector font_size, List tint) {
  for (int i = 0; i < font.length(); i++) {
    DrawTextCodepoint(font[i], codepoint[i], Vector2{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))) }, font_size[i], tint[i]);
  }
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
const char * text_replace_(const char * text, const char * replace, const char * by) {
  return TextReplace(const_cast<char *>(text), replace, by);
}

// [[Rcpp::export]]
const char * text_insert_(const char * text, const char * insert, int position) {
  return TextInsert(text, insert, position);
}

// [[Rcpp::export]]
int text_find_index_(const char * text, const char * find) {
  return TextFindIndex(text, find);
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
int text_to_integer_(const char * text) {
  return TextToInteger(text);
}

// [[Rcpp::export]]
void draw_line_3d_(Vector3 start_pos, Vector3 end_pos, Color color) {
  return DrawLine3D(start_pos, end_pos, color);
}

// [[Rcpp::export]]
void draw_line_3d_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLine3D(Vector3{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))), as<float>(wrap(start_pos(i, 2))) }, Vector3{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))), as<float>(wrap(end_pos(i, 2))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_point_3d_(Vector3 position, Color color) {
  return DrawPoint3D(position, color);
}

// [[Rcpp::export]]
void draw_point_3d_vectorized_(NumericMatrix position, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawPoint3D(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_circle_3d_(Vector3 center, float radius, Vector3 rotation_axis, float rotation_angle, Color color) {
  return DrawCircle3D(center, radius, rotation_axis, rotation_angle, color);
}

// [[Rcpp::export]]
void draw_circle_3d_vectorized_(NumericMatrix center, NumericVector radius, NumericMatrix rotation_axis, NumericVector rotation_angle, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircle3D(Vector3{ as<float>(wrap(center(i, 0))), as<float>(wrap(center(i, 1))), as<float>(wrap(center(i, 2))) }, radius[i], Vector3{ as<float>(wrap(rotation_axis(i, 0))), as<float>(wrap(rotation_axis(i, 1))), as<float>(wrap(rotation_axis(i, 2))) }, rotation_angle[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_triangle_3d_(Vector3 v_1, Vector3 v_2, Vector3 v_3, Color color) {
  return DrawTriangle3D(v_1, v_2, v_3, color);
}

// [[Rcpp::export]]
void draw_triangle_3d_vectorized_(NumericMatrix v_1, NumericMatrix v_2, NumericMatrix v_3, List color) {
  for (int i = 0; i < v_1.nrow(); i++) {
    DrawTriangle3D(Vector3{ as<float>(wrap(v_1(i, 0))), as<float>(wrap(v_1(i, 1))), as<float>(wrap(v_1(i, 2))) }, Vector3{ as<float>(wrap(v_2(i, 0))), as<float>(wrap(v_2(i, 1))), as<float>(wrap(v_2(i, 2))) }, Vector3{ as<float>(wrap(v_3(i, 0))), as<float>(wrap(v_3(i, 1))), as<float>(wrap(v_3(i, 2))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_triangle_strip_3d_(Vector3 &points, int point_count, Color color) {
  return DrawTriangleStrip3D(&points, point_count, color);
}

// [[Rcpp::export]]
void draw_cube_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCube(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_vectorized_(NumericMatrix position, NumericVector width, NumericVector height, NumericVector length, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCube(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, width[i], height[i], length[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cube_v_(Vector3 position, Vector3 size, Color color) {
  return DrawCubeV(position, size, color);
}

// [[Rcpp::export]]
void draw_cube_v_vectorized_(NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCubeV(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, Vector3{ as<float>(wrap(size(i, 0))), as<float>(wrap(size(i, 1))), as<float>(wrap(size(i, 2))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_cube_wires_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeWires(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_wires_vectorized_(NumericMatrix position, NumericVector width, NumericVector height, NumericVector length, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCubeWires(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, width[i], height[i], length[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cube_wires_v_(Vector3 position, Vector3 size, Color color) {
  return DrawCubeWiresV(position, size, color);
}

// [[Rcpp::export]]
void draw_cube_wires_v_vectorized_(NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCubeWiresV(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, Vector3{ as<float>(wrap(size(i, 0))), as<float>(wrap(size(i, 1))), as<float>(wrap(size(i, 2))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_cube_texture_(Texture texture, Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeTexture(texture, position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_texture_vectorized_(List texture, NumericMatrix position, NumericVector width, NumericVector height, NumericVector length, List color) {
  for (int i = 0; i < texture.length(); i++) {
    DrawCubeTexture(texture[i], Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, width[i], height[i], length[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cube_texture_rec_(Texture texture, Rectangle source, Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeTextureRec(texture, source, position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_texture_rec_vectorized_(List texture, List source, NumericMatrix position, NumericVector width, NumericVector height, NumericVector length, List color) {
  for (int i = 0; i < texture.length(); i++) {
    DrawCubeTextureRec(texture[i], source[i], Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, width[i], height[i], length[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_sphere_(Vector3 center_pos, float radius, Color color) {
  return DrawSphere(center_pos, radius, color);
}

// [[Rcpp::export]]
void draw_sphere_vectorized_(NumericMatrix center_pos, NumericVector radius, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawSphere(Vector3{ as<float>(wrap(center_pos(i, 0))), as<float>(wrap(center_pos(i, 1))), as<float>(wrap(center_pos(i, 2))) }, radius[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_sphere_ex_(Vector3 center_pos, float radius, int rings, int slices, Color color) {
  return DrawSphereEx(center_pos, radius, rings, slices, color);
}

// [[Rcpp::export]]
void draw_sphere_ex_vectorized_(NumericMatrix center_pos, NumericVector radius, NumericVector rings, NumericVector slices, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawSphereEx(Vector3{ as<float>(wrap(center_pos(i, 0))), as<float>(wrap(center_pos(i, 1))), as<float>(wrap(center_pos(i, 2))) }, radius[i], rings[i], slices[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_sphere_wires_(Vector3 center_pos, float radius, int rings, int slices, Color color) {
  return DrawSphereWires(center_pos, radius, rings, slices, color);
}

// [[Rcpp::export]]
void draw_sphere_wires_vectorized_(NumericMatrix center_pos, NumericVector radius, NumericVector rings, NumericVector slices, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawSphereWires(Vector3{ as<float>(wrap(center_pos(i, 0))), as<float>(wrap(center_pos(i, 1))), as<float>(wrap(center_pos(i, 2))) }, radius[i], rings[i], slices[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cylinder_(Vector3 position, float radius_top, float radius_bottom, float height, int slices, Color color) {
  return DrawCylinder(position, radius_top, radius_bottom, height, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_vectorized_(NumericMatrix position, NumericVector radius_top, NumericVector radius_bottom, NumericVector height, NumericVector slices, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCylinder(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, radius_top[i], radius_bottom[i], height[i], slices[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cylinder_ex_(Vector3 start_pos, Vector3 end_pos, float start_radius, float end_radius, int sides, Color color) {
  return DrawCylinderEx(start_pos, end_pos, start_radius, end_radius, sides, color);
}

// [[Rcpp::export]]
void draw_cylinder_ex_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector start_radius, NumericVector end_radius, NumericVector sides, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawCylinderEx(Vector3{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))), as<float>(wrap(start_pos(i, 2))) }, Vector3{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))), as<float>(wrap(end_pos(i, 2))) }, start_radius[i], end_radius[i], sides[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cylinder_wires_(Vector3 position, float radius_top, float radius_bottom, float height, int slices, Color color) {
  return DrawCylinderWires(position, radius_top, radius_bottom, height, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_wires_vectorized_(NumericMatrix position, NumericVector radius_top, NumericVector radius_bottom, NumericVector height, NumericVector slices, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCylinderWires(Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, radius_top[i], radius_bottom[i], height[i], slices[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_cylinder_wires_ex_(Vector3 start_pos, Vector3 end_pos, float start_radius, float end_radius, int sides, Color color) {
  return DrawCylinderWiresEx(start_pos, end_pos, start_radius, end_radius, sides, color);
}

// [[Rcpp::export]]
void draw_cylinder_wires_ex_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector start_radius, NumericVector end_radius, NumericVector sides, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawCylinderWiresEx(Vector3{ as<float>(wrap(start_pos(i, 0))), as<float>(wrap(start_pos(i, 1))), as<float>(wrap(start_pos(i, 2))) }, Vector3{ as<float>(wrap(end_pos(i, 0))), as<float>(wrap(end_pos(i, 1))), as<float>(wrap(end_pos(i, 2))) }, start_radius[i], end_radius[i], sides[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_plane_(Vector3 center_pos, Vector2 size, Color color) {
  return DrawPlane(center_pos, size, color);
}

// [[Rcpp::export]]
void draw_plane_vectorized_(NumericMatrix center_pos, NumericMatrix size, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawPlane(Vector3{ as<float>(wrap(center_pos(i, 0))), as<float>(wrap(center_pos(i, 1))), as<float>(wrap(center_pos(i, 2))) }, Vector2{ as<float>(wrap(size(i, 0))), as<float>(wrap(size(i, 1))) }, color[i]);
  }
}

// [[Rcpp::export]]
void draw_ray_(Ray ray, Color color) {
  return DrawRay(ray, color);
}

// [[Rcpp::export]]
void draw_ray_vectorized_(List ray, List color) {
  for (int i = 0; i < ray.length(); i++) {
    DrawRay(ray[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_grid_(int slices, float spacing) {
  return DrawGrid(slices, spacing);
}

// [[Rcpp::export]]
void draw_grid_vectorized_(NumericVector slices, NumericVector spacing) {
  for (int i = 0; i < slices.length(); i++) {
    DrawGrid(slices[i], spacing[i]);
  }
}

// [[Rcpp::export]]
Model load_model_(const char * file_name) {
  return LoadModel(file_name);
}

// [[Rcpp::export]]
void unload_model_(Model model) {
  return UnloadModel(model);
}

// [[Rcpp::export]]
BoundingBox get_model_bounding_box_(Model model) {
  return GetModelBoundingBox(model);
}

// [[Rcpp::export]]
void draw_model_(Model model, Vector3 position, float scale, Color tint) {
  return DrawModel(model, position, scale, tint);
}

// [[Rcpp::export]]
void draw_model_vectorized_(List model, NumericMatrix position, NumericVector scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModel(model[i], Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, scale[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_model_ex_(Model model, Vector3 position, Vector3 rotation_axis, float rotation_angle, Vector3 scale, Color tint) {
  return DrawModelEx(model, position, rotation_axis, rotation_angle, scale, tint);
}

// [[Rcpp::export]]
void draw_model_ex_vectorized_(List model, NumericMatrix position, NumericMatrix rotation_axis, NumericVector rotation_angle, NumericMatrix scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModelEx(model[i], Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, Vector3{ as<float>(wrap(rotation_axis(i, 0))), as<float>(wrap(rotation_axis(i, 1))), as<float>(wrap(rotation_axis(i, 2))) }, rotation_angle[i], Vector3{ as<float>(wrap(scale(i, 0))), as<float>(wrap(scale(i, 1))), as<float>(wrap(scale(i, 2))) }, tint[i]);
  }
}

// [[Rcpp::export]]
void draw_model_wires_(Model model, Vector3 position, float scale, Color tint) {
  return DrawModelWires(model, position, scale, tint);
}

// [[Rcpp::export]]
void draw_model_wires_vectorized_(List model, NumericMatrix position, NumericVector scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModelWires(model[i], Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, scale[i], tint[i]);
  }
}

// [[Rcpp::export]]
void draw_bounding_box_(BoundingBox box, Color color) {
  return DrawBoundingBox(box, color);
}

// [[Rcpp::export]]
void draw_bounding_box_vectorized_(List box, List color) {
  for (int i = 0; i < box.length(); i++) {
    DrawBoundingBox(box[i], color[i]);
  }
}

// [[Rcpp::export]]
void draw_billboard_(Camera3D camera, Texture texture, Vector3 position, float size, Color tint) {
  return DrawBillboard(camera, texture, position, size, tint);
}

// [[Rcpp::export]]
void draw_billboard_vectorized_(List camera, List texture, NumericMatrix position, NumericVector size, List tint) {
  for (int i = 0; i < camera.length(); i++) {
    DrawBillboard(camera[i], texture[i], Vector3{ as<float>(wrap(position(i, 0))), as<float>(wrap(position(i, 1))), as<float>(wrap(position(i, 2))) }, size[i], tint[i]);
  }
}

// [[Rcpp::export]]
bool check_collision_spheres_(Vector3 center_1, float radius_1, Vector3 center_2, float radius_2) {
  return CheckCollisionSpheres(center_1, radius_1, center_2, radius_2);
}

// [[Rcpp::export]]
bool check_collision_boxes_(BoundingBox box_1, BoundingBox box_2) {
  return CheckCollisionBoxes(box_1, box_2);
}

// [[Rcpp::export]]
bool check_collision_box_sphere_(BoundingBox box, Vector3 center, float radius) {
  return CheckCollisionBoxSphere(box, center, radius);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_sphere_(Ray ray, Vector3 center, float radius) {
  return GetRayCollisionSphere(ray, center, radius);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_box_(Ray ray, BoundingBox box) {
  return GetRayCollisionBox(ray, box);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_model_(Ray ray, Model model) {
  return GetRayCollisionModel(ray, model);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_mesh_(Ray ray, Mesh mesh, RaylibMatrix transform) {
  return GetRayCollisionMesh(ray, mesh, transform);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_triangle_(Ray ray, Vector3 p_1, Vector3 p_2, Vector3 p_3) {
  return GetRayCollisionTriangle(ray, p_1, p_2, p_3);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_quad_(Ray ray, Vector3 p_1, Vector3 p_2, Vector3 p_3, Vector3 p_4) {
  return GetRayCollisionQuad(ray, p_1, p_2, p_3, p_4);
}

// [[Rcpp::export]]
void init_audio_device_() {
  return InitAudioDevice();
}

// [[Rcpp::export]]
void close_audio_device_() {
  return CloseAudioDevice();
}

// [[Rcpp::export]]
bool is_audio_device_ready_() {
  return IsAudioDeviceReady();
}

// [[Rcpp::export]]
void set_master_volume_(float volume) {
  return SetMasterVolume(volume);
}

// [[Rcpp::export]]
Wave load_wave_(const char * file_name) {
  return LoadWave(file_name);
}

// [[Rcpp::export]]
Sound load_sound_(const char * file_name) {
  return LoadSound(file_name);
}

// [[Rcpp::export]]
Sound load_sound_from_wave_(Wave wave) {
  return LoadSoundFromWave(wave);
}

// [[Rcpp::export]]
void unload_wave_(Wave wave) {
  return UnloadWave(wave);
}

// [[Rcpp::export]]
void unload_sound_(Sound sound) {
  return UnloadSound(sound);
}

// [[Rcpp::export]]
bool export_wave_(Wave wave, const char * file_name) {
  return ExportWave(wave, file_name);
}

// [[Rcpp::export]]
bool export_wave_as_code_(Wave wave, const char * file_name) {
  return ExportWaveAsCode(wave, file_name);
}

// [[Rcpp::export]]
void play_sound_(Sound sound) {
  return PlaySound(sound);
}

// [[Rcpp::export]]
void stop_sound_(Sound sound) {
  return StopSound(sound);
}

// [[Rcpp::export]]
void pause_sound_(Sound sound) {
  return PauseSound(sound);
}

// [[Rcpp::export]]
void resume_sound_(Sound sound) {
  return ResumeSound(sound);
}

// [[Rcpp::export]]
void play_sound_multi_(Sound sound) {
  return PlaySoundMulti(sound);
}

// [[Rcpp::export]]
void stop_sound_multi_() {
  return StopSoundMulti();
}

// [[Rcpp::export]]
int get_sounds_playing_() {
  return GetSoundsPlaying();
}

// [[Rcpp::export]]
bool is_sound_playing_(Sound sound) {
  return IsSoundPlaying(sound);
}

// [[Rcpp::export]]
void set_sound_volume_(Sound sound, float volume) {
  return SetSoundVolume(sound, volume);
}

// [[Rcpp::export]]
void set_sound_pitch_(Sound sound, float pitch) {
  return SetSoundPitch(sound, pitch);
}

// [[Rcpp::export]]
Music load_music_stream_(const char * file_name) {
  return LoadMusicStream(file_name);
}

// [[Rcpp::export]]
void unload_music_stream_(Music music) {
  return UnloadMusicStream(music);
}

// [[Rcpp::export]]
void play_music_stream_(Music music) {
  return PlayMusicStream(music);
}

// [[Rcpp::export]]
bool is_music_stream_playing_(Music music) {
  return IsMusicStreamPlaying(music);
}

// [[Rcpp::export]]
void update_music_stream_(Music music) {
  return UpdateMusicStream(music);
}

// [[Rcpp::export]]
void stop_music_stream_(Music music) {
  return StopMusicStream(music);
}

// [[Rcpp::export]]
void pause_music_stream_(Music music) {
  return PauseMusicStream(music);
}

// [[Rcpp::export]]
void resume_music_stream_(Music music) {
  return ResumeMusicStream(music);
}

// [[Rcpp::export]]
void seek_music_stream_(Music music, float position) {
  return SeekMusicStream(music, position);
}

// [[Rcpp::export]]
void set_music_volume_(Music music, float volume) {
  return SetMusicVolume(music, volume);
}

// [[Rcpp::export]]
void set_music_pitch_(Music music, float pitch) {
  return SetMusicPitch(music, pitch);
}

// [[Rcpp::export]]
float get_music_time_length_(Music music) {
  return GetMusicTimeLength(music);
}

// [[Rcpp::export]]
float get_music_time_played_(Music music) {
  return GetMusicTimePlayed(music);
}

// [[Rcpp::export]]
AudioStream load_audio_stream_(unsigned int sample_rate, unsigned int sample_size, unsigned int channels) {
  return LoadAudioStream(sample_rate, sample_size, channels);
}

// [[Rcpp::export]]
void unload_audio_stream_(AudioStream stream) {
  return UnloadAudioStream(stream);
}

// [[Rcpp::export]]
bool is_audio_stream_processed_(AudioStream stream) {
  return IsAudioStreamProcessed(stream);
}

// [[Rcpp::export]]
void play_audio_stream_(AudioStream stream) {
  return PlayAudioStream(stream);
}

// [[Rcpp::export]]
void pause_audio_stream_(AudioStream stream) {
  return PauseAudioStream(stream);
}

// [[Rcpp::export]]
void resume_audio_stream_(AudioStream stream) {
  return ResumeAudioStream(stream);
}

// [[Rcpp::export]]
bool is_audio_stream_playing_(AudioStream stream) {
  return IsAudioStreamPlaying(stream);
}

// [[Rcpp::export]]
void stop_audio_stream_(AudioStream stream) {
  return StopAudioStream(stream);
}

// [[Rcpp::export]]
void set_audio_stream_volume_(AudioStream stream, float volume) {
  return SetAudioStreamVolume(stream, volume);
}

// [[Rcpp::export]]
void set_audio_stream_pitch_(AudioStream stream, float pitch) {
  return SetAudioStreamPitch(stream, pitch);
}

// [[Rcpp::export]]
void set_audio_stream_buffer_size_default_(int size) {
  return SetAudioStreamBufferSizeDefault(size);
}

// [[Rcpp::export]]
float vector_2_angle_(Vector2 v_1, Vector2 v_2) {
  return Vector2Angle(v_1, v_2);
}

// [[Rcpp::export]]
Vector2 vector_2_move_towards_(Vector2 v, Vector2 target, float max_distance) {
  return Vector2MoveTowards(v, target, max_distance);
}

// [[Rcpp::export]]
float vector_2_distance_(Vector2 v_1, Vector2 v_2) {
  return Vector2Distance(v_1, v_2);
}

// [[Rcpp::export]]
Vector2 vector_2_rotate_(Vector2 v, float angle) {
  return Vector2Rotate(v, angle);
}

// Begin extra_functions.cpp

//' Coerce a string or a number to a color
//'
//' @param x Object to be coerced. Can be a valid R color (see `colors()`) or a hexademical.
//'
//' @return A color
//' @family color functions
//' @export
// [[Rcpp::export]]
Color as_color(Color x) {
  return x;
}

// [[Rcpp::export]]
void set_shader_value_float_(Shader shader, int loc_index, float &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_FLOAT);
}

// [[Rcpp::export]]
void set_shader_value_vector_2_(Shader shader, int loc_index, Vector2 &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_VEC2);
}

// [[Rcpp::export]]
void set_shader_value_vector_3_(Shader shader, int loc_index, Vector3 &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_VEC3);
}

// [[Rcpp::export]]
void set_shader_value_vector_4_(Shader shader, int loc_index, Vector4 &value) {
  return SetShaderValue(shader, loc_index, &value, SHADER_UNIFORM_VEC4);
}

// [[Rcpp::export]]
Font load_font_ex_(const char * file_name, int font_size) {
  return LoadFontEx(file_name, font_size, 0, 0);
}

// [[Rcpp::export]]
Camera3D update_camera_(Camera3D camera) {
  UpdateCamera(&camera);
  return camera;
}

//' @export
// [[Rcpp::export]]
void set_model_texture(Model model, int material_id, int material_map_index, Texture texture) {
  model.materials[material_id].maps[material_map_index].texture = texture;
}

// [[Rcpp::export]]
const char * raylib_version_() {
  return RAYLIB_VERSION;
}
// End extra_functions.cpp

