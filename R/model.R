#' @export
is_model <- function(x) {
  inherits(x, "model")
}
