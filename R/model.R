#' Test if object is a model
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_model("not a model")
#'
#' @export
is_model <- function(x) {
  inherits(x, "model")
}
