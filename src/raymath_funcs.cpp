// Do not edit by hand.

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]


// [[Rcpp::export]]
float float_clamp_(float value, float min, float max) {
  return Clamp(value, min, max);
}

// [[Rcpp::export]]
float float_lerp_(float start, float end, float amount) {
  return Lerp(start, end, amount);
}

// [[Rcpp::export]]
float float_normalize_(float value, float start, float end) {
  return Normalize(value, start, end);
}

// [[Rcpp::export]]
float float_remap_(float value, float input_start, float input_end, float output_start, float output_end) {
  return Remap(value, input_start, input_end, output_start, output_end);
}

// [[Rcpp::export]]
float float_wrap_(float value, float min, float max) {
  return Wrap(value, min, max);
}

// [[Rcpp::export]]
int float_equals_(float x, float y) {
  return FloatEquals(x, y);
}

// [[Rcpp::export]]
Vector2 vector2_zero_() {
  return Vector2Zero();
}

// [[Rcpp::export]]
Vector2 vector2_one_() {
  return Vector2One();
}

// [[Rcpp::export]]
Vector2 vector2_add_(Vector2 v1, Vector2 v2) {
  return Vector2Add(v1, v2);
}

// [[Rcpp::export]]
Vector2 vector2_add_value_(Vector2 v, float add) {
  return Vector2AddValue(v, add);
}

// [[Rcpp::export]]
Vector2 vector2_subtract_(Vector2 v1, Vector2 v2) {
  return Vector2Subtract(v1, v2);
}

// [[Rcpp::export]]
Vector2 vector2_subtract_value_(Vector2 v, float sub) {
  return Vector2SubtractValue(v, sub);
}

// [[Rcpp::export]]
float vector2_length_(Vector2 v) {
  return Vector2Length(v);
}

// [[Rcpp::export]]
float vector2_length_sqr_(Vector2 v) {
  return Vector2LengthSqr(v);
}

// [[Rcpp::export]]
float vector2_dot_product_(Vector2 v1, Vector2 v2) {
  return Vector2DotProduct(v1, v2);
}

// [[Rcpp::export]]
float vector2_cross_product_(Vector2 v1, Vector2 v2) {
  return Vector2CrossProduct(v1, v2);
}

// [[Rcpp::export]]
float vector2_distance_(Vector2 v1, Vector2 v2) {
  return Vector2Distance(v1, v2);
}

// [[Rcpp::export]]
float vector2_distance_sqr_(Vector2 v1, Vector2 v2) {
  return Vector2DistanceSqr(v1, v2);
}

// [[Rcpp::export]]
float vector2_angle_(Vector2 v1, Vector2 v2) {
  return Vector2Angle(v1, v2);
}

// [[Rcpp::export]]
float vector2_line_angle_(Vector2 start, Vector2 end) {
  return Vector2LineAngle(start, end);
}

// [[Rcpp::export]]
Vector2 vector2_scale_(Vector2 v, float scale) {
  return Vector2Scale(v, scale);
}

// [[Rcpp::export]]
Vector2 vector2_multiply_(Vector2 v1, Vector2 v2) {
  return Vector2Multiply(v1, v2);
}

// [[Rcpp::export]]
Vector2 vector2_negate_(Vector2 v) {
  return Vector2Negate(v);
}

// [[Rcpp::export]]
Vector2 vector2_divide_(Vector2 v1, Vector2 v2) {
  return Vector2Divide(v1, v2);
}

// [[Rcpp::export]]
Vector2 vector2_normalize_(Vector2 v) {
  return Vector2Normalize(v);
}

// [[Rcpp::export]]
Vector2 vector2_transform_(Vector2 v, RaylibMatrix mat) {
  return Vector2Transform(v, mat);
}

// [[Rcpp::export]]
Vector2 vector2_lerp_(Vector2 v1, Vector2 v2, float amount) {
  return Vector2Lerp(v1, v2, amount);
}

// [[Rcpp::export]]
Vector2 vector2_reflect_(Vector2 v, Vector2 normal) {
  return Vector2Reflect(v, normal);
}

// [[Rcpp::export]]
Vector2 vector2_min_(Vector2 v1, Vector2 v2) {
  return Vector2Min(v1, v2);
}

