#' @export
is_image <- function(x) {
  inherits(x, "image")
}
