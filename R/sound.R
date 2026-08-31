#' Test if object is a sound
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_sound("not a sound")
#'
#' @export
is_sound <- function(x) {
  inherits(x, "sound")
}
