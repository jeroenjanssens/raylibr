# Do not edit by hand.


#' @export
is_model <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_model"
}
