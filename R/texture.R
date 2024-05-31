# Do not edit by hand.

#' Texture
#'
#' Create a new texture object.
#'
#' @param id A non-negative integer. OpenGL texture id.
#' @param width An integer. Texture base width.
#' @param height An integer. Texture base height.
#' @param mipmaps An integer. Mipmap levels, 1 by default.
#' @param format An integer. Data format (PixelFormat type).
#'
#' @return A texture
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Texture {
#'     unsigned int id;        // OpenGL texture id
#'     int width;              // Texture base width
#'     int height;             // Texture base height
#'     int mipmaps;            // Mipmap levels, 1 by default
#'     int format;             // Data format (PixelFormat type)
#' } Texture;
#' ```
#'
#' @rdname texture
#'
#' @family texture functions
#'
#' @export
texture <- function(id, width, height, mipmaps, format) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_int(mipmaps)) abort(paste0('`mipmaps` must be an integer, not ', friendly_typeof(mipmaps), '.'), call = NULL)
  if (!is_int(format)) abort(paste0('`format` must be an integer, not ', friendly_typeof(format), '.'), call = NULL)
  texture_(id, width, height, mipmaps, format)
}

texture_set <- function(o, field, value) {
  if (field == "id") {
    if (!is_unsigned_int(value)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    texture_set_id_(o, value)
  } else if (field == "width") {
    if (!is_int(value)) abort(paste0('`width` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    texture_set_width_(o, value)
  } else if (field == "height") {
    if (!is_int(value)) abort(paste0('`height` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    texture_set_height_(o, value)
  } else if (field == "mipmaps") {
    if (!is_int(value)) abort(paste0('`mipmaps` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    texture_set_mipmaps_(o, value)
  } else if (field == "format") {
    if (!is_int(value)) abort(paste0('`format` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    texture_set_format_(o, value)
  } else {
    abort(paste0("`texture` has no property ", field , "."), call = NULL)
  }
}

texture_get <- function(o, field) {
  if (field == "id") {
    texture_get_id_(o)
  } else if (field == "width") {
    texture_get_width_(o)
  } else if (field == "height") {
    texture_get_height_(o)
  } else if (field == "mipmaps") {
    texture_get_mipmaps_(o)
  } else if (field == "format") {
    texture_get_format_(o)
  } else {
    abort(paste0("`texture` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_texture" <- function(o, field) {
  texture_get(o, field)
}

#' @export
"$<-.raylibr_texture" <- function(o, field, value) {
  texture_set(o, field, value)
}

#' @export
.DollarNames.raylibr_texture <- function(x, pattern) {
  c("id", "width", "height", "mipmaps", "format")
}

#' @export
"[.raylibr_texture" <- `$.raylibr_texture`

#' @export
"[[.raylibr_texture" <- `$.raylibr_texture`

#' @export
"[<-.raylibr_texture" <- `$<-.raylibr_texture`

#' @export
"[[<-.raylibr_texture" <- `$<-.raylibr_texture`

#' @export
print.raylibr_texture <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_texture <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("texture(", res, ")")
}

#' @export
is_texture <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_texture"
}
