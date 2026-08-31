#' Test if object is a music
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_music <- function(x) {
  inherits(x, "music")
}
