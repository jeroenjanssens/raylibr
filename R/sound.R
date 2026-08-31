#' Test if object is a sound
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_sound <- function(x) {
  inherits(x, "sound")
}
