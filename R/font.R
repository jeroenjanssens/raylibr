#' Test if object is a font
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_font("not a font")
#'
#' @export
is_font <- function(x) {
  inherits(x, "font")
}
