#' @export
is_audio_stream <- function(x) {
  inherits(x, "audio_stream")
}
