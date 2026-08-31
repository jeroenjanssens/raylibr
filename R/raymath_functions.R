# Do not edit by hand.

#' Float Clamp
#'
#' @param value A number.
#' @param min A number.
#' @param max A number.
#'
#' @return A number
#'
#' @family float functions
#'
#' @examples
#' \dontrun{
#' float_clamp(0.0, 0.0, 0.0)
#' }
#'
#' @export
float_clamp <- function(value, min, max) {
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(min)) abort(paste0('`min` must be a number, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_float(max)) abort(paste0('`max` must be a number, not ', friendly_typeof(max), '.'), call = NULL)
  float_clamp_(value, min, max)
}

#' Float Lerp
#'
#' @param start A number.
#' @param end A number.
#' @param amount A number.
#'
#' @return A number
#'
#' @family float functions
#'
#' @examples
#' \dontrun{
#' float_lerp(0.0, 0.0, 0.0)
#' }
#'
#' @export
float_lerp <- function(start, end, amount) {
  if (!is_float(start)) abort(paste0('`start` must be a number, not ', friendly_typeof(start), '.'), call = NULL)
  if (!is_float(end)) abort(paste0('`end` must be a number, not ', friendly_typeof(end), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  float_lerp_(start, end, amount)
}

#' Float Normalize
#'
#' @param value A number.
#' @param start A number.
#' @param end A number.
#'
#' @return A number
#'
#' @family float functions
#'
#' @examples
#' \dontrun{
#' float_normalize(0.0, 0.0, 0.0)
#' }
#'
#' @export
float_normalize <- function(value, start, end) {
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(start)) abort(paste0('`start` must be a number, not ', friendly_typeof(start), '.'), call = NULL)
  if (!is_float(end)) abort(paste0('`end` must be a number, not ', friendly_typeof(end), '.'), call = NULL)
  float_normalize_(value, start, end)
}

#' Float Remap
#'
#' @param value A number.
#' @param input_start A number.
#' @param input_end A number.
#' @param output_start A number.
#' @param output_end A number.
#'
#' @return A number
#'
#' @family float functions
#'
#' @examples
#' \dontrun{
#' float_remap(0.0, 0.0, 0.0, 0.0, 0.0)
#' }
#'
#' @export
float_remap <- function(value, input_start, input_end, output_start, output_end) {
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(input_start)) abort(paste0('`input_start` must be a number, not ', friendly_typeof(input_start), '.'), call = NULL)
  if (!is_float(input_end)) abort(paste0('`input_end` must be a number, not ', friendly_typeof(input_end), '.'), call = NULL)
  if (!is_float(output_start)) abort(paste0('`output_start` must be a number, not ', friendly_typeof(output_start), '.'), call = NULL)
  if (!is_float(output_end)) abort(paste0('`output_end` must be a number, not ', friendly_typeof(output_end), '.'), call = NULL)
  float_remap_(value, input_start, input_end, output_start, output_end)
}

#' Float Wrap
#'
#' @param value A number.
#' @param min A number.
#' @param max A number.
#'
#' @return A number
#'
#' @family float functions
#'
#' @examples
#' \dontrun{
#' float_wrap(0.0, 0.0, 0.0)
#' }
#'
#' @export
float_wrap <- function(value, min, max) {
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_float(min)) abort(paste0('`min` must be a number, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_float(max)) abort(paste0('`max` must be a number, not ', friendly_typeof(max), '.'), call = NULL)
  float_wrap_(value, min, max)
}

#' Float Equals
#'
#' @param x A number.
#' @param y A number.
#'
#' @return An integer
#'
#' @family float functions
#'
#' @examples
#' \dontrun{
#' float_equals(0.0, 0.0)
#' }
#'
#' @export
float_equals <- function(x, y) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  float_equals_(x, y)
}

#' Vector2 Zero
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_zero()
#' }
#'
#' @export
vector2_zero <- function() {
  vector2_zero_()
}

#' Vector2 One
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_one()
#' }
#'
#' @export
vector2_one <- function() {
  vector2_one_()
}

#' Vector2 Add
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_add(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_add <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_add_(v1, v2)
}

#' Vector2 Add Value
#'
#' @param v A numeric vector of length 2.
#' @param add A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_add_value(c(100, 100), 0.0)
#' }
#'
#' @export
vector2_add_value <- function(v, add) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(add)) abort(paste0('`add` must be a number, not ', friendly_typeof(add), '.'), call = NULL)
  vector2_add_value_(v, add)
}

#' Vector2 Subtract
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_subtract(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_subtract <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_subtract_(v1, v2)
}

#' Vector2 Subtract Value
#'
#' @param v A numeric vector of length 2.
#' @param sub A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_subtract_value(c(100, 100), 0.0)
#' }
#'
#' @export
vector2_subtract_value <- function(v, sub) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(sub)) abort(paste0('`sub` must be a number, not ', friendly_typeof(sub), '.'), call = NULL)
  vector2_subtract_value_(v, sub)
}

#' Vector2 Length
#'
#' @param v A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_length(c(100, 100))
#' }
#'
#' @export
vector2_length <- function(v) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  vector2_length_(v)
}

#' Vector2 Length Sqr
#'
#' @param v A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_length_sqr(c(100, 100))
#' }
#'
#' @export
vector2_length_sqr <- function(v) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  vector2_length_sqr_(v)
}

#' Vector2 Dot Product
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_dot_product(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_dot_product <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_dot_product_(v1, v2)
}

#' Vector2 Cross Product
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_cross_product(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_cross_product <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_cross_product_(v1, v2)
}

#' Vector2 Distance
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_distance(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_distance <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_distance_(v1, v2)
}

