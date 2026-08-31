#' Test if object is a model_animation
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_model_animation("not a model_animation")
#'
#' @export
is_model_animation <- function(x) {
  inherits(x, "model_animation")
}
