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
    xptr.attr("class") = "audio_stream";
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
    xptr.attr("class") = "bone_info";
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
    xptr.attr("class") = "bounding_box";
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
    xptr.attr("class") = "camera_2d";
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
    xptr.attr("class") = "camera_3d";
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
    xptr.attr("class") = "font";
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
    xptr.attr("class") = "glyph_info";
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
    xptr.attr("class") = "image";
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
    xptr.attr("class") = "material";
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
    xptr.attr("class") = "material_map";
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
    xptr.attr("class") = "mesh";
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
    xptr.attr("class") = "model";
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
    xptr.attr("class") = "model_animation";
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
    xptr.attr("class") = "music";
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
    xptr.attr("class") = "ray";
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
    xptr.attr("class") = "ray_collision";
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
    xptr.attr("class") = "rectangle";
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
    xptr.attr("class") = "render_texture";
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
    xptr.attr("class") = "shader";
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
    xptr.attr("class") = "sound";
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
    xptr.attr("class") = "texture";
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
    xptr.attr("class") = "transform";
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
    xptr.attr("class") = "vr_device_info";
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
    xptr.attr("class") = "vr_stereo_config";
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
    xptr.attr("class") = "wave";
    return xptr;
  };
  
}