#' Vector2 Distance Sqr
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_distance_sqr(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_distance_sqr <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_distance_sqr_(v1, v2)
}

#' Vector2 Angle
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_angle(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_angle <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_angle_(v1, v2)
}

#' Vector2 Line Angle
#'
#' @param start A numeric vector of length 2.
#' @param end A numeric vector of length 2.
#'
#' @return A number
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_line_angle(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_line_angle <- function(start, end) {
  if (!is_vector_2(start)) abort(paste0('`start` must be a numeric vector of length 2, not ', friendly_typeof(start), '.'), call = NULL)
  if (!is_vector_2(end)) abort(paste0('`end` must be a numeric vector of length 2, not ', friendly_typeof(end), '.'), call = NULL)
  vector2_line_angle_(start, end)
}

#' Vector2 Scale
#'
#' @param v A numeric vector of length 2.
#' @param scale A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_scale(c(100, 100), 1.0)
#' }
#'
#' @export
vector2_scale <- function(v, scale) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  vector2_scale_(v, scale)
}

#' Vector2 Multiply
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_multiply(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_multiply <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_multiply_(v1, v2)
}

#' Vector2 Negate
#'
#' @param v A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_negate(c(100, 100))
#' }
#'
#' @export
vector2_negate <- function(v) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  vector2_negate_(v)
}

#' Vector2 Divide
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_divide(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_divide <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_divide_(v1, v2)
}

#' Vector2 Normalize
#'
#' @param v A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_normalize(c(100, 100))
#' }
#'
#' @export
vector2_normalize <- function(v) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  vector2_normalize_(v)
}

#' Vector2 Transform
#'
#' @param v A numeric vector of length 2.
#' @param mat A 4x4 numeric matrix.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_transform(c(100, 100), diag(4))
#' }
#'
#' @export
vector2_transform <- function(v, mat) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  vector2_transform_(v, mat)
}

#' Vector2 Lerp
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#' @param amount A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_lerp(c(100, 100), c(100, 100), 0.0)
#' }
#'
#' @export
vector2_lerp <- function(v1, v2, amount) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  vector2_lerp_(v1, v2, amount)
}

#' Vector2 Reflect
#'
#' @param v A numeric vector of length 2.
#' @param normal A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_reflect(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_reflect <- function(v, normal) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_2(normal)) abort(paste0('`normal` must be a numeric vector of length 2, not ', friendly_typeof(normal), '.'), call = NULL)
  vector2_reflect_(v, normal)
}

#' Vector2 Min
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_min(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_min <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_min_(v1, v2)
}

#' Vector2 Max
#'
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_max(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_max <- function(v1, v2) {
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  vector2_max_(v1, v2)
}

#' Vector2 Rotate
#'
#' @param v A numeric vector of length 2.
#' @param angle A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_rotate(c(100, 100), 0.0)
#' }
#'
#' @export
vector2_rotate <- function(v, angle) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  vector2_rotate_(v, angle)
}

#' Vector2 Move Towards
#'
#' @param v A numeric vector of length 2.
#' @param target A numeric vector of length 2.
#' @param max_distance A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_move_towards(c(100, 100), c(100, 100), 0.0)
#' }
#'
#' @export
vector2_move_towards <- function(v, target, max_distance) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_2(target)) abort(paste0('`target` must be a numeric vector of length 2, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_float(max_distance)) abort(paste0('`max_distance` must be a number, not ', friendly_typeof(max_distance), '.'), call = NULL)
  vector2_move_towards_(v, target, max_distance)
}

#' Vector2 Invert
#'
#' @param v A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_invert(c(100, 100))
#' }
#'
#' @export
vector2_invert <- function(v) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  vector2_invert_(v)
}

#' Vector2 Clamp
#'
#' @param v A numeric vector of length 2.
#' @param min A numeric vector of length 2.
#' @param max A numeric vector of length 2.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_clamp(c(100, 100), c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_clamp <- function(v, min, max) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_2(min)) abort(paste0('`min` must be a numeric vector of length 2, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_vector_2(max)) abort(paste0('`max` must be a numeric vector of length 2, not ', friendly_typeof(max), '.'), call = NULL)
  vector2_clamp_(v, min, max)
}

