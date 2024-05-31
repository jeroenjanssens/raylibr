# Do not edit by hand.


#' @export
is_audio_stream <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_audio_stream"
}
