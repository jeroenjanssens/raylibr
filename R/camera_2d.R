# Do not edit by hand.

#' Camera 2d
#'
#' Create a new camera_2d object.
#'
#' @param offset A numeric vector of length 2. Camera offset (screen space offset from window origin).
#' @param target A numeric vector of length 2. Camera target (world space target point that is mapped to screen space offset).
#' @param rotation A number. Camera rotation in degrees (pivots around target).
#' @param zoom A number. Camera zoom (scaling around target), must not be set to 0, set to 1.0f for no scale.
#'
#' @return A camera_2d
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Camera2D {
#'     Vector2 offset;        // Camera offset (screen space offset from window origin)
#'     Vector2 target;        // Camera target (world space target point that is mapped to screen space offset)
#'     float rotation;        // Camera rotation in degrees (pivots around target)
#'     float zoom;        // Camera zoom (scaling around target), must not be set to 0, set to 1.0f for no scale
#' } Camera2D;
#' ```
#'
#' @rdname camera_2d
#'
#' @family camera_2d functions
#'
#'
#' @export
camera_2d <- function(offset, target, rotation, zoom) {
  if (!is_vector_2(offset)) abort(paste0('`offset` must be a numeric vector of length 2, not ', friendly_typeof(offset), '.'), call = NULL)
  if (!is_vector_2(target)) abort(paste0('`target` must be a numeric vector of length 2, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_float(rotation)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(zoom)) abort(paste0('`zoom` must be a number, not ', friendly_typeof(zoom), '.'), call = NULL)
  camera_2d_(offset, target, rotation, zoom)
}

camera_2d_set <- function(o, field, value) {
  if (field == "offset") {
    if (!is_vector_2(value)) abort(paste0('`offset` must be a numeric vector of length 2, not ', friendly_typeof(value), '.'), call = NULL)
    camera_2d_set_offset_(o, value)
  } else if (field == "target") {
    if (!is_vector_2(value)) abort(paste0('`target` must be a numeric vector of length 2, not ', friendly_typeof(value), '.'), call = NULL)
    camera_2d_set_target_(o, value)
  } else if (field == "rotation") {
    if (!is_float(value)) abort(paste0('`rotation` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    camera_2d_set_rotation_(o, value)
  } else if (field == "zoom") {
    if (!is_float(value)) abort(paste0('`zoom` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    camera_2d_set_zoom_(o, value)
  } else {
    abort(paste0("`camera_2d` has no property ", field , "."), call = NULL)
  }
}

camera_2d_get <- function(o, field) {
  if (field == "offset") {
    camera_2d_get_offset_(o)
  } else if (field == "target") {
    camera_2d_get_target_(o)
  } else if (field == "rotation") {
    camera_2d_get_rotation_(o)
  } else if (field == "zoom") {
    camera_2d_get_zoom_(o)
  } else {
    abort(paste0("`camera_2d` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.camera_2d" <- function(o, field) {
  camera_2d_get(o, field)
}

#' @export
"$<-.camera_2d" <- function(o, field, value) {
  camera_2d_set(o, field, value)
}

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