#' Vector2 Clamp Value
#'
#' @param v A numeric vector of length 2.
#' @param min A number.
#' @param max A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_clamp_value(c(100, 100), 0.0, 0.0)
#' }
#'
#' @export
vector2_clamp_value <- function(v, min, max) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(min)) abort(paste0('`min` must be a number, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_float(max)) abort(paste0('`max` must be a number, not ', friendly_typeof(max), '.'), call = NULL)
  vector2_clamp_value_(v, min, max)
}

#' Vector2 Equals
#'
#' @param p A numeric vector of length 2.
#' @param q A numeric vector of length 2.
#'
#' @return An integer
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_equals(c(100, 100), c(100, 100))
#' }
#'
#' @export
vector2_equals <- function(p, q) {
  if (!is_vector_2(p)) abort(paste0('`p` must be a numeric vector of length 2, not ', friendly_typeof(p), '.'), call = NULL)
  if (!is_vector_2(q)) abort(paste0('`q` must be a numeric vector of length 2, not ', friendly_typeof(q), '.'), call = NULL)
  vector2_equals_(p, q)
}

#' Vector2 Refract
#'
#' @param v A numeric vector of length 2.
#' @param n A numeric vector of length 2.
#' @param r A number.
#'
#' @return A numeric vector of length 2
#'
#' @family vector2 functions
#'
#' @examples
#' \dontrun{
#' vector2_refract(c(100, 100), c(100, 100), 0.0)
#' }
#'
#' @export
vector2_refract <- function(v, n, r) {
  if (!is_vector_2(v)) abort(paste0('`v` must be a numeric vector of length 2, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_2(n)) abort(paste0('`n` must be a numeric vector of length 2, not ', friendly_typeof(n), '.'), call = NULL)
  if (!is_float(r)) abort(paste0('`r` must be a number, not ', friendly_typeof(r), '.'), call = NULL)
  vector2_refract_(v, n, r)
}

#' Vector3 Zero
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_zero()
#' }
#'
#' @export
vector3_zero <- function() {
  vector3_zero_()
}

#' Vector3 One
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_one()
#' }
#'
#' @export
vector3_one <- function() {
  vector3_one_()
}

#' Vector3 Add
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_add(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_add <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_add_(v1, v2)
}

#' Vector3 Add Value
#'
#' @param v A numeric vector of length 3.
#' @param add A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_add_value(c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_add_value <- function(v, add) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(add)) abort(paste0('`add` must be a number, not ', friendly_typeof(add), '.'), call = NULL)
  vector3_add_value_(v, add)
}

#' Vector3 Subtract
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_subtract(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_subtract <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_subtract_(v1, v2)
}

#' Vector3 Subtract Value
#'
#' @param v A numeric vector of length 3.
#' @param sub A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_subtract_value(c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_subtract_value <- function(v, sub) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(sub)) abort(paste0('`sub` must be a number, not ', friendly_typeof(sub), '.'), call = NULL)
  vector3_subtract_value_(v, sub)
}

#' Vector3 Scale
#'
#' @param v A numeric vector of length 3.
#' @param scalar A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_scale(c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_scale <- function(v, scalar) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(scalar)) abort(paste0('`scalar` must be a number, not ', friendly_typeof(scalar), '.'), call = NULL)
  vector3_scale_(v, scalar)
}

#' Vector3 Multiply
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_multiply(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_multiply <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_multiply_(v1, v2)
}

#' Vector3 Cross Product
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_cross_product(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_cross_product <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_cross_product_(v1, v2)
}

#' Vector3 Perpendicular
#'
#' @param v A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_perpendicular(c(0, 0, 0))
#' }
#'
#' @export
vector3_perpendicular <- function(v) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  vector3_perpendicular_(v)
}

#' Vector3 Length
#'
#' @param v A numeric vector of length 3.
#'
#' @return A number
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_length(c(0, 0, 0))
#' }
#'
#' @export
vector3_length <- function(v) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  vector3_length_(v)
}

#' Vector3 Length Sqr
#'
#' @param v A numeric vector of length 3.
#'
#' @return A number
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_length_sqr(c(0, 0, 0))
#' }
#'
#' @export
vector3_length_sqr <- function(v) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  vector3_length_sqr_(v)
}

#' Vector3 Dot Product
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A number
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_dot_product(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_dot_product <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_dot_product_(v1, v2)
}

#' Vector3 Distance
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A number
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_distance(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_distance <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_distance_(v1, v2)
}

#' Vector3 Distance Sqr
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A number
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_distance_sqr(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_distance_sqr <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_distance_sqr_(v1, v2)
}

#' Vector3 Angle
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A number
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_angle(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_angle <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_angle_(v1, v2)
}

#' Vector3 Negate
#'
#' @param v A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_negate(c(0, 0, 0))
#' }
#'
#' @export
vector3_negate <- function(v) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  vector3_negate_(v)
}

#' Vector3 Divide
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_divide(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_divide <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_divide_(v1, v2)
}

#' Vector3 Normalize
#'
#' @param v A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_normalize(c(0, 0, 0))
#' }
#'
#' @export
vector3_normalize <- function(v) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  vector3_normalize_(v)
}

#' Vector3 Project
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_project(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_project <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_project_(v1, v2)
}

#' Vector3 Reject
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_reject(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_reject <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_reject_(v1, v2)
}

#' Vector3 Transform
#'
#' @param v A numeric vector of length 3.
#' @param mat A 4x4 numeric matrix.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_transform(c(0, 0, 0), diag(4))
#' }
#'
#' @export
vector3_transform <- function(v, mat) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  vector3_transform_(v, mat)
}

#' Vector3 Rotate By Quaternion
#'
#' @param v A numeric vector of length 3.
#' @param q A numeric vector of length 4.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_rotate_by_quaternion(c(0, 0, 0), c(0, 0, 0, 1))
#' }
#'
#' @export
vector3_rotate_by_quaternion <- function(v, q) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  vector3_rotate_by_quaternion_(v, q)
}

#' Vector3 Rotate By Axis Angle
#'
#' @param v A numeric vector of length 3.
#' @param axis A numeric vector of length 3.
#' @param angle A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_rotate_by_axis_angle(c(0, 0, 0), c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_rotate_by_axis_angle <- function(v, axis, angle) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_3(axis)) abort(paste0('`axis` must be a numeric vector of length 3, not ', friendly_typeof(axis), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  vector3_rotate_by_axis_angle_(v, axis, angle)
}

#' Vector3 Move Towards
#'
#' @param v A numeric vector of length 3.
#' @param target A numeric vector of length 3.
#' @param max_distance A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_move_towards(c(0, 0, 0), c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_move_towards <- function(v, target, max_distance) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_3(target)) abort(paste0('`target` must be a numeric vector of length 3, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_float(max_distance)) abort(paste0('`max_distance` must be a number, not ', friendly_typeof(max_distance), '.'), call = NULL)
  vector3_move_towards_(v, target, max_distance)
}

