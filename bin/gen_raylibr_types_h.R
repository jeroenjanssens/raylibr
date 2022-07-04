# Generate inst/include/raylibr_types.h

source(here::here("bin", "gen_utils.R"))

filename <- here::here("inst", "include", "raylibr_types.h")
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(c(
  "// Do not edit by hand",
  "",
  "#include <raylib.h>",
  "",
  "typedef Matrix RaylibMatrix;",
  "#undef DEG2RAD",
  "",
  "#include <RcppCommon.h>",
  "",
  "#ifndef __RAYLIB_TYPES__",
  "#define __RAYLIB_TYPES__",
  "",
  "using namespace Rcpp;",
  "",
  "namespace Rcpp {",
  ""),
  con)

  for (name in sort(c(structs_generate, structs_custom))) {
    writeLines(indent(make_as_wrap_def(name)), con)
  }

writeLines(c(
  "}",
  "",
  "#endif"),
  con)

flush(con)
close(con)
#  Sys.chmod(filename, "444")
