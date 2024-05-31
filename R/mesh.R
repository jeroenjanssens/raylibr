# Do not edit by hand.


#' @export
is_mesh <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_mesh"
}