#' Vector3 Lerp
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#' @param amount A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_lerp(c(0, 0, 0), c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_lerp <- function(v1, v2, amount) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  vector3_lerp_(v1, v2, amount)
}

#' Vector3 Cubic Hermite
#'
#' @param v1 A numeric vector of length 3.
#' @param tangent1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#' @param tangent2 A numeric vector of length 3.
#' @param amount A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_cubic_hermite(c(0, 0, 0), c(0, 0, 0), c(0, 0, 0), c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_cubic_hermite <- function(v1, tangent1, v2, tangent2, amount) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(tangent1)) abort(paste0('`tangent1` must be a numeric vector of length 3, not ', friendly_typeof(tangent1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_vector_3(tangent2)) abort(paste0('`tangent2` must be a numeric vector of length 3, not ', friendly_typeof(tangent2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  vector3_cubic_hermite_(v1, tangent1, v2, tangent2, amount)
}

#' Vector3 Reflect
#'
#' @param v A numeric vector of length 3.
#' @param normal A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_reflect(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_reflect <- function(v, normal) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_3(normal)) abort(paste0('`normal` must be a numeric vector of length 3, not ', friendly_typeof(normal), '.'), call = NULL)
  vector3_reflect_(v, normal)
}

#' Vector3 Min
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_min(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_min <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_min_(v1, v2)
}

#' Vector3 Max
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_max(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_max <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_max_(v1, v2)
}

#' Vector3 Barycenter
#'
#' @param p A numeric vector of length 3.
#' @param a A numeric vector of length 3.
#' @param b A numeric vector of length 3.
#' @param c A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_barycenter(c(0, 0, 0), c(0, 0, 0), c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_barycenter <- function(p, a, b, c) {
  if (!is_vector_3(p)) abort(paste0('`p` must be a numeric vector of length 3, not ', friendly_typeof(p), '.'), call = NULL)
  if (!is_vector_3(a)) abort(paste0('`a` must be a numeric vector of length 3, not ', friendly_typeof(a), '.'), call = NULL)
  if (!is_vector_3(b)) abort(paste0('`b` must be a numeric vector of length 3, not ', friendly_typeof(b), '.'), call = NULL)
  if (!is_vector_3(c)) abort(paste0('`c` must be a numeric vector of length 3, not ', friendly_typeof(c), '.'), call = NULL)
  vector3_barycenter_(p, a, b, c)
}

#' Vector3 Unproject
#'
#' @param source A numeric vector of length 3.
#' @param projection A 4x4 numeric matrix.
#' @param view A 4x4 numeric matrix.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_unproject(c(0, 0, 0), diag(4), diag(4))
#' }
#'
#' @export
vector3_unproject <- function(source, projection, view) {
  if (!is_vector_3(source)) abort(paste0('`source` must be a numeric vector of length 3, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_raylib_matrix(projection)) abort(paste0('`projection` must be a 4x4 numeric matrix, not ', friendly_typeof(projection), '.'), call = NULL)
  if (!is_raylib_matrix(view)) abort(paste0('`view` must be a 4x4 numeric matrix, not ', friendly_typeof(view), '.'), call = NULL)
  vector3_unproject_(source, projection, view)
}

#' Vector3 Invert
#'
#' @param v A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_invert(c(0, 0, 0))
#' }
#'
#' @export
vector3_invert <- function(v) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  vector3_invert_(v)
}

#' Vector3 Clamp
#'
#' @param v A numeric vector of length 3.
#' @param min A numeric vector of length 3.
#' @param max A numeric vector of length 3.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_clamp(c(0, 0, 0), c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_clamp <- function(v, min, max) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_3(min)) abort(paste0('`min` must be a numeric vector of length 3, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_vector_3(max)) abort(paste0('`max` must be a numeric vector of length 3, not ', friendly_typeof(max), '.'), call = NULL)
  vector3_clamp_(v, min, max)
}

#' Vector3 Clamp Value
#'
#' @param v A numeric vector of length 3.
#' @param min A number.
#' @param max A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_clamp_value(c(0, 0, 0), 0.0, 0.0)
#' }
#'
#' @export
vector3_clamp_value <- function(v, min, max) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(min)) abort(paste0('`min` must be a number, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_float(max)) abort(paste0('`max` must be a number, not ', friendly_typeof(max), '.'), call = NULL)
  vector3_clamp_value_(v, min, max)
}

#' Vector3 Equals
#'
#' @param p A numeric vector of length 3.
#' @param q A numeric vector of length 3.
#'
#' @return An integer
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_equals(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
vector3_equals <- function(p, q) {
  if (!is_vector_3(p)) abort(paste0('`p` must be a numeric vector of length 3, not ', friendly_typeof(p), '.'), call = NULL)
  if (!is_vector_3(q)) abort(paste0('`q` must be a numeric vector of length 3, not ', friendly_typeof(q), '.'), call = NULL)
  vector3_equals_(p, q)
}

#' Vector3 Refract
#'
#' @param v A numeric vector of length 3.
#' @param n A numeric vector of length 3.
#' @param r A number.
#'
#' @return A numeric vector of length 3
#'
#' @family vector3 functions
#'
#' @examples
#' \dontrun{
#' vector3_refract(c(0, 0, 0), c(0, 0, 0), 0.0)
#' }
#'
#' @export
vector3_refract <- function(v, n, r) {
  if (!is_vector_3(v)) abort(paste0('`v` must be a numeric vector of length 3, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_3(n)) abort(paste0('`n` must be a numeric vector of length 3, not ', friendly_typeof(n), '.'), call = NULL)
  if (!is_float(r)) abort(paste0('`r` must be a number, not ', friendly_typeof(r), '.'), call = NULL)
  vector3_refract_(v, n, r)
}

#' Vector4 Zero
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_zero()
#' }
#'
#' @export
vector4_zero <- function() {
  vector4_zero_()
}

#' Vector4 One
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_one()
#' }
#'
#' @export
vector4_one <- function() {
  vector4_one_()
}

#' Vector4 Add
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_add(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_add <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_add_(v1, v2)
}

#' Vector4 Add Value
#'
#' @param v A numeric vector of length 4.
#' @param add A number.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_add_value(c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
vector4_add_value <- function(v, add) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(add)) abort(paste0('`add` must be a number, not ', friendly_typeof(add), '.'), call = NULL)
  vector4_add_value_(v, add)
}

#' Vector4 Subtract
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_subtract(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_subtract <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_subtract_(v1, v2)
}

#' Vector4 Subtract Value
#'
#' @param v A numeric vector of length 4.
#' @param add A number.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_subtract_value(c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
vector4_subtract_value <- function(v, add) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(add)) abort(paste0('`add` must be a number, not ', friendly_typeof(add), '.'), call = NULL)
  vector4_subtract_value_(v, add)
}

