# Generate src/_wrappers.cpp

source(here::here("bin", "gen_utils.R"))

filename <- here::here("src", "_wrappers.cpp")
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(c(
  "// Do not edit by hand",
  "",
  "#include \"raylibr.h\"",
  "",
  "using namespace Rcpp;",
  "",
  "namespace Rcpp {",
  ""),
  con)

  for (name in sort(structs_generate)) {
    writeLines(indent(make_as(name)), con)
    writeLines(indent(make_wrap(name)), con)
  }

writeLines("}\n", con)

close(con)
Sys.chmod(filename, "444")
