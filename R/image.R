#' Test if object is a image
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_image <- function(x) {
  inherits(x, "image")
}
