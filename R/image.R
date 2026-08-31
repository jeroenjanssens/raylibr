#' Test if object is a image
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' i <- gen_image_color(100, 100, "blue")
#' is_image(i)
#' }
#'
#' @export
is_image <- function(x) {
  inherits(x, "image")
}
