# Do not edit by hand

#' Camera 2d
#'
#' Create a new `camera_2d` object.
#'
#' @param offset A numeric vector of length 2. Camera offset (displacement from target).
#' @param target A numeric vector of length 2. Camera target (rotation and zoom origin).
#' @param rotation A number. Camera rotation in degrees.
#' @param zoom A number. Camera zoom (scaling). Default: `1`.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Camera2D {
#'     Vector2 offset;         // Camera offset (displacement from target)
#'     Vector2 target;         // Camera target (rotation and zoom origin)
#'     float rotation;         // Camera rotation in degrees
#'     float zoom;             // Camera zoom (scaling), should be 1.0f by default
#' } Camera2D;
#' ```

#' @rdname camera_2d
#' @export
camera_2d <- function(offset, target, rotation, zoom = 1) {
  camera_2d_(offset, target, rotation, zoom)
}

camera_2d_set <- function(o, field, value) {
  do.call(paste0("camera_2d_set_", field, "_"), args = list(o, value))
}

camera_2d_get <- function(o, field) {
  do.call(paste0("camera_2d_get_", field, "_"), args = list(o))
}

#' @export
"$.camera_2d" <- function(o, field) {
  camera_2d_get(o, field)
}

#' @export
"$<-.camera_2d" <- function(o, field, value) {
  camera_2d_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.camera_2d <- function(x, pattern) {
  c("offset", "target", "rotation", "zoom")
}

#' @export
"[.camera_2d" <- `$.camera_2d`

#' @export
"[[.camera_2d" <- `$.camera_2d`

#' @export
"[<-.camera_2d" <- `$<-.camera_2d`

#' @export
"[[<-.camera_2d" <- `$<-.camera_2d`

#' @export
print.camera_2d <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.camera_2d <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("camera_2d(", res, ")")
}
