# Do not edit by hand.

#' Glyph info
#'
#' Create a new glyph_info object.
#'
#' @param value An integer. Character value (Unicode).
#' @param offset_x An integer. Character offset X when drawing.
#' @param offset_y An integer. Character offset Y when drawing.
#' @param advance_x An integer. Character advance position X.
#' @param image An image. Character image data.
#'
#' @return A glyph_info
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct GlyphInfo {
#'     int value;              // Character value (Unicode)
#'     int offsetX;            // Character offset X when drawing
#'     int offsetY;            // Character offset Y when drawing
#'     int advanceX;           // Character advance position X
#'     Image image;            // Character image data
#' } GlyphInfo;
#' ```
#'
#' @rdname glyph_info
#'
#' @family glyph_info functions
#'
#' @export
glyph_info <- function(value, offset_x, offset_y, advance_x, image) {
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  if (!is_int(offset_x)) abort(paste0('`offset_x` must be an integer, not ', friendly_typeof(offset_x), '.'), call = NULL)
  if (!is_int(offset_y)) abort(paste0('`offset_y` must be an integer, not ', friendly_typeof(offset_y), '.'), call = NULL)
  if (!is_int(advance_x)) abort(paste0('`advance_x` must be an integer, not ', friendly_typeof(advance_x), '.'), call = NULL)
  if (!is_image(image)) abort(paste0('`image` must be an image, not ', friendly_typeof(image), '.'), call = NULL)
  glyph_info_(value, offset_x, offset_y, advance_x, image)
}

glyph_info_set <- function(o, field, value) {
  if (field == "value") {
    if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    glyph_info_set_value_(o, value)
  } else if (field == "offset_x") {
    if (!is_int(value)) abort(paste0('`offset_x` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    glyph_info_set_offset_x_(o, value)
  } else if (field == "offset_y") {
    if (!is_int(value)) abort(paste0('`offset_y` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    glyph_info_set_offset_y_(o, value)
  } else if (field == "advance_x") {
    if (!is_int(value)) abort(paste0('`advance_x` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    glyph_info_set_advance_x_(o, value)
  } else if (field == "image") {
    if (!is_image(value)) abort(paste0('`image` must be an image, not ', friendly_typeof(value), '.'), call = NULL)
    glyph_info_set_image_(o, value)
  } else {
    abort(paste0("`glyph_info` has no property ", field , "."), call = NULL)
  }
}

glyph_info_get <- function(o, field) {
  if (field == "value") {
    glyph_info_get_value_(o)
  } else if (field == "offset_x") {
    glyph_info_get_offset_x_(o)
  } else if (field == "offset_y") {
    glyph_info_get_offset_y_(o)
  } else if (field == "advance_x") {
    glyph_info_get_advance_x_(o)
  } else if (field == "image") {
    glyph_info_get_image_(o)
  } else {
    abort(paste0("`glyph_info` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_glyph_info" <- function(o, field) {
  glyph_info_get(o, field)
}

#' @export
"$<-.raylibr_glyph_info" <- function(o, field, value) {
  glyph_info_set(o, field, value)
}

#' @export
.DollarNames.raylibr_glyph_info <- function(x, pattern) {
  c("value", "offset_x", "offset_y", "advance_x", "image")
}

#' @export
"[.raylibr_glyph_info" <- `$.raylibr_glyph_info`

#' @export
"[[.raylibr_glyph_info" <- `$.raylibr_glyph_info`

#' @export
"[<-.raylibr_glyph_info" <- `$<-.raylibr_glyph_info`

#' @export
"[[<-.raylibr_glyph_info" <- `$<-.raylibr_glyph_info`

#' @export
print.raylibr_glyph_info <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_glyph_info <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("glyph_info(", res, ")")
}

#' @export
is_glyph_info <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_glyph_info"
}
