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
void draw_spline_segment_linear_(Vector2 p1, Vector2 p2, float thick, Color color) {
  return DrawSplineSegmentLinear(p1, p2, thick, color);
}

// [[Rcpp::export]]
void draw_spline_segment_basis_(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color) {
  return DrawSplineSegmentBasis(p1, p2, p3, p4, thick, color);
}

// [[Rcpp::export]]
void draw_spline_segment_catmull_rom_(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float thick, Color color) {
  return DrawSplineSegmentCatmullRom(p1, p2, p3, p4, thick, color);
}

// [[Rcpp::export]]
void draw_spline_segment_bezier_quadratic_(Vector2 p1, Vector2 c2, Vector2 p3, float thick, Color color) {
  return DrawSplineSegmentBezierQuadratic(p1, c2, p3, thick, color);
}

// [[Rcpp::export]]
void draw_spline_segment_bezier_cubic_(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float thick, Color color) {
  return DrawSplineSegmentBezierCubic(p1, c2, c3, p4, thick, color);
}

// [[Rcpp::export]]
Vector2 get_spline_point_linear_(Vector2 start_pos, Vector2 end_pos, float t) {
  return GetSplinePointLinear(start_pos, end_pos, t);
}

// [[Rcpp::export]]
Vector2 get_spline_point_basis_(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t) {
  return GetSplinePointBasis(p1, p2, p3, p4, t);
}

// [[Rcpp::export]]
Vector2 get_spline_point_catmull_rom_(Vector2 p1, Vector2 p2, Vector2 p3, Vector2 p4, float t) {
  return GetSplinePointCatmullRom(p1, p2, p3, p4, t);
}

// [[Rcpp::export]]
Vector2 get_spline_point_bezier_quad_(Vector2 p1, Vector2 c2, Vector2 p3, float t) {
  return GetSplinePointBezierQuad(p1, c2, p3, t);
}

