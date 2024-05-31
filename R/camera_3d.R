# Do not edit by hand.

#' Camera 3d
#'
#' Create a new camera_3d object.
#'
#' @param position A numeric vector of length 3. Camera position.
#' @param target A numeric vector of length 3. Camera target it looks-at. Default: `c(0, 0, 0)`.
#' @param up A numeric vector of length 3. Camera up vector (rotation over its axis). Default: `c(0, 1, 0)`.
#' @param fovy A number. Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic. Default: `70`.
#' @param projection An integer. Camera projection: either `camera_projection$perspective` (0) or `camera_projection$orthographic` (1). Default: `0`.
#'
#' @return A camera_3d
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Camera3D {
#'     Vector3 position;       // Camera position
#'     Vector3 target;         // Camera target it looks-at
#'     Vector3 up;             // Camera up vector (rotation over its axis)
#'     float fovy;             // Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic
#'     int projection;         // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
#' } Camera3D;
#' ```
#'
#' @rdname camera_3d
#'
#' @family camera_3d functions
#'
#' @export
camera_3d <- function(position, target = c(0, 0, 0), up = c(0, 1, 0), fovy = 70, projection = 0) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(target)) abort(paste0('`target` must be a numeric vector of length 3, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_vector_3(up)) abort(paste0('`up` must be a numeric vector of length 3, not ', friendly_typeof(up), '.'), call = NULL)
  if (!is_float(fovy)) abort(paste0('`fovy` must be a number, not ', friendly_typeof(fovy), '.'), call = NULL)
  if (!is_int(projection)) abort(paste0('`projection` must be an integer, not ', friendly_typeof(projection), '.'), call = NULL)
  camera_3d_(position, target, up, fovy, projection)
}

camera_3d_set <- function(o, field, value) {
  if (field == "position") {
    if (!is_vector_3(value)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    camera_3d_set_position_(o, value)
  } else if (field == "target") {
    if (!is_vector_3(value)) abort(paste0('`target` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    camera_3d_set_target_(o, value)
  } else if (field == "up") {
    if (!is_vector_3(value)) abort(paste0('`up` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    camera_3d_set_up_(o, value)
  } else if (field == "fovy") {
    if (!is_float(value)) abort(paste0('`fovy` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    camera_3d_set_fovy_(o, value)
  } else if (field == "projection") {
    if (!is_int(value)) abort(paste0('`projection` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    camera_3d_set_projection_(o, value)
  } else {
    abort(paste0("`camera_3d` has no property ", field , "."), call = NULL)
  }
}

camera_3d_get <- function(o, field) {
  if (field == "position") {
    camera_3d_get_position_(o)
  } else if (field == "target") {
    camera_3d_get_target_(o)
  } else if (field == "up") {
    camera_3d_get_up_(o)
  } else if (field == "fovy") {
    camera_3d_get_fovy_(o)
  } else if (field == "projection") {
    camera_3d_get_projection_(o)
  } else {
    abort(paste0("`camera_3d` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_camera_3d" <- function(o, field) {
  camera_3d_get(o, field)
}

#' @export
"$<-.raylibr_camera_3d" <- function(o, field, value) {
  camera_3d_set(o, field, value)
}

#' @export
.DollarNames.raylibr_camera_3d <- function(x, pattern) {
  c("position", "target", "up", "fovy", "projection")
}

#' @export
"[.raylibr_camera_3d" <- `$.raylibr_camera_3d`

#' @export
"[[.raylibr_camera_3d" <- `$.raylibr_camera_3d`

#' @export
"[<-.raylibr_camera_3d" <- `$<-.raylibr_camera_3d`

#' @export
"[[<-.raylibr_camera_3d" <- `$<-.raylibr_camera_3d`

#' @export
print.raylibr_camera_3d <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_camera_3d <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("camera_3d(", res, ")")
}

#' @export
is_camera_3d <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_camera_3d"
}
