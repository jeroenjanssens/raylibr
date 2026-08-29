// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void set_shapes_texture_(Texture2D texture, Rectangle source) {
  return SetShapesTexture(texture, source);
}

// [[Rcpp::export]]
void draw_pixel_(int pos_x, int pos_y, Color color) {
  return DrawPixel(pos_x, pos_y, color);
}

// [[Rcpp::export]]
void draw_pixel_v_(Vector2 position, Color color) {
  return DrawPixelV(position, color);
}

// [[Rcpp::export]]
void draw_line_(int start_pos_x, int start_pos_y, int end_pos_x, int end_pos_y, Color color) {
  return DrawLine(start_pos_x, start_pos_y, end_pos_x, end_pos_y, color);
}

// [[Rcpp::export]]
void draw_line_v_(Vector2 start_pos, Vector2 end_pos, Color color) {
  return DrawLineV(start_pos, end_pos, color);
}

// [[Rcpp::export]]
void draw_line_ex_(Vector2 start_pos, Vector2 end_pos, float thick, Color color) {
  return DrawLineEx(start_pos, end_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_bezier_(Vector2 start_pos, Vector2 end_pos, float thick, Color color) {
  return DrawLineBezier(start_pos, end_pos, thick, color);
}

// [[Rcpp::export]]
void draw_line_dashed_(Vector2 start_pos, Vector2 end_pos, int dash_size, int space_size, Color color) {
  return DrawLineDashed(start_pos, end_pos, dash_size, space_size, color);
}

// [[Rcpp::export]]
void draw_circle_(int center_x, int center_y, float radius, Color color) {
  return DrawCircle(center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void draw_circle_v_(Vector2 center, float radius, Color color) {
  return DrawCircleV(center, radius, color);
}

// [[Rcpp::export]]
void draw_circle_gradient_(Vector2 center, float radius, Color inner, Color outer) {
  return DrawCircleGradient(center, radius, inner, outer);
}

// [[Rcpp::export]]
void draw_circle_sector_(Vector2 center, float radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawCircleSector(center, radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_circle_sector_lines_(Vector2 center, float radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawCircleSectorLines(center, radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_circle_lines_(int center_x, int center_y, float radius, Color color) {
  return DrawCircleLines(center_x, center_y, radius, color);
}

// [[Rcpp::export]]
void draw_circle_lines_v_(Vector2 center, float radius, Color color) {
  return DrawCircleLinesV(center, radius, color);
}

// [[Rcpp::export]]
void draw_ellipse_(int center_x, int center_y, float radius_h, float radius_v, Color color) {
  return DrawEllipse(center_x, center_y, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ellipse_v_(Vector2 center, float radius_h, float radius_v, Color color) {
  return DrawEllipseV(center, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ellipse_lines_(int center_x, int center_y, float radius_h, float radius_v, Color color) {
  return DrawEllipseLines(center_x, center_y, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ellipse_lines_v_(Vector2 center, float radius_h, float radius_v, Color color) {
  return DrawEllipseLinesV(center, radius_h, radius_v, color);
}

// [[Rcpp::export]]
void draw_ring_(Vector2 center, float inner_radius, float outer_radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawRing(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_ring_lines_(Vector2 center, float inner_radius, float outer_radius, float start_angle, float end_angle, int segments, Color color) {
  return DrawRingLines(center, inner_radius, outer_radius, start_angle, end_angle, segments, color);
}

// [[Rcpp::export]]
void draw_rectangle_(int pos_x, int pos_y, int width, int height, Color color) {
  return DrawRectangle(pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void draw_rectangle_v_(Vector2 position, Vector2 size, Color color) {
  return DrawRectangleV(position, size, color);
}

// [[Rcpp::export]]
void draw_rectangle_rec_(Rectangle rec, Color color) {
  return DrawRectangleRec(rec, color);
}

// [[Rcpp::export]]
void draw_rectangle_pro_(Rectangle rec, Vector2 origin, float rotation, Color color) {
  return DrawRectanglePro(rec, origin, rotation, color);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_v_(int pos_x, int pos_y, int width, int height, Color top, Color bottom) {
  return DrawRectangleGradientV(pos_x, pos_y, width, height, top, bottom);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_h_(int pos_x, int pos_y, int width, int height, Color left, Color right) {
  return DrawRectangleGradientH(pos_x, pos_y, width, height, left, right);
}

// [[Rcpp::export]]
void draw_rectangle_gradient_ex_(Rectangle rec, Color top_left, Color bottom_left, Color bottom_right, Color top_right) {
  return DrawRectangleGradientEx(rec, top_left, bottom_left, bottom_right, top_right);
}

// [[Rcpp::export]]
void draw_rectangle_lines_(int pos_x, int pos_y, int width, int height, Color color) {
  return DrawRectangleLines(pos_x, pos_y, width, height, color);
}

// [[Rcpp::export]]
void draw_rectangle_lines_ex_(Rectangle rec, float line_thick, Color color) {
  return DrawRectangleLinesEx(rec, line_thick, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_(Rectangle rec, float roundness, int segments, Color color) {
  return DrawRectangleRounded(rec, roundness, segments, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_(Rectangle rec, float roundness, int segments, Color color) {
  return DrawRectangleRoundedLines(rec, roundness, segments, color);
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_ex_(Rectangle rec, float roundness, int segments, float line_thick, Color color) {
  return DrawRectangleRoundedLinesEx(rec, roundness, segments, line_thick, color);
}

// [[Rcpp::export]]
void draw_triangle_(Vector2 v1, Vector2 v2, Vector2 v3, Color color) {
  return DrawTriangle(v1, v2, v3, color);
}

// [[Rcpp::export]]
void draw_triangle_lines_(Vector2 v1, Vector2 v2, Vector2 v3, Color color) {
  return DrawTriangleLines(v1, v2, v3, color);
}

// [[Rcpp::export]]
void draw_poly_(Vector2 center, int sides, float radius, float rotation, Color color) {
  return DrawPoly(center, sides, radius, rotation, color);
}

// [[Rcpp::export]]
void draw_poly_lines_(Vector2 center, int sides, float radius, float rotation, Color color) {
  return DrawPolyLines(center, sides, radius, rotation, color);
}

// [[Rcpp::export]]
void draw_poly_lines_ex_(Vector2 center, int sides, float radius, float rotation, float line_thick, Color color) {
  return DrawPolyLinesEx(center, sides, radius, rotation, line_thick, color);
}

// [[Rcpp::export]]
bool check_collision_recs_(Rectangle rec1, Rectangle rec2) {
  return CheckCollisionRecs(rec1, rec2);
}

// [[Rcpp::export]]
bool check_collision_circles_(Vector2 center1, float radius1, Vector2 center2, float radius2) {
  return CheckCollisionCircles(center1, radius1, center2, radius2);
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
bool check_collision_point_triangle_(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3) {
  return CheckCollisionPointTriangle(point, p1, p2, p3);
}

// [[Rcpp::export]]
bool check_collision_point_line_(Vector2 point, Vector2 p1, Vector2 p2, int threshold) {
  return CheckCollisionPointLine(point, p1, p2, threshold);
}

// [[Rcpp::export]]
Rectangle get_collision_rec_(Rectangle rec1, Rectangle rec2) {
  return GetCollisionRec(rec1, rec2);
}

// [[Rcpp::export]]
void draw_line_3d_(Vector3 start_pos, Vector3 end_pos, Color color) {
  return DrawLine3D(start_pos, end_pos, color);
}

// [[Rcpp::export]]
void draw_circle_3d_(Vector3 center, float radius, Vector3 rotation_axis, float rotation_angle, Color color) {
  return DrawCircle3D(center, radius, rotation_axis, rotation_angle, color);
}

// [[Rcpp::export]]
void draw_triangle_3d_(Vector3 v1, Vector3 v2, Vector3 v3, Color color) {
  return DrawTriangle3D(v1, v2, v3, color);
}

// [[Rcpp::export]]
bool check_collision_spheres_(Vector3 center1, float radius1, Vector3 center2, float radius2) {
  return CheckCollisionSpheres(center1, radius1, center2, radius2);
}

// [[Rcpp::export]]
bool check_collision_boxes_(BoundingBox box1, BoundingBox box2) {
  return CheckCollisionBoxes(box1, box2);
}

// [[Rcpp::export]]
bool check_collision_box_sphere_(BoundingBox box, Vector3 center, float radius) {
  return CheckCollisionBoxSphere(box, center, radius);
}
