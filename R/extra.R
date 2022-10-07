#' Set shader value
#'
#' Set shader uniform value.
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param value A number or numerical vector of length 2, 3, or 4.
#'
#' @family shader functions
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


#' Load font ex
#'
#' Load font from file with extended parameters.
#'
#' @param file_name A string.
#' @param font_size An integer.
#'
#' @return A font
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);
#' ```
#'
#' @family font functions
#'
#' @export
load_font_ex <- function(file_name, font_size) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  load_font_ex_(file_name, font_size)
}

#' Raylib Version
#'
#' Get the version of the Raylib library that is being used.
#'
#' @return A string
#' @export
raylib_version <- function() {
  raylib_version_()
}

abort <- function(message, call = NULL) {
  if (requireNamespace("rlang", quietly = TRUE)) {
    rlang::abort(message, call = call)
  } else {
    base::stop(message, call. = !is.null(call))
  }
}
