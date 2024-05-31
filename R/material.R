# Do not edit by hand.


#' @export
is_material <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_material"
}
