#' Test if object is a vr_stereo_config
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_vr_stereo_config <- function(x) {
  inherits(x, "vr_stereo_config")
}
