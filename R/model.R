#' Test if object is a model
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_model <- function(x) {
  inherits(x, "model")
}
