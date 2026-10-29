# _setup.R — shared knitr engine definitions for raylibr guide vignettes.
# Source this file once in the setup chunk of each guide:
#   source("_setup.R")

.make_raylib_engine <- function(fn_name) {
  function(options) {
    code <- paste(options$code, collapse = "\n")
    show_code <- !isFALSE(options$echo)
    img_out <- ""

    if (isTRUE(options$eval)) {
      env <- if (!is.null(options$envir)) options$envir else knitr::knit_global()
      img <- eval(
        parse(text = paste0(fn_name, "(function() {\n", code, "\n})")),
        envir = env
      )
      img_out <- paste0("\n\n", as.character(knitr::knit_print(img)))
    }

    if (show_code) {
      paste0("```r\n", code, "\n```", img_out)
    } else {
      img_out
    }
  }
}

knitr::knit_engines$set(
  raylib   = .make_raylib_engine("raylibr_screenshot"),
  raylib3d = .make_raylib_engine("raylibr_screenshot_3d")
)
