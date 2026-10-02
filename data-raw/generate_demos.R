#!/usr/bin/env Rscript
# Generate webR demo HTML pages from R scripts in inst/examples/.
# Run from the package root: Rscript data-raw/generate_demos.R

devtools::load_all()

outdir <- "pkgdown/assets/wasm"

demos <- list(
  list(name = "hello"),
  list(name = "balls"),
  list(name = "shader"),
  list(name = "cubes"),
  list(name = "mouse",     cursor = "crosshair"),
  list(name = "snake"),
  list(name = "tetris"),
  list(name = "stroop",    background = "#fff"),
  list(name = "julia"),
  list(name = "gui",       background = "#ddd", cursor = "default"),
  list(name = "raycaster", cursor = "crosshair"),
  list(name = "beatbox")
)

for (d in demos) {
  args <- list(
    script = file.path("inst/examples", paste0(d$name, ".R")),
    output = file.path(outdir, paste0(d$name, ".html"))
  )
  if (!is.null(d$background)) args$background <- d$background
  if (!is.null(d$cursor))     args$cursor     <- d$cursor
  do.call(export_html, args)
}
