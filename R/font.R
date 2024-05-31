# Do not edit by hand.


#' @export
is_font <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_font"
}
