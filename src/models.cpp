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
BoundingBox get_mesh_bounding_box_(Mesh mesh) {
  return GetMeshBoundingBox(mesh);
}

// [[Rcpp::export]]
bool export_mesh_(Mesh mesh, const char * file_name) {
  return ExportMesh(mesh, file_name);
}

// [[Rcpp::export]]
bool export_mesh_as_code_(Mesh mesh, const char * file_name) {
  return ExportMeshAsCode(mesh, file_name);
}

// [[Rcpp::export]]
Mesh gen_mesh_poly_(int sides, float radius) {
  return GenMeshPoly(sides, radius);
}

// [[Rcpp::export]]
Mesh gen_mesh_plane_(float width, float length, int res_x, int res_z) {
  return GenMeshPlane(width, length, res_x, res_z);
}

// [[Rcpp::export]]
Mesh gen_mesh_cube_(float width, float height, float length) {
  return GenMeshCube(width, height, length);
}

// [[Rcpp::export]]
Mesh gen_mesh_sphere_(float radius, int rings, int slices) {
  return GenMeshSphere(radius, rings, slices);
}

// [[Rcpp::export]]
Mesh gen_mesh_hemi_sphere_(float radius, int rings, int slices) {
  return GenMeshHemiSphere(radius, rings, slices);
}

// [[Rcpp::export]]
Mesh gen_mesh_cylinder_(float radius, float height, int slices) {
  return GenMeshCylinder(radius, height, slices);
}

// [[Rcpp::export]]
Mesh gen_mesh_cone_(float radius, float height, int slices) {
  return GenMeshCone(radius, height, slices);
}

// [[Rcpp::export]]
Mesh gen_mesh_torus_(float radius, float size, int rad_seg, int sides) {
  return GenMeshTorus(radius, size, rad_seg, sides);
}

// [[Rcpp::export]]
Mesh gen_mesh_knot_(float radius, float size, int rad_seg, int sides) {
  return GenMeshKnot(radius, size, rad_seg, sides);
}

// [[Rcpp::export]]
Mesh gen_mesh_heightmap_(Image heightmap, Vector3 size) {
  return GenMeshHeightmap(heightmap, size);
}

