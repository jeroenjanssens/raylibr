#' Test if object is a audio_stream
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' a <- load_audio_stream(44100L, 16L, 1L)
#' is_audio_stream(a)
#' }
#'
#' @export
is_audio_stream <- function(x) {
  inherits(x, "audio_stream")
}
