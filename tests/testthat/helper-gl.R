# skip_if_no_gl(): for tests that open an OpenGL window.
#
# Behaviour:
#   - RAYLIBR_GL=true   → run (CI sets this once software GL is available,
#                         e.g. Xvfb on Linux or Mesa/llvmpipe on Windows)
#   - RAYLIBR_GL=false  → skip
#   - otherwise         → skip on CRAN (no display on its check machines), on
#                         CI, and on Linux without a display; run elsewhere,
#                         e.g. testthat::test_local() on a desktop
skip_if_no_gl <- function() {
  gl <- tolower(Sys.getenv("RAYLIBR_GL"))
  if (gl == "true") return(invisible(NULL))
  if (gl == "false") testthat::skip("RAYLIBR_GL=false")
  testthat::skip_on_cran()
  testthat::skip_on_ci()
  if (Sys.info()[["sysname"]] == "Linux" && !nzchar(Sys.getenv("DISPLAY"))) {
    testthat::skip("No display")
  }
  invisible(NULL)
}
