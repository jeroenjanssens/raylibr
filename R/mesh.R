#' Test if object is a mesh
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_mesh <- function(x) {
  inherits(x, "mesh")
}
