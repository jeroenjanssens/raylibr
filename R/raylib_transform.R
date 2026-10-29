# Do not edit by hand.

#' Test if object is a raylib_transform
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_raylib_transform("not a raylib_transform")
#'
#' @export
is_raylib_transform <- function(x) {
  inherits(x, "raylib_transform")
}


#' Raylib Transform
#'
#' Create a new raylib_transform object.
#'
#' @param translation A numeric vector of length 3. Translation.
#' @param rotation A numeric vector of length 4. Rotation.
#' @param scale A numeric vector of length 3. Scale.
#'
#' @return A raylib_transform
#'
#' @details Raylib calls this struct `Transform`. In raylibr it is named
#'   `raylib_transform()` (class `"raylib_transform"`) so that it doesn't mask
#'   [base::transform()] or clash with the `"transform"` objects from the
#'   scales package, which ggplot2 uses for scale transformations.
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Transform {
#'     Vector3 translation;        // Translation
#'     Quaternion rotation;        // Rotation
#'     Vector3 scale;        // Scale
#' } Transform;
#' ```
#'
#' @rdname raylib_transform
#'
#' @family raylib_transform functions
#'
#' @examples
#' ray <- raylib_transform(c(0, 0, 0), c(0, 0, 0, 1), c(1, 1, 1))
#' ray$translation
#' ray$rotation
#'
#' @export
raylib_transform <- function(translation, rotation, scale) {
  if (!is_vector_3(translation)) abort(paste0('`translation` must be a numeric vector of length 3, not ', friendly_typeof(translation), '.'), call = NULL)
  if (!is_vector_4(rotation)) abort(paste0('`rotation` must be a numeric vector of length 4, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_vector_3(scale)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(scale), '.'), call = NULL)
  raylib_transform_(translation, rotation, scale)
}

raylib_transform_set <- function(o, field, value) {
  if (field == "translation") {
    if (!is_vector_3(value)) abort(paste0('`translation` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    raylib_transform_set_translation_(o, value)
  } else if (field == "rotation") {
    if (!is_vector_4(value)) abort(paste0('`rotation` must be a numeric vector of length 4, not ', friendly_typeof(value), '.'), call = NULL)
    raylib_transform_set_rotation_(o, value)
  } else if (field == "scale") {
    if (!is_vector_3(value)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    raylib_transform_set_scale_(o, value)
  } else {
    abort(paste0("`raylib_transform` has no property ", field , "."), call = NULL)
  }
}

raylib_transform_get <- function(o, field) {
  if (field == "translation") {
    raylib_transform_get_translation_(o)
  } else if (field == "rotation") {
    raylib_transform_get_rotation_(o)
  } else if (field == "scale") {
    raylib_transform_get_scale_(o)
  } else {
    abort(paste0("`raylib_transform` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylib_transform" <- function(o, field) {
  raylib_transform_get(o, field)
}

#' @export
"$<-.raylib_transform" <- function(o, field, value) {
  raylib_transform_set(o, field, value)
}

#' @export
.DollarNames.raylib_transform <- function(x, pattern) {
  c("translation", "rotation", "scale")
}

#' @export
"[.raylib_transform" <- `$.raylib_transform`

#' @export
"[[.raylib_transform" <- `$.raylib_transform`

#' @export
"[<-.raylib_transform" <- `$<-.raylib_transform`

#' @export
"[[<-.raylib_transform" <- `$<-.raylib_transform`

#' @export
print.raylib_transform <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylib_transform <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("raylib_transform(", res, ")")
}
