# Do not edit by hand.

#' Bounding box
#'
#' Create a new bounding_box object.
#'
#' @param min A numeric vector of length 3. Minimum vertex box-corner.
#' @param max A numeric vector of length 3. Maximum vertex box-corner.
#'
#' @return A bounding_box
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct BoundingBox {
#'     Vector3 min;            // Minimum vertex box-corner
#'     Vector3 max;            // Maximum vertex box-corner
#' } BoundingBox;
#' ```
#'
#' @rdname bounding_box
#'
#' @family bounding_box functions
#'
#' @export
bounding_box <- function(min, max) {
  if (!is_vector_3(min)) abort(paste0('`min` must be a numeric vector of length 3, not ', friendly_typeof(min), '.'), call = NULL)
  if (!is_vector_3(max)) abort(paste0('`max` must be a numeric vector of length 3, not ', friendly_typeof(max), '.'), call = NULL)
  bounding_box_(min, max)
}

bounding_box_set <- function(o, field, value) {
  if (field == "min") {
    if (!is_vector_3(value)) abort(paste0('`min` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    bounding_box_set_min_(o, value)
  } else if (field == "max") {
    if (!is_vector_3(value)) abort(paste0('`max` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    bounding_box_set_max_(o, value)
  } else {
    abort(paste0("`bounding_box` has no property ", field , "."), call = NULL)
  }
}

bounding_box_get <- function(o, field) {
  if (field == "min") {
    bounding_box_get_min_(o)
  } else if (field == "max") {
    bounding_box_get_max_(o)
  } else {
    abort(paste0("`bounding_box` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_bounding_box" <- function(o, field) {
  bounding_box_get(o, field)
}

#' @export
"$<-.raylibr_bounding_box" <- function(o, field, value) {
  bounding_box_set(o, field, value)
}

#' @export
.DollarNames.raylibr_bounding_box <- function(x, pattern) {
  c("min", "max")
}

#' @export
"[.raylibr_bounding_box" <- `$.raylibr_bounding_box`

#' @export
"[[.raylibr_bounding_box" <- `$.raylibr_bounding_box`

#' @export
"[<-.raylibr_bounding_box" <- `$<-.raylibr_bounding_box`

#' @export
"[[<-.raylibr_bounding_box" <- `$<-.raylibr_bounding_box`

#' @export
print.raylibr_bounding_box <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_bounding_box <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("bounding_box(", res, ")")
}

#' @export
is_bounding_box <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_bounding_box"
}
