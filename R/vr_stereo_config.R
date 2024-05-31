# Do not edit by hand.


#' @export
is_vr_stereo_config <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_vr_stereo_config"
}
