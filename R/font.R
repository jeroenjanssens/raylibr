#' Test if object is a font
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' f <- get_font_default()
#' is_font(f)
#' }
#'
#' @export
is_font <- function(x) {
  inherits(x, "font")
}
