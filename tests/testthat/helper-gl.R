# skip_if_no_gl(): replaces skip_on_ci() for tests that open an OpenGL window.
#
# Behaviour:
#   - RAYLIBR_GL unset  → defer to skip_on_ci() (skips on CI, runs locally)
#   - RAYLIBR_GL=false  → always skip (useful to suppress even locally)
#   - RAYLIBR_GL=true   → proceed (CI must have software GL, e.g. Mesa/llvmpipe)
#
# The workflow sets RAYLIBR_GL=true on Linux (Xvfb) and Windows (Mesa llvmpipe).
skip_if_no_gl <- function() {
  gl <- tolower(Sys.getenv("RAYLIBR_GL"))
  if (gl == "false") testthat::skip("RAYLIBR_GL=false")
  if (gl == "true")  return(invisible(NULL))
  testthat::skip_on_ci()
}
