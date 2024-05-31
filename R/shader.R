# Do not edit by hand.


#' @export
is_shader <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_shader"
}
