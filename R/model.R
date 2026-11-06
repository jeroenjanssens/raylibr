#' Test if object is a model
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_model("not a model")
#'
#' @eval .family_seealso("is_model")
#'
#' @export
is_model <- function(x) {
  inherits(x, "model")
}
