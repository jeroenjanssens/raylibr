// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void draw_point_3d_(Vector3 position, Color color) {
  return DrawPoint3D(position, color);
}

// [[Rcpp::export]]
void draw_cube_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCube(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_v_(Vector3 position, Vector3 size, Color color) {
  return DrawCubeV(position, size, color);
}

// [[Rcpp::export]]
void draw_cube_wires_(Vector3 position, float width, float height, float length, Color color) {
  return DrawCubeWires(position, width, height, length, color);
}

// [[Rcpp::export]]
void draw_cube_wires_v_(Vector3 position, Vector3 size, Color color) {
  return DrawCubeWiresV(position, size, color);
}

// [[Rcpp::export]]
void draw_sphere_(Vector3 center_pos, float radius, Color color) {
  return DrawSphere(center_pos, radius, color);
}

// [[Rcpp::export]]
void draw_sphere_ex_(Vector3 center_pos, float radius, int rings, int slices, Color color) {
  return DrawSphereEx(center_pos, radius, rings, slices, color);
}

// [[Rcpp::export]]
void draw_sphere_wires_(Vector3 center_pos, float radius, int rings, int slices, Color color) {
  return DrawSphereWires(center_pos, radius, rings, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_(Vector3 position, float radius_top, float radius_bottom, float height, int slices, Color color) {
  return DrawCylinder(position, radius_top, radius_bottom, height, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_ex_(Vector3 start_pos, Vector3 end_pos, float start_radius, float end_radius, int sides, Color color) {
  return DrawCylinderEx(start_pos, end_pos, start_radius, end_radius, sides, color);
}

// [[Rcpp::export]]
void draw_cylinder_wires_(Vector3 position, float radius_top, float radius_bottom, float height, int slices, Color color) {
  return DrawCylinderWires(position, radius_top, radius_bottom, height, slices, color);
}

// [[Rcpp::export]]
void draw_cylinder_wires_ex_(Vector3 start_pos, Vector3 end_pos, float start_radius, float end_radius, int sides, Color color) {
  return DrawCylinderWiresEx(start_pos, end_pos, start_radius, end_radius, sides, color);
}

// [[Rcpp::export]]
void draw_capsule_(Vector3 start_pos, Vector3 end_pos, float radius, int slices, int rings, Color color) {
  return DrawCapsule(start_pos, end_pos, radius, slices, rings, color);
}

// [[Rcpp::export]]
void draw_capsule_wires_(Vector3 start_pos, Vector3 end_pos, float radius, int slices, int rings, Color color) {
  return DrawCapsuleWires(start_pos, end_pos, radius, slices, rings, color);
}

// [[Rcpp::export]]
void draw_plane_(Vector3 center_pos, Vector2 size, Color color) {
  return DrawPlane(center_pos, size, color);
}

// [[Rcpp::export]]
void draw_ray_(Ray ray, Color color) {
  return DrawRay(ray, color);
}

// [[Rcpp::export]]
void draw_grid_(int slices, float spacing) {
  return DrawGrid(slices, spacing);
}

// [[Rcpp::export]]
Model load_model_(const char * file_name) {
  return LoadModel(file_name);
}

// [[Rcpp::export]]
Model load_model_from_mesh_(Mesh mesh) {
  return LoadModelFromMesh(mesh);
}

// [[Rcpp::export]]
bool is_model_valid_(Model model) {
  return IsModelValid(model);
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
void draw_model_ex_(Model model, Vector3 position, Vector3 rotation_axis, float rotation_angle, Vector3 scale, Color tint) {
  return DrawModelEx(model, position, rotation_axis, rotation_angle, scale, tint);
}

// [[Rcpp::export]]
void draw_model_wires_(Model model, Vector3 position, float scale, Color tint) {
  return DrawModelWires(model, position, scale, tint);
}

// [[Rcpp::export]]
void draw_model_wires_ex_(Model model, Vector3 position, Vector3 rotation_axis, float rotation_angle, Vector3 scale, Color tint) {
  return DrawModelWiresEx(model, position, rotation_axis, rotation_angle, scale, tint);
}

// [[Rcpp::export]]
void draw_billboard_(Camera3D camera, Texture2D texture, Vector3 position, float scale, Color tint) {
  return DrawBillboard(camera, texture, position, scale, tint);
}

// [[Rcpp::export]]
void draw_billboard_rec_(Camera3D camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint) {
  return DrawBillboardRec(camera, texture, source, position, size, tint);
}

// [[Rcpp::export]]
void draw_billboard_pro_(Camera3D camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint) {
  return DrawBillboardPro(camera, texture, source, position, up, size, origin, rotation, tint);
}

// [[Rcpp::export]]
void draw_mesh_(Mesh mesh, Material material, RaylibMatrix transform) {
  return DrawMesh(mesh, material, transform);
}

// [[Rcpp::export]]
Material load_material_default_() {
  return LoadMaterialDefault();
}

// [[Rcpp::export]]
bool is_material_valid_(Material material) {
  return IsMaterialValid(material);
}

// [[Rcpp::export]]
void unload_material_(Material material) {
  return UnloadMaterial(material);
}

// [[Rcpp::export]]
bool is_model_animation_valid_(Model model, ModelAnimation anim) {
  return IsModelAnimationValid(model, anim);
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
RayCollision get_ray_collision_mesh_(Ray ray, Mesh mesh, RaylibMatrix transform) {
  return GetRayCollisionMesh(ray, mesh, transform);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_triangle_(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3) {
  return GetRayCollisionTriangle(ray, p1, p2, p3);
}

// [[Rcpp::export]]
RayCollision get_ray_collision_quad_(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4) {
  return GetRayCollisionQuad(ray, p1, p2, p3, p4);
}
