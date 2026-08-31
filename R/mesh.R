#' Test if object is a mesh
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' m <- gen_mesh_cube(1.0, 1.0, 1.0)
#' is_mesh(m)
#' }
#'
#' @export
is_mesh <- function(x) {
  inherits(x, "mesh")
}
