#' Test if object is a sound
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' s <- load_sound("sound.wav")
#' is_sound(s)
#' }
#'
#' @export
is_sound <- function(x) {
  inherits(x, "sound")
}
