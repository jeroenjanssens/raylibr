#' Test if object is a shader
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' s <- load_shader("", "shader.fs")
#' is_shader(s)
#' }
#'
#' @export
is_shader <- function(x) {
  inherits(x, "shader")
}
