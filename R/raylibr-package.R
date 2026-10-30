#' @keywords internal
#'
#' @section Resource management:
#' Raylib resources such as textures, models, sounds, fonts, and shaders
#' allocate GPU or audio memory that R's garbage collector cannot
#' automatically release. Always call the corresponding `unload_*()`
#' function (e.g., [unload_texture()], [unload_model()]) before
#' calling [close_window()]. Letting resource objects go out of scope
#' without unloading them will leak GPU/audio memory.
"_PACKAGE"

## usethis namespace: start
#' @importFrom Rcpp sourceCpp
#' @importFrom utils .DollarNames
#' @useDynLib raylibr, .registration = TRUE
## usethis namespace: end
NULL

.onLoad <- function(libname, pkgname) {
  # Send Raylib's log messages to R's console instead of stdout, and only
  # show warnings and errors by default
  raylibr_init_logging_()
}
