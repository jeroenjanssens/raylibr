#' Test if object is a wave
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_wave("not a wave")
#'
#' @export
is_wave <- function(x) {
  inherits(x, "wave")
}
