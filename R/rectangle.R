# Do not edit by hand

#' Rectangle
#'
#' Create a new `rectangle` object.
#'
#' @param x A number. Rectangle top-left corner position x.
#' @param y A number. Rectangle top-left corner position y.
#' @param width A number. Rectangle width.
#' @param height A number. Rectangle height.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Rectangle {
#'     float x;                // Rectangle top-left corner position x
#'     float y;                // Rectangle top-left corner position y
#'     float width;            // Rectangle width
#'     float height;           // Rectangle height
#' } Rectangle;
#' ```

#' @rdname rectangle
#' @export
rectangle <- function(x, y, width, height) {
  rectangle_(x, y, width, height)
}

rectangle_set <- function(o, field, value) {
  do.call(paste0("rectangle_set_", field, "_"), args = list(o, value))
}

rectangle_get <- function(o, field) {
  do.call(paste0("rectangle_get_", field, "_"), args = list(o))
}

#' @export
"$.rectangle" <- function(o, field) {
  rectangle_get(o, field)
}

#' @export
"$<-.rectangle" <- function(o, field, value) {
  rectangle_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.rectangle <- function(x, pattern) {
  c("x", "y", "width", "height")
}

#' @export
"[.rectangle" <- `$.rectangle`

#' @export
"[[.rectangle" <- `$.rectangle`

#' @export
"[<-.rectangle" <- `$<-.rectangle`

#' @export
"[[<-.rectangle" <- `$<-.rectangle`

#' @export
print.rectangle <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.rectangle <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("rectangle(", res, ")")
}
