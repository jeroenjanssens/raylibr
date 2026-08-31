#' Test if object is a model_animation
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_model_animation <- function(x) {
  inherits(x, "model_animation")
}
