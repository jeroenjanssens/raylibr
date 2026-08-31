#' Test if object is a audio_stream
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_audio_stream("not a audio_stream")
#'
#' @export
is_audio_stream <- function(x) {
  inherits(x, "audio_stream")
}
