## Submission

This is a new submission.

raylibr wraps raylib (<https://www.raylib.com/>), a C library for games and
interactive graphics, giving R functions for 2D/3D drawing, input, audio and
GUI controls.

## Bundled code

* raylib 6.0 is bundled as `inst/raylib-6.0-minimal.tar.gz` and compiled
  during installation with R's compiler and flags (`CC`, `AR`, `CFLAGS`,
  `CPICFLAGS`). It is the official 6.0 release without window backends and
  libraries raylibr does not use (see `data-raw/make_raylib_tarball.R` in
  the repository). Building it needs GNU make, OpenGL and, on Linux, X11
  development libraries, as declared in SystemRequirements.
* raylib bundles several libraries (GLFW, miniaudio, stb, dr_libs and
  others). Their authors are listed in Authors@R with role "cph", and each
  library, its license and copyright are listed in `inst/COPYRIGHTS`.
* raylib's log output is routed through `REprintf()`, and raygui's printf
  logging is disabled, so compiled code does not write to stdout.

## Examples, tests and downloads

* Functions that draw or open a window need an OpenGL context. Their
  examples and tests only run in interactive sessions or when the
  environment variable `RAYLIBR_GL` is `"true"` (set on our CI, which has a
  virtual display or software OpenGL). On CRAN they are skipped.
  Examples of functions that need no window run normally.
* The demos (`demo(package = "raylibr")`) use image, font, sound and shader
  files that are not included, to keep the package small.
  `raylibr_resource()` downloads them from the GitHub repository on first
  use into `tools::R_user_dir("raylibr", "cache")`. No example or test
  downloads anything.

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new submission.

The package was checked on GitHub Actions (Windows, macOS, Ubuntu with R
release and R-devel), win-builder (R-devel) and R-hub.
