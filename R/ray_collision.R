# Do not edit by hand.

#' Ray collision
#'
#' Create a new ray_collision object.
#'
#' @param hit A logical. Did the ray hit something?.
#' @param distance A number. Distance to nearest hit.
#' @param point A numeric vector of length 3. Point of nearest hit.
#' @param normal A numeric vector of length 3. Surface normal of hit.
#'
#' @return A ray_collision
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct RayCollision {
#'     bool hit;               // Did the ray hit something?
#'     float distance;         // Distance to nearest hit
#'     Vector3 point;          // Point of nearest hit
#'     Vector3 normal;         // Surface normal of hit
#' } RayCollision;
#' ```
#'
#' @rdname ray_collision
#'
#' @family ray_collision functions
#'
#' @export
ray_collision <- function(hit, distance, point, normal) {
  if (!is_bool(hit)) abort(paste0('`hit` must be a logical, not ', friendly_typeof(hit), '.'), call = NULL)
  if (!is_float(distance)) abort(paste0('`distance` must be a number, not ', friendly_typeof(distance), '.'), call = NULL)
  if (!is_vector_3(point)) abort(paste0('`point` must be a numeric vector of length 3, not ', friendly_typeof(point), '.'), call = NULL)
  if (!is_vector_3(normal)) abort(paste0('`normal` must be a numeric vector of length 3, not ', friendly_typeof(normal), '.'), call = NULL)
  ray_collision_(hit, distance, point, normal)
}

ray_collision_set <- function(o, field, value) {
  if (field == "hit") {
    if (!is_bool(value)) abort(paste0('`hit` must be a logical, not ', friendly_typeof(value), '.'), call = NULL)
    ray_collision_set_hit_(o, value)
  } else if (field == "distance") {
    if (!is_float(value)) abort(paste0('`distance` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    ray_collision_set_distance_(o, value)
  } else if (field == "point") {
    if (!is_vector_3(value)) abort(paste0('`point` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    ray_collision_set_point_(o, value)
  } else if (field == "normal") {
    if (!is_vector_3(value)) abort(paste0('`normal` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    ray_collision_set_normal_(o, value)
  } else {
    abort(paste0("`ray_collision` has no property ", field , "."), call = NULL)
  }
}

ray_collision_get <- function(o, field) {
  if (field == "hit") {
    ray_collision_get_hit_(o)
  } else if (field == "distance") {
    ray_collision_get_distance_(o)
  } else if (field == "point") {
    ray_collision_get_point_(o)
  } else if (field == "normal") {
    ray_collision_get_normal_(o)
  } else {
    abort(paste0("`ray_collision` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_ray_collision" <- function(o, field) {
  ray_collision_get(o, field)
}

#' @export
"$<-.raylibr_ray_collision" <- function(o, field, value) {
  ray_collision_set(o, field, value)
}

#' @export
.DollarNames.raylibr_ray_collision <- function(x, pattern) {
  c("hit", "distance", "point", "normal")
}

#' @export
"[.raylibr_ray_collision" <- `$.raylibr_ray_collision`

#' @export
"[[.raylibr_ray_collision" <- `$.raylibr_ray_collision`

#' @export
"[<-.raylibr_ray_collision" <- `$<-.raylibr_ray_collision`

#' @export
"[[<-.raylibr_ray_collision" <- `$<-.raylibr_ray_collision`

#' @export
print.raylibr_ray_collision <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_ray_collision <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("ray_collision(", res, ")")
}

#' @export
is_ray_collision <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_ray_collision"
}
