#' Test if object is a shader
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_shader("not a shader")
#'
#' @eval .family_seealso("is_shader")
#'
#' @export
is_shader <- function(x) {
  inherits(x, "shader")
}
