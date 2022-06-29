# Do not edit by hand

#' Glyph info
#'
#' Create a new `glyph_info` object.
#'
#' @param value An integer. Character value (Unicode).
#' @param offset_x An integer. Character offset X when drawing.
#' @param offset_y An integer. Character offset Y when drawing.
#' @param advance_x An integer. Character advance position X.
#' @param image A image. Character image data.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
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

#' @rdname glyph_info
#' @export
glyph_info <- function(value, offsetX, offsetY, advanceX, image) {
  glyph_info_(value, offset_x, offset_y, advance_x, image)
}

glyph_info_set <- function(o, field, value) {
  do.call(paste0("glyph_info_set_", field, "_"), args = list(o, value))
}

glyph_info_get <- function(o, field) {
  do.call(paste0("glyph_info_get_", field, "_"), args = list(o))
}

#' @export
"$.glyph_info" <- function(o, field) {
  glyph_info_get(o, field)
}

#' @export
"$<-.glyph_info" <- function(o, field, value) {
  glyph_info_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.glyph_info <- function(x, pattern) {
  c("value", "offset_x", "offset_y", "advance_x", "image")
}

#' @export
"[.glyph_info" <- `$.glyph_info`

#' @export
"[[.glyph_info" <- `$.glyph_info`

#' @export
"[<-.glyph_info" <- `$<-.glyph_info`

#' @export
"[[<-.glyph_info" <- `$<-.glyph_info`

#' @export
print.glyph_info <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.glyph_info <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("glyph_info(", res, ")")
}
