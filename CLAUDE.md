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

Tests are headless (no window needed). The test suite covers structs, types, enums, colors, validation, and webR helpers.

## Key design decisions

- snake_case function names (auto-converted from PascalCase)
- R numeric vectors as Raylib Vector2/3/4
- R color names work anywhere a color is expected
- Split C++ files for parallel compilation
- webR: `run_game_loop()` provides callback-based loop for Emscripten