// [[Rcpp::export]]
Vector2 get_spline_point_bezier_cubic_(Vector2 p1, Vector2 c2, Vector2 c3, Vector2 p4, float t) {
  return GetSplinePointBezierCubic(p1, c2, c3, p4, t);
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
bool check_collision_circle_line_(Vector2 center, float radius, Vector2 p1, Vector2 p2) {
  return CheckCollisionCircleLine(center, radius, p1, p2);
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

// [[Rcpp::export]]
void draw_pixel_vectorized_(NumericVector pos_x, NumericVector pos_y, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawPixel((int)pos_x[i], (int)pos_y[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_pixel_v_vectorized_(NumericMatrix position, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawPixelV(Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_line_vectorized_(NumericVector start_pos_x, NumericVector start_pos_y, NumericVector end_pos_x, NumericVector end_pos_y, List color) {
  for (int i = 0; i < start_pos_x.length(); i++) {
    DrawLine((int)start_pos_x[i], (int)start_pos_y[i], (int)end_pos_x[i], (int)end_pos_y[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_line_v_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineV(Vector2{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1)))}, Vector2{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_line_ex_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector thick, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineEx(Vector2{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1)))}, Vector2{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_line_bezier_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector thick, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineBezier(Vector2{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1)))}, Vector2{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_line_dashed_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, NumericVector dash_size, NumericVector space_size, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLineDashed(Vector2{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1)))}, Vector2{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1)))}, (int)dash_size[i], (int)space_size[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawCircle((int)center_x[i], (int)center_y[i], (float)radius[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_v_vectorized_(NumericMatrix center, NumericVector radius, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleV(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_gradient_vectorized_(NumericMatrix center, NumericVector radius, List inner, List outer) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleGradient(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius[i], as<Color>(inner[i]), as<Color>(outer[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_sector_vectorized_(NumericMatrix center, NumericVector radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleSector(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius[i], (float)start_angle[i], (float)end_angle[i], (int)segments[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_sector_lines_vectorized_(NumericMatrix center, NumericVector radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleSectorLines(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius[i], (float)start_angle[i], (float)end_angle[i], (int)segments[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_lines_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawCircleLines((int)center_x[i], (int)center_y[i], (float)radius[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_lines_v_vectorized_(NumericMatrix center, NumericVector radius, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircleLinesV(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ellipse_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius_h, NumericVector radius_v, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawEllipse((int)center_x[i], (int)center_y[i], (float)radius_h[i], (float)radius_v[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ellipse_v_vectorized_(NumericMatrix center, NumericVector radius_h, NumericVector radius_v, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawEllipseV(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius_h[i], (float)radius_v[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ellipse_lines_vectorized_(NumericVector center_x, NumericVector center_y, NumericVector radius_h, NumericVector radius_v, List color) {
  for (int i = 0; i < center_x.length(); i++) {
    DrawEllipseLines((int)center_x[i], (int)center_y[i], (float)radius_h[i], (float)radius_v[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ellipse_lines_v_vectorized_(NumericMatrix center, NumericVector radius_h, NumericVector radius_v, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawEllipseLinesV(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)radius_h[i], (float)radius_v[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ring_vectorized_(NumericMatrix center, NumericVector inner_radius, NumericVector outer_radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawRing(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)inner_radius[i], (float)outer_radius[i], (float)start_angle[i], (float)end_angle[i], (int)segments[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_ring_lines_vectorized_(NumericMatrix center, NumericVector inner_radius, NumericVector outer_radius, NumericVector start_angle, NumericVector end_angle, NumericVector segments, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawRingLines(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (float)inner_radius[i], (float)outer_radius[i], (float)start_angle[i], (float)end_angle[i], (int)segments[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangle((int)pos_x[i], (int)pos_y[i], (int)width[i], (int)height[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_v_vectorized_(NumericMatrix position, NumericMatrix size, List color) {
  for (int i = 0; i < position.nrow(); i++) {
    DrawRectangleV(Vector2{as<float>(wrap(position(i,0))), as<float>(wrap(position(i,1)))}, Vector2{as<float>(wrap(size(i,0))), as<float>(wrap(size(i,1)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_rec_vectorized_(List rec, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRec(as<Rectangle>(rec[i]), as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_pro_vectorized_(List rec, NumericMatrix origin, NumericVector rotation, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectanglePro(as<Rectangle>(rec[i]), Vector2{as<float>(wrap(origin(i,0))), as<float>(wrap(origin(i,1)))}, (float)rotation[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_gradient_v_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List top, List bottom) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangleGradientV((int)pos_x[i], (int)pos_y[i], (int)width[i], (int)height[i], as<Color>(top[i]), as<Color>(bottom[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_gradient_h_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List left, List right) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangleGradientH((int)pos_x[i], (int)pos_y[i], (int)width[i], (int)height[i], as<Color>(left[i]), as<Color>(right[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_gradient_ex_vectorized_(List rec, List top_left, List bottom_left, List bottom_right, List top_right) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleGradientEx(as<Rectangle>(rec[i]), as<Color>(top_left[i]), as<Color>(bottom_left[i]), as<Color>(bottom_right[i]), as<Color>(top_right[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_lines_vectorized_(NumericVector pos_x, NumericVector pos_y, NumericVector width, NumericVector height, List color) {
  for (int i = 0; i < pos_x.length(); i++) {
    DrawRectangleLines((int)pos_x[i], (int)pos_y[i], (int)width[i], (int)height[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_lines_ex_vectorized_(List rec, NumericVector line_thick, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleLinesEx(as<Rectangle>(rec[i]), (float)line_thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_rounded_vectorized_(List rec, NumericVector roundness, NumericVector segments, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRounded(as<Rectangle>(rec[i]), (float)roundness[i], (int)segments[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_vectorized_(List rec, NumericVector roundness, NumericVector segments, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRoundedLines(as<Rectangle>(rec[i]), (float)roundness[i], (int)segments[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_rectangle_rounded_lines_ex_vectorized_(List rec, NumericVector roundness, NumericVector segments, NumericVector line_thick, List color) {
  for (int i = 0; i < rec.length(); i++) {
    DrawRectangleRoundedLinesEx(as<Rectangle>(rec[i]), (float)roundness[i], (int)segments[i], (float)line_thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_triangle_vectorized_(NumericMatrix v1, NumericMatrix v2, NumericMatrix v3, List color) {
  for (int i = 0; i < v1.nrow(); i++) {
    DrawTriangle(Vector2{as<float>(wrap(v1(i,0))), as<float>(wrap(v1(i,1)))}, Vector2{as<float>(wrap(v2(i,0))), as<float>(wrap(v2(i,1)))}, Vector2{as<float>(wrap(v3(i,0))), as<float>(wrap(v3(i,1)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_triangle_lines_vectorized_(NumericMatrix v1, NumericMatrix v2, NumericMatrix v3, List color) {
  for (int i = 0; i < v1.nrow(); i++) {
    DrawTriangleLines(Vector2{as<float>(wrap(v1(i,0))), as<float>(wrap(v1(i,1)))}, Vector2{as<float>(wrap(v2(i,0))), as<float>(wrap(v2(i,1)))}, Vector2{as<float>(wrap(v3(i,0))), as<float>(wrap(v3(i,1)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_poly_vectorized_(NumericMatrix center, NumericVector sides, NumericVector radius, NumericVector rotation, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawPoly(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (int)sides[i], (float)radius[i], (float)rotation[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_poly_lines_vectorized_(NumericMatrix center, NumericVector sides, NumericVector radius, NumericVector rotation, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawPolyLines(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (int)sides[i], (float)radius[i], (float)rotation[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_poly_lines_ex_vectorized_(NumericMatrix center, NumericVector sides, NumericVector radius, NumericVector rotation, NumericVector line_thick, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawPolyLinesEx(Vector2{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1)))}, (int)sides[i], (float)radius[i], (float)rotation[i], (float)line_thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_spline_segment_linear_vectorized_(NumericMatrix p1, NumericMatrix p2, NumericVector thick, List color) {
  for (int i = 0; i < p1.nrow(); i++) {
    DrawSplineSegmentLinear(Vector2{as<float>(wrap(p1(i,0))), as<float>(wrap(p1(i,1)))}, Vector2{as<float>(wrap(p2(i,0))), as<float>(wrap(p2(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_spline_segment_basis_vectorized_(NumericMatrix p1, NumericMatrix p2, NumericMatrix p3, NumericMatrix p4, NumericVector thick, List color) {
  for (int i = 0; i < p1.nrow(); i++) {
    DrawSplineSegmentBasis(Vector2{as<float>(wrap(p1(i,0))), as<float>(wrap(p1(i,1)))}, Vector2{as<float>(wrap(p2(i,0))), as<float>(wrap(p2(i,1)))}, Vector2{as<float>(wrap(p3(i,0))), as<float>(wrap(p3(i,1)))}, Vector2{as<float>(wrap(p4(i,0))), as<float>(wrap(p4(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_spline_segment_catmull_rom_vectorized_(NumericMatrix p1, NumericMatrix p2, NumericMatrix p3, NumericMatrix p4, NumericVector thick, List color) {
  for (int i = 0; i < p1.nrow(); i++) {
    DrawSplineSegmentCatmullRom(Vector2{as<float>(wrap(p1(i,0))), as<float>(wrap(p1(i,1)))}, Vector2{as<float>(wrap(p2(i,0))), as<float>(wrap(p2(i,1)))}, Vector2{as<float>(wrap(p3(i,0))), as<float>(wrap(p3(i,1)))}, Vector2{as<float>(wrap(p4(i,0))), as<float>(wrap(p4(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_spline_segment_bezier_quadratic_vectorized_(NumericMatrix p1, NumericMatrix c2, NumericMatrix p3, NumericVector thick, List color) {
  for (int i = 0; i < p1.nrow(); i++) {
    DrawSplineSegmentBezierQuadratic(Vector2{as<float>(wrap(p1(i,0))), as<float>(wrap(p1(i,1)))}, Vector2{as<float>(wrap(c2(i,0))), as<float>(wrap(c2(i,1)))}, Vector2{as<float>(wrap(p3(i,0))), as<float>(wrap(p3(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_spline_segment_bezier_cubic_vectorized_(NumericMatrix p1, NumericMatrix c2, NumericMatrix c3, NumericMatrix p4, NumericVector thick, List color) {
  for (int i = 0; i < p1.nrow(); i++) {
    DrawSplineSegmentBezierCubic(Vector2{as<float>(wrap(p1(i,0))), as<float>(wrap(p1(i,1)))}, Vector2{as<float>(wrap(c2(i,0))), as<float>(wrap(c2(i,1)))}, Vector2{as<float>(wrap(c3(i,0))), as<float>(wrap(c3(i,1)))}, Vector2{as<float>(wrap(p4(i,0))), as<float>(wrap(p4(i,1)))}, (float)thick[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_line_3d_vectorized_(NumericMatrix start_pos, NumericMatrix end_pos, List color) {
  for (int i = 0; i < start_pos.nrow(); i++) {
    DrawLine3D(Vector3{as<float>(wrap(start_pos(i,0))), as<float>(wrap(start_pos(i,1))), as<float>(wrap(start_pos(i,2)))}, Vector3{as<float>(wrap(end_pos(i,0))), as<float>(wrap(end_pos(i,1))), as<float>(wrap(end_pos(i,2)))}, as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_circle_3d_vectorized_(NumericMatrix center, NumericVector radius, NumericMatrix rotation_axis, NumericVector rotation_angle, List color) {
  for (int i = 0; i < center.nrow(); i++) {
    DrawCircle3D(Vector3{as<float>(wrap(center(i,0))), as<float>(wrap(center(i,1))), as<float>(wrap(center(i,2)))}, (float)radius[i], Vector3{as<float>(wrap(rotation_axis(i,0))), as<float>(wrap(rotation_axis(i,1))), as<float>(wrap(rotation_axis(i,2)))}, (float)rotation_angle[i], as<Color>(color[i]));
  }
}

// [[Rcpp::export]]
void draw_triangle_3d_vectorized_(NumericMatrix v1, NumericMatrix v2, NumericMatrix v3, List color) {
  for (int i = 0; i < v1.nrow(); i++) {
    DrawTriangle3D(Vector3{as<float>(wrap(v1(i,0))), as<float>(wrap(v1(i,1))), as<float>(wrap(v1(i,2)))}, Vector3{as<float>(wrap(v2(i,0))), as<float>(wrap(v2(i,1))), as<float>(wrap(v2(i,2)))}, Vector3{as<float>(wrap(v3(i,0))), as<float>(wrap(v3(i,1))), as<float>(wrap(v3(i,2)))}, as<Color>(color[i]));
  }
}
