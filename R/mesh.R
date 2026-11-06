#' Test if object is a mesh
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_mesh("not a mesh")
#'
#' @eval .family_seealso("is_mesh")
#'
#' @export
is_mesh <- function(x) {
  inherits(x, "mesh")
}
