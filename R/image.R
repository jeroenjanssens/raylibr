#' Test if object is a image
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_image("not a image")
#'
#' @export
is_image <- function(x) {
  inherits(x, "image")
}
