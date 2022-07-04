# Do not edit by hand


#' @export
is_bone_info <- function(x) {
  typeof(x) == "externalptr" && class(x) == "bone_info"
}
