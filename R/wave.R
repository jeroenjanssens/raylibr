#' Test if object is a wave
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' w <- load_wave("sound.wav")
#' is_wave(w)
#' }
#'
#' @export
is_wave <- function(x) {
  inherits(x, "wave")
}
