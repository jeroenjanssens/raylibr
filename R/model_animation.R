# Do not edit by hand.


#' @export
is_model_animation <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_model_animation"
}
