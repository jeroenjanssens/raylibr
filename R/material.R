#' Test if object is a material
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @export
is_material <- function(x) {
  inherits(x, "material")
}
