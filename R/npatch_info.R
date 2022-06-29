# Do not edit by hand

#' Npatch info
#'
#' Create a new `npatch_info` object.
#'
#' @param source A rectangle. Texture source rectangle.
#' @param left An integer. Left border offset.
#' @param top An integer. Top border offset.
#' @param right An integer. Right border offset.
#' @param bottom An integer. Bottom border offset.
#' @param layout An integer. Layout of the n-patch: 3x3, 1x3 or 3x1.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
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

#' @rdname npatch_info
#' @export
npatch_info <- function(source, left, top, right, bottom, layout) {
  npatch_info_(source, left, top, right, bottom, layout)
}

npatch_info_set <- function(o, field, value) {
  do.call(paste0("npatch_info_set_", field, "_"), args = list(o, value))
}

npatch_info_get <- function(o, field) {
  do.call(paste0("npatch_info_get_", field, "_"), args = list(o))
}

#' @export
"$.npatch_info" <- function(o, field) {
  npatch_info_get(o, field)
}

#' @export
"$<-.npatch_info" <- function(o, field, value) {
  npatch_info_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.npatch_info <- function(x, pattern) {
  c("source", "left", "top", "right", "bottom", "layout")
}

#' @export
"[.npatch_info" <- `$.npatch_info`

#' @export
"[[.npatch_info" <- `$.npatch_info`

#' @export
"[<-.npatch_info" <- `$<-.npatch_info`

#' @export
"[[<-.npatch_info" <- `$<-.npatch_info`

#' @export
print.npatch_info <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.npatch_info <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("npatch_info(", res, ")")
}
