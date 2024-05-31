# Do not edit by hand.


#' @export
is_image <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_image"
}
