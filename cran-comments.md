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
  development libraries, as declared in SystemRequirements. On Linux,
  `configure` checks for the needed X11 extension and OpenGL headers and
  stops with a message naming the missing headers and the packages that
  provide them.
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

## Test environments

* GitHub Actions: macOS (R release), Windows (R release), Ubuntu (R release
  and R-devel). Windows and Ubuntu run the window tests and examples with
  software OpenGL (Mesa llvmpipe / Xvfb).
* R-hub: linux (R-devel), macos-arm64 (R-devel), windows (R-devel), gcc16,
  clang23, clang-ubsan, gcc-asan, lto, nosuggests.
* win-builder: R-devel and R-release.
* Local: macOS (R 4.5.1), `R CMD check --as-cran`.

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new submission.

All R-hub platforms, including the sanitizer builds (clang-ubsan, gcc-asan),
report Status: OK.

TODO before submitting: replace this line with the win-builder results from
the email (R-devel and R-release).