// [[Rcpp::export]]
Vector2 vector2_max_(Vector2 v1, Vector2 v2) {
  return Vector2Max(v1, v2);
}

// [[Rcpp::export]]
Vector2 vector2_rotate_(Vector2 v, float angle) {
  return Vector2Rotate(v, angle);
}

// [[Rcpp::export]]
Vector2 vector2_move_towards_(Vector2 v, Vector2 target, float max_distance) {
  return Vector2MoveTowards(v, target, max_distance);
}

// [[Rcpp::export]]
Vector2 vector2_invert_(Vector2 v) {
  return Vector2Invert(v);
}

// [[Rcpp::export]]
Vector2 vector2_clamp_(Vector2 v, Vector2 min, Vector2 max) {
  return Vector2Clamp(v, min, max);
}

// [[Rcpp::export]]
Vector2 vector2_clamp_value_(Vector2 v, float min, float max) {
  return Vector2ClampValue(v, min, max);
}

// [[Rcpp::export]]
int vector2_equals_(Vector2 p, Vector2 q) {
  return Vector2Equals(p, q);
}

// [[Rcpp::export]]
Vector2 vector2_refract_(Vector2 v, Vector2 n, float r) {
  return Vector2Refract(v, n, r);
}

// [[Rcpp::export]]
Vector3 vector3_zero_() {
  return Vector3Zero();
}

// [[Rcpp::export]]
Vector3 vector3_one_() {
  return Vector3One();
}

