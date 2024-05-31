# Do not edit by hand.

#' Npatch info
#'
#' Create a new npatch_info object.
#'
#' @param source A rectangle. Texture source rectangle.
#' @param left An integer. Left border offset.
#' @param top An integer. Top border offset.
#' @param right An integer. Right border offset.
#' @param bottom An integer. Bottom border offset.
#' @param layout An integer. Layout of the n-patch: 3x3, 1x3 or 3x1.
#'
#' @return A npatch_info
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct NPatchInfo {
#'     Rectangle source;       // Texture source rectangle
#'     int left;               // Left border offset
#'     int top;                // Top border offset
#'     int right;              // Right border offset
#'     int bottom;             // Bottom border offset
#'     int layout;             // Layout of the n-patch: 3x3, 1x3 or 3x1
#' } NPatchInfo;
#' ```
#'
#' @rdname npatch_info
#'
#' @family npatch_info functions
#'
#' @export
npatch_info <- function(source, left, top, right, bottom, layout) {
  if (!is_rectangle(source)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(source), '.'), call = NULL)
  if (!is_int(left)) abort(paste0('`left` must be an integer, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_int(top)) abort(paste0('`top` must be an integer, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_int(right)) abort(paste0('`right` must be an integer, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_int(bottom)) abort(paste0('`bottom` must be an integer, not ', friendly_typeof(bottom), '.'), call = NULL)
  if (!is_int(layout)) abort(paste0('`layout` must be an integer, not ', friendly_typeof(layout), '.'), call = NULL)
  npatch_info_(source, left, top, right, bottom, layout)
}

npatch_info_set <- function(o, field, value) {
  if (field == "source") {
    if (!is_rectangle(value)) abort(paste0('`source` must be a rectangle, not ', friendly_typeof(value), '.'), call = NULL)
    npatch_info_set_source_(o, value)
  } else if (field == "left") {
    if (!is_int(value)) abort(paste0('`left` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    npatch_info_set_left_(o, value)
  } else if (field == "top") {
    if (!is_int(value)) abort(paste0('`top` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    npatch_info_set_top_(o, value)
  } else if (field == "right") {
    if (!is_int(value)) abort(paste0('`right` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    npatch_info_set_right_(o, value)
  } else if (field == "bottom") {
    if (!is_int(value)) abort(paste0('`bottom` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    npatch_info_set_bottom_(o, value)
  } else if (field == "layout") {
    if (!is_int(value)) abort(paste0('`layout` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
    npatch_info_set_layout_(o, value)
  } else {
    abort(paste0("`npatch_info` has no property ", field , "."), call = NULL)
  }
}

npatch_info_get <- function(o, field) {
  if (field == "source") {
    npatch_info_get_source_(o)
  } else if (field == "left") {
    npatch_info_get_left_(o)
  } else if (field == "top") {
    npatch_info_get_top_(o)
  } else if (field == "right") {
    npatch_info_get_right_(o)
  } else if (field == "bottom") {
    npatch_info_get_bottom_(o)
  } else if (field == "layout") {
    npatch_info_get_layout_(o)
  } else {
    abort(paste0("`npatch_info` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_npatch_info" <- function(o, field) {
  npatch_info_get(o, field)
}

#' @export
"$<-.raylibr_npatch_info" <- function(o, field, value) {
  npatch_info_set(o, field, value)
}

#' @export
.DollarNames.raylibr_npatch_info <- function(x, pattern) {
  c("source", "left", "top", "right", "bottom", "layout")
}

#' @export
"[.raylibr_npatch_info" <- `$.raylibr_npatch_info`

#' @export
"[[.raylibr_npatch_info" <- `$.raylibr_npatch_info`

#' @export
"[<-.raylibr_npatch_info" <- `$<-.raylibr_npatch_info`

#' @export
"[[<-.raylibr_npatch_info" <- `$<-.raylibr_npatch_info`

#' @export
print.raylibr_npatch_info <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_npatch_info <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("npatch_info(", res, ")")
}

#' @export
is_npatch_info <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_npatch_info"
}
