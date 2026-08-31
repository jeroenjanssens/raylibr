#' Test if object is a bone_info
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' \dontrun{
#' is_bone_info(x)
#' }
#'
#' @export
is_bone_info <- function(x) {
  inherits(x, "bone_info")
}
