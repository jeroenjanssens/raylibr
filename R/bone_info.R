#' Test if object is a bone_info
#'
#' @param x An object to test.
#'
#' @return A logical.
#'
#' @examples
#' is_bone_info("not a bone_info")
#'
#' @export
is_bone_info <- function(x) {
  inherits(x, "bone_info")
}
