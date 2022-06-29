# Do not edit by hand

#' Camera 3d
#'
#' Create a new `camera_3d` object.
#'
#' @param position A numeric vector of length 3. Camera position.
#' @param target A numeric vector of length 3. Camera target it looks-at.
#' @param up A numeric vector of length 3. Camera up vector (rotation over its axis).
#' @param fovy A number. Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic. Default: `70`.
#' @param projection An integer. Camera projection: either `camera_projection$perspective` (0) or `camera_projection$orthographic` (1). Default: `0`.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
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

#' @rdname camera_3d
#' @export
camera_3d <- function(position, target, up, fovy = 70, projection = 0) {
  camera_3d_(position, target, up, fovy, projection)
}

camera_3d_set <- function(o, field, value) {
  do.call(paste0("camera_3d_set_", field, "_"), args = list(o, value))
}

camera_3d_get <- function(o, field) {
  do.call(paste0("camera_3d_get_", field, "_"), args = list(o))
}

#' @export
"$.camera_3d" <- function(o, field) {
  camera_3d_get(o, field)
}

#' @export
"$<-.camera_3d" <- function(o, field, value) {
  camera_3d_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.camera_3d <- function(x, pattern) {
  c("position", "target", "up", "fovy", "projection")
}

#' @export
"[.camera_3d" <- `$.camera_3d`

#' @export
"[[.camera_3d" <- `$.camera_3d`

#' @export
"[<-.camera_3d" <- `$<-.camera_3d`

#' @export
"[[<-.camera_3d" <- `$<-.camera_3d`

#' @export
print.camera_3d <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.camera_3d <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("camera_3d(", res, ")")
}
