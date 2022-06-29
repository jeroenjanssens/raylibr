# Do not edit by hand

#' Texture
#'
#' Create a new `texture` object.
#'
#' @param id A non-negative integer. OpenGL texture id.
#' @param width An integer. Texture base width.
#' @param height An integer. Texture base height.
#' @param mipmaps An integer. Mipmap levels, 1 by default.
#' @param format An integer. Data format (PixelFormat type).
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
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

#' @rdname texture
#' @export
texture <- function(id, width, height, mipmaps, format) {
  texture_(id, width, height, mipmaps, format)
}

texture_set <- function(o, field, value) {
  do.call(paste0("texture_set_", field, "_"), args = list(o, value))
}

texture_get <- function(o, field) {
  do.call(paste0("texture_get_", field, "_"), args = list(o))
}

#' @export
"$.texture" <- function(o, field) {
  texture_get(o, field)
}

#' @export
"$<-.texture" <- function(o, field, value) {
  texture_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.texture <- function(x, pattern) {
  c("id", "width", "height", "mipmaps", "format")
}

#' @export
"[.texture" <- `$.texture`

#' @export
"[[.texture" <- `$.texture`

#' @export
"[<-.texture" <- `$<-.texture`

#' @export
"[[<-.texture" <- `$<-.texture`

#' @export
print.texture <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.texture <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("texture(", res, ")")
}
