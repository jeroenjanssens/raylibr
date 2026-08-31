#' Test if object is a music
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_music("not a music")
#'
#' @export
is_music <- function(x) {
  inherits(x, "music")
}
