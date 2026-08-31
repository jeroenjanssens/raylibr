#' Test if object is a vr_device_info
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_vr_device_info("not a vr_device_info")
#'
#' @export
is_vr_device_info <- function(x) {
  inherits(x, "vr_device_info")
}
