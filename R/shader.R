#' @export
is_shader <- function(x) {
  inherits(x, "shader")
}