// [[Rcpp::export]]
Vector3 vector3_add_(Vector3 v1, Vector3 v2) {
  return Vector3Add(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_add_value_(Vector3 v, float add) {
  return Vector3AddValue(v, add);
}

// [[Rcpp::export]]
Vector3 vector3_subtract_(Vector3 v1, Vector3 v2) {
  return Vector3Subtract(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_subtract_value_(Vector3 v, float sub) {
  return Vector3SubtractValue(v, sub);
}

// [[Rcpp::export]]
Vector3 vector3_scale_(Vector3 v, float scalar) {
  return Vector3Scale(v, scalar);
}

// [[Rcpp::export]]
Vector3 vector3_multiply_(Vector3 v1, Vector3 v2) {
  return Vector3Multiply(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_cross_product_(Vector3 v1, Vector3 v2) {
  return Vector3CrossProduct(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_perpendicular_(Vector3 v) {
  return Vector3Perpendicular(v);
}

// [[Rcpp::export]]
float vector3_length_(Vector3 v) {
  return Vector3Length(v);
}

// [[Rcpp::export]]
float vector3_length_sqr_(Vector3 v) {
  return Vector3LengthSqr(v);
}

// [[Rcpp::export]]
float vector3_dot_product_(Vector3 v1, Vector3 v2) {
  return Vector3DotProduct(v1, v2);
}

// [[Rcpp::export]]
float vector3_distance_(Vector3 v1, Vector3 v2) {
  return Vector3Distance(v1, v2);
}

// [[Rcpp::export]]
float vector3_distance_sqr_(Vector3 v1, Vector3 v2) {
  return Vector3DistanceSqr(v1, v2);
}

// [[Rcpp::export]]
float vector3_angle_(Vector3 v1, Vector3 v2) {
  return Vector3Angle(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_negate_(Vector3 v) {
  return Vector3Negate(v);
}

// [[Rcpp::export]]
Vector3 vector3_divide_(Vector3 v1, Vector3 v2) {
  return Vector3Divide(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_normalize_(Vector3 v) {
  return Vector3Normalize(v);
}

// [[Rcpp::export]]
Vector3 vector3_project_(Vector3 v1, Vector3 v2) {
  return Vector3Project(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_reject_(Vector3 v1, Vector3 v2) {
  return Vector3Reject(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_transform_(Vector3 v, RaylibMatrix mat) {
  return Vector3Transform(v, mat);
}

// [[Rcpp::export]]
Vector3 vector3_rotate_by_quaternion_(Vector3 v, Vector4 q) {
  return Vector3RotateByQuaternion(v, q);
}

// [[Rcpp::export]]
Vector3 vector3_rotate_by_axis_angle_(Vector3 v, Vector3 axis, float angle) {
  return Vector3RotateByAxisAngle(v, axis, angle);
}

// [[Rcpp::export]]
Vector3 vector3_move_towards_(Vector3 v, Vector3 target, float max_distance) {
  return Vector3MoveTowards(v, target, max_distance);
}

// [[Rcpp::export]]
Vector3 vector3_lerp_(Vector3 v1, Vector3 v2, float amount) {
  return Vector3Lerp(v1, v2, amount);
}

// [[Rcpp::export]]
Vector3 vector3_cubic_hermite_(Vector3 v1, Vector3 tangent1, Vector3 v2, Vector3 tangent2, float amount) {
  return Vector3CubicHermite(v1, tangent1, v2, tangent2, amount);
}

// [[Rcpp::export]]
Vector3 vector3_reflect_(Vector3 v, Vector3 normal) {
  return Vector3Reflect(v, normal);
}

// [[Rcpp::export]]
Vector3 vector3_min_(Vector3 v1, Vector3 v2) {
  return Vector3Min(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_max_(Vector3 v1, Vector3 v2) {
  return Vector3Max(v1, v2);
}

// [[Rcpp::export]]
Vector3 vector3_barycenter_(Vector3 p, Vector3 a, Vector3 b, Vector3 c) {
  return Vector3Barycenter(p, a, b, c);
}

// [[Rcpp::export]]
Vector3 vector3_unproject_(Vector3 source, RaylibMatrix projection, RaylibMatrix view) {
  return Vector3Unproject(source, projection, view);
}

// [[Rcpp::export]]
Vector3 vector3_invert_(Vector3 v) {
  return Vector3Invert(v);
}

// [[Rcpp::export]]
Vector3 vector3_clamp_(Vector3 v, Vector3 min, Vector3 max) {
  return Vector3Clamp(v, min, max);
}

// [[Rcpp::export]]
Vector3 vector3_clamp_value_(Vector3 v, float min, float max) {
  return Vector3ClampValue(v, min, max);
}

// [[Rcpp::export]]
int vector3_equals_(Vector3 p, Vector3 q) {
  return Vector3Equals(p, q);
}

// [[Rcpp::export]]
Vector3 vector3_refract_(Vector3 v, Vector3 n, float r) {
  return Vector3Refract(v, n, r);
}

// [[Rcpp::export]]
Vector4 vector4_zero_() {
  return Vector4Zero();
}

// [[Rcpp::export]]
Vector4 vector4_one_() {
  return Vector4One();
}

// [[Rcpp::export]]
Vector4 vector4_add_(Vector4 v1, Vector4 v2) {
  return Vector4Add(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_add_value_(Vector4 v, float add) {
  return Vector4AddValue(v, add);
}

// [[Rcpp::export]]
Vector4 vector4_subtract_(Vector4 v1, Vector4 v2) {
  return Vector4Subtract(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_subtract_value_(Vector4 v, float add) {
  return Vector4SubtractValue(v, add);
}

// [[Rcpp::export]]
float vector4_length_(Vector4 v) {
  return Vector4Length(v);
}

// [[Rcpp::export]]
float vector4_length_sqr_(Vector4 v) {
  return Vector4LengthSqr(v);
}

// [[Rcpp::export]]
float vector4_dot_product_(Vector4 v1, Vector4 v2) {
  return Vector4DotProduct(v1, v2);
}

// [[Rcpp::export]]
float vector4_distance_(Vector4 v1, Vector4 v2) {
  return Vector4Distance(v1, v2);
}

// [[Rcpp::export]]
float vector4_distance_sqr_(Vector4 v1, Vector4 v2) {
  return Vector4DistanceSqr(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_scale_(Vector4 v, float scale) {
  return Vector4Scale(v, scale);
}

// [[Rcpp::export]]
Vector4 vector4_multiply_(Vector4 v1, Vector4 v2) {
  return Vector4Multiply(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_negate_(Vector4 v) {
  return Vector4Negate(v);
}

// [[Rcpp::export]]
Vector4 vector4_divide_(Vector4 v1, Vector4 v2) {
  return Vector4Divide(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_normalize_(Vector4 v) {
  return Vector4Normalize(v);
}

// [[Rcpp::export]]
Vector4 vector4_min_(Vector4 v1, Vector4 v2) {
  return Vector4Min(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_max_(Vector4 v1, Vector4 v2) {
  return Vector4Max(v1, v2);
}

// [[Rcpp::export]]
Vector4 vector4_lerp_(Vector4 v1, Vector4 v2, float amount) {
  return Vector4Lerp(v1, v2, amount);
}

// [[Rcpp::export]]
Vector4 vector4_move_towards_(Vector4 v, Vector4 target, float max_distance) {
  return Vector4MoveTowards(v, target, max_distance);
}

// [[Rcpp::export]]
Vector4 vector4_invert_(Vector4 v) {
  return Vector4Invert(v);
}

// [[Rcpp::export]]
int vector4_equals_(Vector4 p, Vector4 q) {
  return Vector4Equals(p, q);
}

// [[Rcpp::export]]
float matrix_determinant_(RaylibMatrix mat) {
  return MatrixDeterminant(mat);
}

// [[Rcpp::export]]
float matrix_trace_(RaylibMatrix mat) {
  return MatrixTrace(mat);
}

// [[Rcpp::export]]
RaylibMatrix matrix_transpose_(RaylibMatrix mat) {
  return MatrixTranspose(mat);
}

// [[Rcpp::export]]
RaylibMatrix matrix_invert_(RaylibMatrix mat) {
  return MatrixInvert(mat);
}

// [[Rcpp::export]]
RaylibMatrix matrix_identity_() {
  return MatrixIdentity();
}

// [[Rcpp::export]]
RaylibMatrix matrix_add_(RaylibMatrix left, RaylibMatrix right) {
  return MatrixAdd(left, right);
}

// [[Rcpp::export]]
RaylibMatrix matrix_subtract_(RaylibMatrix left, RaylibMatrix right) {
  return MatrixSubtract(left, right);
}

// [[Rcpp::export]]
RaylibMatrix matrix_multiply_(RaylibMatrix left, RaylibMatrix right) {
  return MatrixMultiply(left, right);
}

// [[Rcpp::export]]
RaylibMatrix matrix_multiply_value_(RaylibMatrix left, float value) {
  return MatrixMultiplyValue(left, value);
}

// [[Rcpp::export]]
RaylibMatrix matrix_translate_(float x, float y, float z) {
  return MatrixTranslate(x, y, z);
}

// [[Rcpp::export]]
RaylibMatrix matrix_rotate_(Vector3 axis, float angle) {
  return MatrixRotate(axis, angle);
}

// [[Rcpp::export]]
RaylibMatrix matrix_rotate_x_(float angle) {
  return MatrixRotateX(angle);
}

// [[Rcpp::export]]
RaylibMatrix matrix_rotate_y_(float angle) {
  return MatrixRotateY(angle);
}

// [[Rcpp::export]]
RaylibMatrix matrix_rotate_z_(float angle) {
  return MatrixRotateZ(angle);
}

// [[Rcpp::export]]
RaylibMatrix matrix_rotate_xyz_(Vector3 angle) {
  return MatrixRotateXYZ(angle);
}

// [[Rcpp::export]]
RaylibMatrix matrix_rotate_zyx_(Vector3 angle) {
  return MatrixRotateZYX(angle);
}

// [[Rcpp::export]]
RaylibMatrix matrix_scale_(float x, float y, float z) {
  return MatrixScale(x, y, z);
}

// [[Rcpp::export]]
RaylibMatrix matrix_frustum_(double left, double right, double bottom, double top, double near_plane, double far_plane) {
  return MatrixFrustum(left, right, bottom, top, near_plane, far_plane);
}

// [[Rcpp::export]]
RaylibMatrix matrix_perspective_(double fov_y, double aspect, double near_plane, double far_plane) {
  return MatrixPerspective(fov_y, aspect, near_plane, far_plane);
}

// [[Rcpp::export]]
RaylibMatrix matrix_ortho_(double left, double right, double bottom, double top, double near_plane, double far_plane) {
  return MatrixOrtho(left, right, bottom, top, near_plane, far_plane);
}

// [[Rcpp::export]]
RaylibMatrix matrix_look_at_(Vector3 eye, Vector3 target, Vector3 up) {
  return MatrixLookAt(eye, target, up);
}

// [[Rcpp::export]]
Vector4 quaternion_add_(Vector4 q1, Vector4 q2) {
  return QuaternionAdd(q1, q2);
}

// [[Rcpp::export]]
Vector4 quaternion_add_value_(Vector4 q, float add) {
  return QuaternionAddValue(q, add);
}

// [[Rcpp::export]]
Vector4 quaternion_subtract_(Vector4 q1, Vector4 q2) {
  return QuaternionSubtract(q1, q2);
}

// [[Rcpp::export]]
Vector4 quaternion_subtract_value_(Vector4 q, float sub) {
  return QuaternionSubtractValue(q, sub);
}

// [[Rcpp::export]]
Vector4 quaternion_identity_() {
  return QuaternionIdentity();
}

// [[Rcpp::export]]
float quaternion_length_(Vector4 q) {
  return QuaternionLength(q);
}

// [[Rcpp::export]]
Vector4 quaternion_normalize_(Vector4 q) {
  return QuaternionNormalize(q);
}

// [[Rcpp::export]]
Vector4 quaternion_invert_(Vector4 q) {
  return QuaternionInvert(q);
}

// [[Rcpp::export]]
Vector4 quaternion_multiply_(Vector4 q1, Vector4 q2) {
  return QuaternionMultiply(q1, q2);
}

// [[Rcpp::export]]
Vector4 quaternion_scale_(Vector4 q, float mul) {
  return QuaternionScale(q, mul);
}

// [[Rcpp::export]]
Vector4 quaternion_divide_(Vector4 q1, Vector4 q2) {
  return QuaternionDivide(q1, q2);
}

// [[Rcpp::export]]
Vector4 quaternion_lerp_(Vector4 q1, Vector4 q2, float amount) {
  return QuaternionLerp(q1, q2, amount);
}

// [[Rcpp::export]]
Vector4 quaternion_nlerp_(Vector4 q1, Vector4 q2, float amount) {
  return QuaternionNlerp(q1, q2, amount);
}

// [[Rcpp::export]]
Vector4 quaternion_slerp_(Vector4 q1, Vector4 q2, float amount) {
  return QuaternionSlerp(q1, q2, amount);
}

// [[Rcpp::export]]
Vector4 quaternion_cubic_hermite_spline_(Vector4 q1, Vector4 out_tangent1, Vector4 q2, Vector4 in_tangent2, float t) {
  return QuaternionCubicHermiteSpline(q1, out_tangent1, q2, in_tangent2, t);
}

// [[Rcpp::export]]
Vector4 quaternion_from_vector3_to_vector3_(Vector3 from, Vector3 to) {
  return QuaternionFromVector3ToVector3(from, to);
}

// [[Rcpp::export]]
Vector4 quaternion_from_matrix_(RaylibMatrix mat) {
  return QuaternionFromMatrix(mat);
}

// [[Rcpp::export]]
RaylibMatrix quaternion_to_matrix_(Vector4 q) {
  return QuaternionToMatrix(q);
}

// [[Rcpp::export]]
Vector4 quaternion_from_axis_angle_(Vector3 axis, float angle) {
  return QuaternionFromAxisAngle(axis, angle);
}

// [[Rcpp::export]]
Vector4 quaternion_from_euler_(float pitch, float yaw, float roll) {
  return QuaternionFromEuler(pitch, yaw, roll);
}

// [[Rcpp::export]]
Vector3 quaternion_to_euler_(Vector4 q) {
  return QuaternionToEuler(q);
}

// [[Rcpp::export]]
Vector4 quaternion_transform_(Vector4 q, RaylibMatrix mat) {
  return QuaternionTransform(q, mat);
}

// [[Rcpp::export]]
int quaternion_equals_(Vector4 p, Vector4 q) {
  return QuaternionEquals(p, q);
}

// [[Rcpp::export]]
RaylibMatrix matrix_compose_(Vector3 translation, Vector4 rotation, Vector3 scale) {
  return MatrixCompose(translation, rotation, scale);
}

