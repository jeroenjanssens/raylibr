# raylibr Development Guide

## Project overview

`raylibr` is an R package that wraps Raylib 6.0 via Rcpp. Most of the C++ and R code is auto-generated from `data-raw/raylib_api.json` by `data-raw/generate.R`.

## Code generation

After editing `data-raw/generate.R` or `data-raw/raylib_api.json`, regenerate all bindings:

```r
Rscript data-raw/generate.R
Rscript -e 'Rcpp::compileAttributes()'
Rscript -e 'roxygen2::roxygenise()'
```

Generated files (do not edit by hand):
- `src/structs.cpp`, `src/{core,shapes,textures,text,models,audio}.cpp`
- `R/functions.R`, `R/enums.R`, per-struct R files
- `inst/include/raylibr_types.h`

Hand-maintained files:
- `src/types.cpp` — Vector2/3/4, RaylibMatrix, Color conversions
- `src/rcolors.cpp` — R color name map
- `src/web.cpp` — Emscripten/webR bridge
- `R/extra.R` — Manual wrappers (set_shader_value, load_font_ex, run_game_loop, etc.)
- `R/is.R` — Type predicates

## Building

The package bundles Raylib source in `inst/raylib-6.0-minimal.tar.gz`. It's extracted and compiled during `R CMD INSTALL`. If you get stale build artifacts, delete `src/raylib_built` and reinstall.

## Testing

```r
Rscript -e 'testthat::test_local()'
```

Tests that open a window use `skip_if_no_gl()` (`tests/testthat/helper-gl.R`): they run locally on a desktop, skip on CRAN and CI, and always run with `RAYLIBR_GL=true` (CI sets this after starting Xvfb or installing Mesa).

## Website

Examples and guides only render images when `raylibr:::has_display()` is `TRUE`, which in non-interactive sessions requires `RAYLIBR_GL=true`:

```r
RAYLIBR_GL=true RAYLIBR_ASSETS=$PWD/assets Rscript -e 'pkgdown::build_site()'
```

## Demo assets

Textures, fonts, sounds, shaders and the model used by the demos live in `assets/`, which is not part of the package (CRAN's size limit). `raylibr_resource()` downloads them on first use into `tools::R_user_dir("raylibr", "cache")`, or reads them from `RAYLIBR_ASSETS` if set. `inst/assets.txt` lists every file in `assets/`; update it when adding or removing assets (a test checks this). The webR build bundles `assets/` into the webR package.

## Key design decisions

- snake_case function names (auto-converted from PascalCase)
- R numeric vectors as Raylib Vector2/3/4
- R color names work anywhere a color is expected
- Split C++ files for parallel compilation
- webR: `run_game_loop()` provides callback-based loop for Emscripten
