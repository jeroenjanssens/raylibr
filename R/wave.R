# Do not edit by hand.


#' @export
is_wave <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_wave"
}
