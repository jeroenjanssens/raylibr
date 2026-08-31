#' Test if object is a music
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' m <- load_music_stream("music.mp3")
#' is_music(m)
#' }
#'
#' @export
is_music <- function(x) {
  inherits(x, "music")
}