// [[Rcpp::export]]
Mesh gen_mesh_cubicmap_(Image cubicmap, Vector3 cube_size) {
  return GenMeshCubicmap(cubicmap, cube_size);
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

// [[Rcpp::export]]
void draw_point_3d_vectorized_(NumericMatrix position, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawPoint3D(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cube_vectorized_(NumericMatrix position, NumericVector width, NumericVector height, NumericVector length, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCube(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)width[i], (float)height[i], (float)length[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cube_v_vectorized_(NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCubeV(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, Vector3{as<float>(wrap(size(i,0))), as<float>(wrap(size(i,1))), as<float>(wrap(size(i,2)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cube_wires_vectorized_(NumericMatrix position, NumericVector width, NumericVector height, NumericVector length, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCubeWires(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)width[i], (float)height[i], (float)length[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cube_wires_v_vectorized_(NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCubeWiresV(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, Vector3{as<float>(wrap(size(i,0))), as<float>(wrap(size(i,1))), as<float>(wrap(size(i,2)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_sphere_vectorized_(NumericMatrix center_pos, NumericVector radius, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawSphere(Vector3{as<float>(wrap(center_pos(i,0))), as<float>(wrap(center_pos(i,1))), as<float>(wrap(center_pos(i,2)))}, (float)radius[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_sphere_ex_vectorized_(NumericMatrix center_pos, NumericVector radius, NumericVector rings, NumericVector slices, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawSphereEx(Vector3{as<float>(wrap(center_pos(i,0))), as<float>(wrap(center_pos(i,1))), as<float>(wrap(center_pos(i,2)))}, (float)radius[i], (int)rings[i], (int)slices[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_sphere_wires_vectorized_(NumericMatrix center_pos, NumericVector radius, NumericVector rings, NumericVector slices, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawSphereWires(Vector3{as<float>(wrap(center_pos(i,0))), as<float>(wrap(center_pos(i,1))), as<float>(wrap(center_pos(i,2)))}, (float)radius[i], (int)rings[i], (int)slices[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cylinder_vectorized_(NumericMatrix position, NumericVector radius_top, NumericVector radius_bottom, NumericVector height, NumericVector slices, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCylinder(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)radius_top[i], (float)radius_bottom[i], (float)height[i], (int)slices[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cylinder_ex_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector start_radius, NumericVector end_radius, NumericVector sides, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawCylinderEx(Vector3{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1))), as<float>(wrap(start_pos(i,2)))}, Vector3{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1))), as<float>(wrap(end_pos(i,2)))}, (float)start_radius[i], (float)end_radius[i], (int)sides[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cylinder_wires_vectorized_(NumericMatrix position, NumericVector radius_top, NumericVector radius_bottom, NumericVector height, NumericVector slices, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawCylinderWires(Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)radius_top[i], (float)radius_bottom[i], (float)height[i], (int)slices[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_cylinder_wires_ex_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector start_radius, NumericVector end_radius, NumericVector sides, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawCylinderWiresEx(Vector3{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1))), as<float>(wrap(start_pos(i,2)))}, Vector3{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1))), as<float>(wrap(end_pos(i,2)))}, (float)start_radius[i], (float)end_radius[i], (int)sides[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_capsule_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector radius, NumericVector slices, NumericVector rings, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawCapsule(Vector3{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1))), as<float>(wrap(start_pos(i,2)))}, Vector3{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1))), as<float>(wrap(end_pos(i,2)))}, (float)radius[i], (int)slices[i], (int)rings[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_capsule_wires_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector radius, NumericVector slices, NumericVector rings, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawCapsuleWires(Vector3{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1))), as<float>(wrap(start_pos(i,2)))}, Vector3{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1))), as<float>(wrap(end_pos(i,2)))}, (float)radius[i], (int)slices[i], (int)rings[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_plane_vectorized_(NumericMatrix center_pos, NumericMatrix size, List color) {
  for (int i = 0; i < center_pos.nrow(); i++) {
    DrawPlane(Vector3{as<float>(wrap(center_pos(i,0))), as<float>(wrap(center_pos(i,1))), as<float>(wrap(center_pos(i,2)))}, Vector2{as<float>(wrap(size(i,0))), as<float>(wrap(size(i,1)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ray_vectorized_(List ray, List color) {
  for (int i = 0; i < ray.length(); i++) {
    DrawRay(as<Ray>(ray[i]), as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_grid_vectorized_(NumericVector slices, NumericVector spacing) {
  for (int i = 0; i < slices.length(); i++) {
    DrawGrid((int)slices[i], (float)spacing[i]);
  }
}

// [[Rcpp::export]]
void draw_model_vectorized_(List model, NumericMatrix position, NumericVector scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModel(as<Model>(model[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)scale[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_model_ex_vectorized_(List model, NumericMatrix position, NumericMatrix rotation_axis, NumericVector rotation_angle, NumericMatrix scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModelEx(as<Model>(model[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, Vector3{as<float>(wrap(rotation_axis(i,0))), as<float>(wrap(rotation_axis(i,1))), as<float>(wrap(rotation_axis(i,2)))}, (float)rotation_angle[i], Vector3{as<float>(wrap(scale(i,0))), as<float>(wrap(scale(i,1))), as<float>(wrap(scale(i,2)))}, as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_model_wires_vectorized_(List model, NumericMatrix position, NumericVector scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModelWires(as<Model>(model[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)scale[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_model_wires_ex_vectorized_(List model, NumericMatrix position, NumericMatrix rotation_axis, NumericVector rotation_angle, NumericMatrix scale, List tint) {
  for (int i = 0; i < model.length(); i++) {
    DrawModelWiresEx(as<Model>(model[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, Vector3{as<float>(wrap(rotation_axis(i,0))), as<float>(wrap(rotation_axis(i,1))), as<float>(wrap(rotation_axis(i,2)))}, (float)rotation_angle[i], Vector3{as<float>(wrap(scale(i,0))), as<float>(wrap(scale(i,1))), as<float>(wrap(scale(i,2)))}, as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_billboard_vectorized_(List camera, List texture, NumericMatrix position, NumericVector scale, List tint) {
  for (int i = 0; i < camera.length(); i++) {
    DrawBillboard(as<Camera3D>(camera[i]), as<Texture2D>(texture[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, (float)scale[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_billboard_rec_vectorized_(List camera, List texture, List source, NumericMatrix position, NumericMatrix size, List tint) {
  for (int i = 0; i < camera.length(); i++) {
    DrawBillboardRec(as<Camera3D>(camera[i]), as<Texture2D>(texture[i]), as<Rectangle>(source[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, Vector2{as<float>(wrap(size(i,0))), as<float>(wrap(size(i,1)))}, as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_billboard_pro_vectorized_(List camera, List texture, List source, NumericMatrix position, NumericMatrix up, NumericMatrix size, NumericMatrix origin, NumericVector rotation, List tint) {
  for (int i = 0; i < camera.length(); i++) {
    DrawBillboardPro(as<Camera3D>(camera[i]), as<Texture2D>(texture[i]), as<Rectangle>(source[i]), Vector3{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1))), as<float>(wrap(position(i,2)))}, Vector3{as<float>(wrap(up(i,0))), as<float>(wrap(up(i,1))), as<float>(wrap(up(i,2)))}, Vector2{as<float>(wrap(size(i,0))), as<float>(wrap(size(i,1)))}, Vector2{as<float>(wrap(origin(i,0))), as<float>(wrap(origin(i,1)))}, (float)rotation[i], as<Color>(tint[i]));
  }
}

// [[Rcpp::export]]
void draw_mesh_vectorized_(List mesh, List material, List transform) {
  for (int i = 0; i < mesh.length(); i++) {
    DrawMesh(as<Mesh>(mesh[i]), as<Material>(material[i]), as<RaylibMatrix>(transform[i]));
  }
}
