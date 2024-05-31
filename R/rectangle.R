# Do not edit by hand.

#' Rectangle
#'
#' Create a new rectangle object.
#'
#' @param x A number. Rectangle top-left corner position x.
#' @param y A number. Rectangle top-left corner position y.
#' @param width A number. Rectangle width.
#' @param height A number. Rectangle height.
#'
#' @return A rectangle
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Rectangle {
#'     float x;                // Rectangle top-left corner position x
#'     float y;                // Rectangle top-left corner position y
#'     float width;            // Rectangle width
#'     float height;           // Rectangle height
#' } Rectangle;
#' ```
#'
#' @rdname rectangle
#'
#' @family rectangle functions
#'
#' @export
rectangle <- function(x, y, width, height) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_float(height)) abort(paste0('`height` must be a number, not ', friendly_typeof(height), '.'), call = NULL)
  rectangle_(x, y, width, height)
}

rectangle_set <- function(o, field, value) {
  if (field == "x") {
    if (!is_float(value)) abort(paste0('`x` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    rectangle_set_x_(o, value)
  } else if (field == "y") {
    if (!is_float(value)) abort(paste0('`y` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    rectangle_set_y_(o, value)
  } else if (field == "width") {
    if (!is_float(value)) abort(paste0('`width` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    rectangle_set_width_(o, value)
  } else if (field == "height") {
    if (!is_float(value)) abort(paste0('`height` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    rectangle_set_height_(o, value)
  } else {
    abort(paste0("`rectangle` has no property ", field , "."), call = NULL)
  }
}

rectangle_get <- function(o, field) {
  if (field == "x") {
    rectangle_get_x_(o)
  } else if (field == "y") {
    rectangle_get_y_(o)
  } else if (field == "width") {
    rectangle_get_width_(o)
  } else if (field == "height") {
    rectangle_get_height_(o)
  } else {
    abort(paste0("`rectangle` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_rectangle" <- function(o, field) {
  rectangle_get(o, field)
}

#' @export
"$<-.raylibr_rectangle" <- function(o, field, value) {
  rectangle_set(o, field, value)
}

#' @export
.DollarNames.raylibr_rectangle <- function(x, pattern) {
  c("x", "y", "width", "height")
}

#' @export
"[.raylibr_rectangle" <- `$.raylibr_rectangle`

#' @export
"[[.raylibr_rectangle" <- `$.raylibr_rectangle`

#' @export
"[<-.raylibr_rectangle" <- `$<-.raylibr_rectangle`

#' @export
"[[<-.raylibr_rectangle" <- `$<-.raylibr_rectangle`

#' @export
print.raylibr_rectangle <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_rectangle <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("rectangle(", res, ")")
}

#' @export
is_rectangle <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_rectangle"
}
