# Do not edit by hand.

#' Color
#'
#' Create a new color object.
#'
#' @param r A non-negative integer. Color red value.
#' @param g A non-negative integer. Color green value.
#' @param b A non-negative integer. Color blue value.
#' @param a A non-negative integer. Color alpha value.
#'
#' @return A color
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Color {
#'     unsigned char r;        // Color red value
#'     unsigned char g;        // Color green value
#'     unsigned char b;        // Color blue value
#'     unsigned char a;        // Color alpha value
#' } Color;
#' ```
#'
#' @rdname color
#'
#' @family color functions
#'
#' @export
color <- function(r, g, b, a) {
  if (!is_unsigned_int(r)) abort(paste0('`r` must be a non-negative integer, not ', friendly_typeof(r), '.'), call = NULL)
  if (!is_unsigned_int(g)) abort(paste0('`g` must be a non-negative integer, not ', friendly_typeof(g), '.'), call = NULL)
  if (!is_unsigned_int(b)) abort(paste0('`b` must be a non-negative integer, not ', friendly_typeof(b), '.'), call = NULL)
  if (!is_unsigned_int(a)) abort(paste0('`a` must be a non-negative integer, not ', friendly_typeof(a), '.'), call = NULL)
  color_(r, g, b, a)
}

color_set <- function(o, field, value) {
  if (field == "r") {
    if (!is_unsigned_int(value)) abort(paste0('`r` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    color_set_r_(o, value)
  } else if (field == "g") {
    if (!is_unsigned_int(value)) abort(paste0('`g` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    color_set_g_(o, value)
  } else if (field == "b") {
    if (!is_unsigned_int(value)) abort(paste0('`b` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    color_set_b_(o, value)
  } else if (field == "a") {
    if (!is_unsigned_int(value)) abort(paste0('`a` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    color_set_a_(o, value)
  } else {
    abort(paste0("`color` has no property ", field , "."), call = NULL)
  }
}

color_get <- function(o, field) {
  if (field == "r") {
    color_get_r_(o)
  } else if (field == "g") {
    color_get_g_(o)
  } else if (field == "b") {
    color_get_b_(o)
  } else if (field == "a") {
    color_get_a_(o)
  } else {
    abort(paste0("`color` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_color" <- function(o, field) {
  color_get(o, field)
}

#' @export
"$<-.raylibr_color" <- function(o, field, value) {
  color_set(o, field, value)
}

#' @export
.DollarNames.raylibr_color <- function(x, pattern) {
  c("r", "g", "b", "a")
}

#' @export
"[.raylibr_color" <- `$.raylibr_color`

#' @export
"[[.raylibr_color" <- `$.raylibr_color`

#' @export
"[<-.raylibr_color" <- `$<-.raylibr_color`

#' @export
"[[<-.raylibr_color" <- `$<-.raylibr_color`

#' @export
print.raylibr_color <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_color <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("color(", res, ")")
}
