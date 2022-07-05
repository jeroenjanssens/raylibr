#' Set shader value
#'
#' Set shader uniform value.
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param value A number or numerical vector of length 2, 3, or 4.
#'
#' @export
set_shader_value <- function(shader, loc_index, value) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)

  if (is_float(value)) {
    set_shader_value_float_(shader, loc_index, value)
  } else if (is_vector_2(value)) {
    set_shader_value_vector_2_(shader, loc_index, value)
  } else if (is_vector_3(value)) {
    set_shader_value_vector_3_(shader, loc_index, value)
  } else if (is_vector_4(value)) {
    set_shader_value_vector_4_(shader, loc_index, value)
  } else {
    abort(paste0('`value` must be a number or a numerical vector of length 2, 3, or 4, not ', friendly_typeof(value), '.'), call = NULL)
  }
}
