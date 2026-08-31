#' Test if object is a model
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' m <- load_model("model.obj")
#' is_model(m)
#' }
#'
#' @export
is_model <- function(x) {
  inherits(x, "model")
}
