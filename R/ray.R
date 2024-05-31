# Do not edit by hand.

#' Ray
#'
#' Create a new ray object.
#'
#' @param position A numeric vector of length 3. Ray position (origin).
#' @param direction A numeric vector of length 3. Ray direction.
#'
#' @return A ray
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Ray {
#'     Vector3 position;       // Ray position (origin)
#'     Vector3 direction;      // Ray direction
#' } Ray;
#' ```
#'
#' @rdname ray
#'
#' @family ray functions
#'
#' @export
ray <- function(position, direction) {
  if (!is_vector_3(position)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(position), '.'), call = NULL)
  if (!is_vector_3(direction)) abort(paste0('`direction` must be a numeric vector of length 3, not ', friendly_typeof(direction), '.'), call = NULL)
  ray_(position, direction)
}

ray_set <- function(o, field, value) {
  if (field == "position") {
    if (!is_vector_3(value)) abort(paste0('`position` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    ray_set_position_(o, value)
  } else if (field == "direction") {
    if (!is_vector_3(value)) abort(paste0('`direction` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    ray_set_direction_(o, value)
  } else {
    abort(paste0("`ray` has no property ", field , "."), call = NULL)
  }
}

ray_get <- function(o, field) {
  if (field == "position") {
    ray_get_position_(o)
  } else if (field == "direction") {
    ray_get_direction_(o)
  } else {
    abort(paste0("`ray` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_ray" <- function(o, field) {
  ray_get(o, field)
}

#' @export
"$<-.raylibr_ray" <- function(o, field, value) {
  ray_set(o, field, value)
}

#' @export
.DollarNames.raylibr_ray <- function(x, pattern) {
  c("position", "direction")
}

#' @export
"[.raylibr_ray" <- `$.raylibr_ray`

#' @export
"[[.raylibr_ray" <- `$.raylibr_ray`

#' @export
"[<-.raylibr_ray" <- `$<-.raylibr_ray`

#' @export
"[[<-.raylibr_ray" <- `$<-.raylibr_ray`

#' @export
print.raylibr_ray <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_ray <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("ray(", res, ")")
}

#' @export
is_ray <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_ray"
}