#' Vector4 Length
#'
#' @param v A numeric vector of length 4.
#'
#' @return A number
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_length(c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_length <- function(v) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  vector4_length_(v)
}

#' Vector4 Length Sqr
#'
#' @param v A numeric vector of length 4.
#'
#' @return A number
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_length_sqr(c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_length_sqr <- function(v) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  vector4_length_sqr_(v)
}

#' Vector4 Dot Product
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A number
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_dot_product(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_dot_product <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_dot_product_(v1, v2)
}

#' Vector4 Distance
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A number
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_distance(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_distance <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_distance_(v1, v2)
}

#' Vector4 Distance Sqr
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A number
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_distance_sqr(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_distance_sqr <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_distance_sqr_(v1, v2)
}

#' Vector4 Scale
#'
#' @param v A numeric vector of length 4.
#' @param scale A number.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_scale(c(0, 0, 0, 1), 1.0)
#' }
#'
#' @export
vector4_scale <- function(v, scale) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_float(scale)) abort(paste0('`scale` must be a number, not ', friendly_typeof(scale), '.'), call = NULL)
  vector4_scale_(v, scale)
}

#' Vector4 Multiply
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_multiply(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_multiply <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_multiply_(v1, v2)
}

#' Vector4 Negate
#'
#' @param v A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_negate(c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_negate <- function(v) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  vector4_negate_(v)
}

#' Vector4 Divide
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_divide(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_divide <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_divide_(v1, v2)
}

#' Vector4 Normalize
#'
#' @param v A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_normalize(c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_normalize <- function(v) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  vector4_normalize_(v)
}

#' Vector4 Min
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_min(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_min <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_min_(v1, v2)
}

#' Vector4 Max
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_max(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_max <- function(v1, v2) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  vector4_max_(v1, v2)
}

