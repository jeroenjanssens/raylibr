# Do not edit by hand.


#' @export
is_vr_device_info <- function(x) {
  typeof(x) == "externalptr" && class(x) == "vr_device_info"
}
