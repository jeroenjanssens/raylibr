# Do not edit by hand.


#' @export
is_music <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_music"
}
