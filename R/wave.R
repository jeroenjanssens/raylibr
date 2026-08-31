#' Test if object is a wave
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_wave <- function(x) {
  inherits(x, "wave")
}
