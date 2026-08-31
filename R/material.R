#' Test if object is a material
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_material("not a material")
#'
#' @export
is_material <- function(x) {
  inherits(x, "material")
}
