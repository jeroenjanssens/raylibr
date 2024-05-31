# Do not edit by hand.

#' Transform
#'
#' Create a new transform object.
#'
#' @param translation A numeric vector of length 3. Translation.
#' @param rotation A numeric vector of length 4. Rotation.
#' @param scale A numeric vector of length 3. Scale.
#'
#' @return A transform
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Transform {
#'     Vector3 translation;    // Translation
#'     Quaternion rotation;    // Rotation
#'     Vector3 scale;          // Scale
#' } Transform;
#' ```
#'
#' @rdname transform
#'
#' @family transform functions
#'
#' @export
transform <- function(translation, rotation, scale) {
  if (!is_vector_3(translation)) abort(paste0('`translation` must be a numeric vector of length 3, not ', friendly_typeof(translation), '.'), call = NULL)
  if (!is_vector_4(rotation)) abort(paste0('`rotation` must be a numeric vector of length 4, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_vector_3(scale)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(scale), '.'), call = NULL)
  transform_(translation, rotation, scale)
}

transform_set <- function(o, field, value) {
  if (field == "translation") {
    if (!is_vector_3(value)) abort(paste0('`translation` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    transform_set_translation_(o, value)
  } else if (field == "rotation") {
    if (!is_vector_4(value)) abort(paste0('`rotation` must be a numeric vector of length 4, not ', friendly_typeof(value), '.'), call = NULL)
    transform_set_rotation_(o, value)
  } else if (field == "scale") {
    if (!is_vector_3(value)) abort(paste0('`scale` must be a numeric vector of length 3, not ', friendly_typeof(value), '.'), call = NULL)
    transform_set_scale_(o, value)
  } else {
    abort(paste0("`transform` has no property ", field , "."), call = NULL)
  }
}

transform_get <- function(o, field) {
  if (field == "translation") {
    transform_get_translation_(o)
  } else if (field == "rotation") {
    transform_get_rotation_(o)
  } else if (field == "scale") {
    transform_get_scale_(o)
  } else {
    abort(paste0("`transform` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_transform" <- function(o, field) {
  transform_get(o, field)
}

#' @export
"$<-.raylibr_transform" <- function(o, field, value) {
  transform_set(o, field, value)
}

#' @export
.DollarNames.raylibr_transform <- function(x, pattern) {
  c("translation", "rotation", "scale")
}

#' @export
"[.raylibr_transform" <- `$.raylibr_transform`

#' @export
"[[.raylibr_transform" <- `$.raylibr_transform`

#' @export
"[<-.raylibr_transform" <- `$<-.raylibr_transform`

#' @export
"[[<-.raylibr_transform" <- `$<-.raylibr_transform`

#' @export
print.raylibr_transform <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_transform <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("transform(", res, ")")
}

#' @export
is_transform <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_transform"
}