#' Vector4 Lerp
#'
#' @param v1 A numeric vector of length 4.
#' @param v2 A numeric vector of length 4.
#' @param amount A number.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_lerp(c(0, 0, 0, 1), c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
vector4_lerp <- function(v1, v2, amount) {
  if (!is_vector_4(v1)) abort(paste0('`v1` must be a numeric vector of length 4, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_4(v2)) abort(paste0('`v2` must be a numeric vector of length 4, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  vector4_lerp_(v1, v2, amount)
}

#' Vector4 Move Towards
#'
#' @param v A numeric vector of length 4.
#' @param target A numeric vector of length 4.
#' @param max_distance A number.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_move_towards(c(0, 0, 0, 1), c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
vector4_move_towards <- function(v, target, max_distance) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  if (!is_vector_4(target)) abort(paste0('`target` must be a numeric vector of length 4, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_float(max_distance)) abort(paste0('`max_distance` must be a number, not ', friendly_typeof(max_distance), '.'), call = NULL)
  vector4_move_towards_(v, target, max_distance)
}

#' Vector4 Invert
#'
#' @param v A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_invert(c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_invert <- function(v) {
  if (!is_vector_4(v)) abort(paste0('`v` must be a numeric vector of length 4, not ', friendly_typeof(v), '.'), call = NULL)
  vector4_invert_(v)
}

#' Vector4 Equals
#'
#' @param p A numeric vector of length 4.
#' @param q A numeric vector of length 4.
#'
#' @return An integer
#'
#' @family vector4 functions
#'
#' @examples
#' \dontrun{
#' vector4_equals(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
vector4_equals <- function(p, q) {
  if (!is_vector_4(p)) abort(paste0('`p` must be a numeric vector of length 4, not ', friendly_typeof(p), '.'), call = NULL)
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  vector4_equals_(p, q)
}

#' Matrix Determinant
#'
#' @param mat A 4x4 numeric matrix.
#'
#' @return A number
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_determinant(diag(4))
#' }
#'
#' @export
matrix_determinant <- function(mat) {
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  matrix_determinant_(mat)
}

#' Matrix Trace
#'
#' @param mat A 4x4 numeric matrix.
#'
#' @return A number
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_trace(diag(4))
#' }
#'
#' @export
matrix_trace <- function(mat) {
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  matrix_trace_(mat)
}

#' Matrix Transpose
#'
#' @param mat A 4x4 numeric matrix.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_transpose(diag(4))
#' }
#'
#' @export
matrix_transpose <- function(mat) {
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  matrix_transpose_(mat)
}

#' Matrix Invert
#'
#' @param mat A 4x4 numeric matrix.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_invert(diag(4))
#' }
#'
#' @export
matrix_invert <- function(mat) {
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  matrix_invert_(mat)
}

#' Matrix Identity
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_identity()
#' }
#'
#' @export
matrix_identity <- function() {
  matrix_identity_()
}

#' Matrix Add
#'
#' @param left A 4x4 numeric matrix.
#' @param right A 4x4 numeric matrix.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_add(diag(4), diag(4))
#' }
#'
#' @export
matrix_add <- function(left, right) {
  if (!is_raylib_matrix(left)) abort(paste0('`left` must be a 4x4 numeric matrix, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_raylib_matrix(right)) abort(paste0('`right` must be a 4x4 numeric matrix, not ', friendly_typeof(right), '.'), call = NULL)
  matrix_add_(left, right)
}

#' Matrix Subtract
#'
#' @param left A 4x4 numeric matrix.
#' @param right A 4x4 numeric matrix.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_subtract(diag(4), diag(4))
#' }
#'
#' @export
matrix_subtract <- function(left, right) {
  if (!is_raylib_matrix(left)) abort(paste0('`left` must be a 4x4 numeric matrix, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_raylib_matrix(right)) abort(paste0('`right` must be a 4x4 numeric matrix, not ', friendly_typeof(right), '.'), call = NULL)
  matrix_subtract_(left, right)
}

#' Matrix Multiply
#'
#' @param left A 4x4 numeric matrix.
#' @param right A 4x4 numeric matrix.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_multiply(diag(4), diag(4))
#' }
#'
#' @export
matrix_multiply <- function(left, right) {
  if (!is_raylib_matrix(left)) abort(paste0('`left` must be a 4x4 numeric matrix, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_raylib_matrix(right)) abort(paste0('`right` must be a 4x4 numeric matrix, not ', friendly_typeof(right), '.'), call = NULL)
  matrix_multiply_(left, right)
}

#' Matrix Multiply Value
#'
#' @param left A 4x4 numeric matrix.
#' @param value A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_multiply_value(diag(4), 0.0)
#' }
#'
#' @export
matrix_multiply_value <- function(left, value) {
  if (!is_raylib_matrix(left)) abort(paste0('`left` must be a 4x4 numeric matrix, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  matrix_multiply_value_(left, value)
}

#' Matrix Translate
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_translate(0.0, 0.0, 0.0)
#' }
#'
#' @export
matrix_translate <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  matrix_translate_(x, y, z)
}

#' Matrix Rotate
#'
#' @param axis A numeric vector of length 3.
#' @param angle A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_rotate(c(0, 0, 0), 0.0)
#' }
#'
#' @export
matrix_rotate <- function(axis, angle) {
  if (!is_vector_3(axis)) abort(paste0('`axis` must be a numeric vector of length 3, not ', friendly_typeof(axis), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  matrix_rotate_(axis, angle)
}

#' Matrix Rotate X
#'
#' @param angle A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_rotate_x(0.0)
#' }
#'
#' @export
matrix_rotate_x <- function(angle) {
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  matrix_rotate_x_(angle)
}

#' Matrix Rotate Y
#'
#' @param angle A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_rotate_y(0.0)
#' }
#'
#' @export
matrix_rotate_y <- function(angle) {
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  matrix_rotate_y_(angle)
}

#' Matrix Rotate Z
#'
#' @param angle A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_rotate_z(0.0)
#' }
#'
#' @export
matrix_rotate_z <- function(angle) {
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  matrix_rotate_z_(angle)
}

#' Matrix Rotate Xyz
#'
#' @param angle A numeric vector of length 3.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_rotate_xyz(c(0, 0, 0))
#' }
#'
#' @export
matrix_rotate_xyz <- function(angle) {
  if (!is_vector_3(angle)) abort(paste0('`angle` must be a numeric vector of length 3, not ', friendly_typeof(angle), '.'), call = NULL)
  matrix_rotate_xyz_(angle)
}

#' Matrix Rotate Zyx
#'
#' @param angle A numeric vector of length 3.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_rotate_zyx(c(0, 0, 0))
#' }
#'
#' @export
matrix_rotate_zyx <- function(angle) {
  if (!is_vector_3(angle)) abort(paste0('`angle` must be a numeric vector of length 3, not ', friendly_typeof(angle), '.'), call = NULL)
  matrix_rotate_zyx_(angle)
}

#' Matrix Scale
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_scale(0.0, 0.0, 0.0)
#' }
#'
#' @export
matrix_scale <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  matrix_scale_(x, y, z)
}

#' Matrix Frustum
#'
#' @param left A number.
#' @param right A number.
#' @param bottom A number.
#' @param top A number.
#' @param near_plane A number.
#' @param far_plane A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_frustum(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
#' }
#'
#' @export
matrix_frustum <- function(left, right, bottom, top, near_plane, far_plane) {
  if (!is_float(left)) abort(paste0('`left` must be a number, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_float(right)) abort(paste0('`right` must be a number, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_float(bottom)) abort(paste0('`bottom` must be a number, not ', friendly_typeof(bottom), '.'), call = NULL)
  if (!is_float(top)) abort(paste0('`top` must be a number, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_float(near_plane)) abort(paste0('`near_plane` must be a number, not ', friendly_typeof(near_plane), '.'), call = NULL)
  if (!is_float(far_plane)) abort(paste0('`far_plane` must be a number, not ', friendly_typeof(far_plane), '.'), call = NULL)
  matrix_frustum_(left, right, bottom, top, near_plane, far_plane)
}

#' Matrix Perspective
#'
#' @param fov_y A number.
#' @param aspect A number.
#' @param near_plane A number.
#' @param far_plane A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_perspective(70.0, 1.78, 0.0, 0.0)
#' }
#'
#' @export
matrix_perspective <- function(fov_y, aspect, near_plane, far_plane) {
  if (!is_float(fov_y)) abort(paste0('`fov_y` must be a number, not ', friendly_typeof(fov_y), '.'), call = NULL)
  if (!is_float(aspect)) abort(paste0('`aspect` must be a number, not ', friendly_typeof(aspect), '.'), call = NULL)
  if (!is_float(near_plane)) abort(paste0('`near_plane` must be a number, not ', friendly_typeof(near_plane), '.'), call = NULL)
  if (!is_float(far_plane)) abort(paste0('`far_plane` must be a number, not ', friendly_typeof(far_plane), '.'), call = NULL)
  matrix_perspective_(fov_y, aspect, near_plane, far_plane)
}

#' Matrix Ortho
#'
#' @param left A number.
#' @param right A number.
#' @param bottom A number.
#' @param top A number.
#' @param near_plane A number.
#' @param far_plane A number.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_ortho(0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
#' }
#'
#' @export
matrix_ortho <- function(left, right, bottom, top, near_plane, far_plane) {
  if (!is_float(left)) abort(paste0('`left` must be a number, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_float(right)) abort(paste0('`right` must be a number, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_float(bottom)) abort(paste0('`bottom` must be a number, not ', friendly_typeof(bottom), '.'), call = NULL)
  if (!is_float(top)) abort(paste0('`top` must be a number, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_float(near_plane)) abort(paste0('`near_plane` must be a number, not ', friendly_typeof(near_plane), '.'), call = NULL)
  if (!is_float(far_plane)) abort(paste0('`far_plane` must be a number, not ', friendly_typeof(far_plane), '.'), call = NULL)
  matrix_ortho_(left, right, bottom, top, near_plane, far_plane)
}

#' Matrix Look At
#'
#' @param eye A numeric vector of length 3.
#' @param target A numeric vector of length 3.
#' @param up A numeric vector of length 3.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_look_at(c(0, 0, 0), c(0, 0, 0), c(0, 1, 0))
#' }
#'
#' @export
matrix_look_at <- function(eye, target, up) {
  if (!is_vector_3(eye)) abort(paste0('`eye` must be a numeric vector of length 3, not ', friendly_typeof(eye), '.'), call = NULL)
  if (!is_vector_3(target)) abort(paste0('`target` must be a numeric vector of length 3, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_vector_3(up)) abort(paste0('`up` must be a numeric vector of length 3, not ', friendly_typeof(up), '.'), call = NULL)
  matrix_look_at_(eye, target, up)
}

#' Quaternion Add
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_add(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_add <- function(q1, q2) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  quaternion_add_(q1, q2)
}

#' Quaternion Add Value
#'
#' @param q A numeric vector of length 4.
#' @param add A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_add_value(c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_add_value <- function(q, add) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  if (!is_float(add)) abort(paste0('`add` must be a number, not ', friendly_typeof(add), '.'), call = NULL)
  quaternion_add_value_(q, add)
}

#' Quaternion Subtract
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_subtract(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_subtract <- function(q1, q2) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  quaternion_subtract_(q1, q2)
}

#' Quaternion Subtract Value
#'
#' @param q A numeric vector of length 4.
#' @param sub A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_subtract_value(c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_subtract_value <- function(q, sub) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  if (!is_float(sub)) abort(paste0('`sub` must be a number, not ', friendly_typeof(sub), '.'), call = NULL)
  quaternion_subtract_value_(q, sub)
}

#' Quaternion Identity
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_identity()
#' }
#'
#' @export
quaternion_identity <- function() {
  quaternion_identity_()
}

#' Quaternion Length
#'
#' @param q A numeric vector of length 4.
#'
#' @return A number
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_length(c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_length <- function(q) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_length_(q)
}

#' Quaternion Normalize
#'
#' @param q A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_normalize(c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_normalize <- function(q) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_normalize_(q)
}

#' Quaternion Invert
#'
#' @param q A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_invert(c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_invert <- function(q) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_invert_(q)
}

#' Quaternion Multiply
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_multiply(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_multiply <- function(q1, q2) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  quaternion_multiply_(q1, q2)
}

#' Quaternion Scale
#'
#' @param q A numeric vector of length 4.
#' @param mul A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_scale(c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_scale <- function(q, mul) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  if (!is_float(mul)) abort(paste0('`mul` must be a number, not ', friendly_typeof(mul), '.'), call = NULL)
  quaternion_scale_(q, mul)
}

#' Quaternion Divide
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_divide(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_divide <- function(q1, q2) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  quaternion_divide_(q1, q2)
}

#' Quaternion Lerp
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#' @param amount A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_lerp(c(0, 0, 0, 1), c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_lerp <- function(q1, q2, amount) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  quaternion_lerp_(q1, q2, amount)
}

#' Quaternion Nlerp
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#' @param amount A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_nlerp(c(0, 0, 0, 1), c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_nlerp <- function(q1, q2, amount) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  quaternion_nlerp_(q1, q2, amount)
}

#' Quaternion Slerp
#'
#' @param q1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#' @param amount A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_slerp(c(0, 0, 0, 1), c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_slerp <- function(q1, q2, amount) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  if (!is_float(amount)) abort(paste0('`amount` must be a number, not ', friendly_typeof(amount), '.'), call = NULL)
  quaternion_slerp_(q1, q2, amount)
}

#' Quaternion Cubic Hermite Spline
#'
#' @param q1 A numeric vector of length 4.
#' @param out_tangent1 A numeric vector of length 4.
#' @param q2 A numeric vector of length 4.
#' @param in_tangent2 A numeric vector of length 4.
#' @param t A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_cubic_hermite_spline(c(0, 0, 0, 1), c(0, 0, 0, 1), c(0, 0, 0, 1), c(0, 0, 0, 1), 0.0)
#' }
#'
#' @export
quaternion_cubic_hermite_spline <- function(q1, out_tangent1, q2, in_tangent2, t) {
  if (!is_vector_4(q1)) abort(paste0('`q1` must be a numeric vector of length 4, not ', friendly_typeof(q1), '.'), call = NULL)
  if (!is_vector_4(out_tangent1)) abort(paste0('`out_tangent1` must be a numeric vector of length 4, not ', friendly_typeof(out_tangent1), '.'), call = NULL)
  if (!is_vector_4(q2)) abort(paste0('`q2` must be a numeric vector of length 4, not ', friendly_typeof(q2), '.'), call = NULL)
  if (!is_vector_4(in_tangent2)) abort(paste0('`in_tangent2` must be a numeric vector of length 4, not ', friendly_typeof(in_tangent2), '.'), call = NULL)
  if (!is_float(t)) abort(paste0('`t` must be a number, not ', friendly_typeof(t), '.'), call = NULL)
  quaternion_cubic_hermite_spline_(q1, out_tangent1, q2, in_tangent2, t)
}

#' Quaternion From Vector3 To Vector3
#'
#' @param from A numeric vector of length 3.
#' @param to A numeric vector of length 3.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_from_vector3_to_vector3(c(0, 0, 0), c(0, 0, 0))
#' }
#'
#' @export
quaternion_from_vector3_to_vector3 <- function(from, to) {
  if (!is_vector_3(from)) abort(paste0('`from` must be a numeric vector of length 3, not ', friendly_typeof(from), '.'), call = NULL)
  if (!is_vector_3(to)) abort(paste0('`to` must be a numeric vector of length 3, not ', friendly_typeof(to), '.'), call = NULL)
  quaternion_from_vector3_to_vector3_(from, to)
}

#' Quaternion From Matrix
#'
#' @param mat A 4x4 numeric matrix.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_from_matrix(diag(4))
#' }
#'
#' @export
quaternion_from_matrix <- function(mat) {
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  quaternion_from_matrix_(mat)
}

#' Quaternion To Matrix
#'
#' @param q A numeric vector of length 4.
#'
#' @return A 4x4 numeric matrix
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_to_matrix(c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_to_matrix <- function(q) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_to_matrix_(q)
}

#' Quaternion From Axis Angle
#'
#' @param axis A numeric vector of length 3.
#' @param angle A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_from_axis_angle(c(0, 0, 0), 0.0)
#' }
#'
#' @export
quaternion_from_axis_angle <- function(axis, angle) {
  if (!is_vector_3(axis)) abort(paste0('`axis` must be a numeric vector of length 3, not ', friendly_typeof(axis), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  quaternion_from_axis_angle_(axis, angle)
}

#' Quaternion From Euler
#'
#' @param pitch A number.
#' @param yaw A number.
#' @param roll A number.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_from_euler(1.0, 0.0, 0.0)
#' }
#'
#' @export
quaternion_from_euler <- function(pitch, yaw, roll) {
  if (!is_float(pitch)) abort(paste0('`pitch` must be a number, not ', friendly_typeof(pitch), '.'), call = NULL)
  if (!is_float(yaw)) abort(paste0('`yaw` must be a number, not ', friendly_typeof(yaw), '.'), call = NULL)
  if (!is_float(roll)) abort(paste0('`roll` must be a number, not ', friendly_typeof(roll), '.'), call = NULL)
  quaternion_from_euler_(pitch, yaw, roll)
}

#' Quaternion To Euler
#'
#' @param q A numeric vector of length 4.
#'
#' @return A numeric vector of length 3
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_to_euler(c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_to_euler <- function(q) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_to_euler_(q)
}

#' Quaternion Transform
#'
#' @param q A numeric vector of length 4.
#' @param mat A 4x4 numeric matrix.
#'
#' @return A numeric vector of length 4
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_transform(c(0, 0, 0, 1), diag(4))
#' }
#'
#' @export
quaternion_transform <- function(q, mat) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  quaternion_transform_(q, mat)
}

#' Quaternion Equals
#'
#' @param p A numeric vector of length 4.
#' @param q A numeric vector of length 4.
#'
#' @return An integer
#'
#' @family quaternion functions
#'
#' @examples
#' \dontrun{
#' quaternion_equals(c(0, 0, 0, 1), c(0, 0, 0, 1))
#' }
#'
#' @export
quaternion_equals <- function(p, q) {
  if (!is_vector_4(p)) abort(paste0('`p` must be a numeric vector of length 4, not ', friendly_typeof(p), '.'), call = NULL)
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_equals_(p, q)
}

#' Matrix Compose
#'
#' @param translation A numeric vector of length 3.
#' @param rotation A numeric vector of length 4.
#' @param scale A numeric vector of length 3.
#'
#' @return A 4x4 numeric matrix
#'
#' @family matrix functions
#'
#' @examples
#' \dontrun{
#' matrix_compose(c(0, 0, 0), c(0, 0, 0, 1), c(1, 1, 1))
#' }
#'
#' @export
matrix_compose <- function(translation, rotation, scale) {
  if (!is_vector_3(translation)) abort(paste0('`translation` must be a numeric vector of length 3, not ', friendly_typeof(translation), '.'), call = NULL)
  if (!is_vector_4(rotation)) abort(paste0('`rotation` must be a numeric vector of length 4, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_vector_3(scale)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(scale), '.'), call = NULL)
  matrix_compose_(translation, rotation, scale)
}

