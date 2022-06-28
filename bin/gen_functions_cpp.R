# Generate src/_functions.cpp

source(here::here("bin", "gen_utils.R"))

filename <- here::here("src", "_functions.cpp")
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(c(
  "// Do not edit by hand",
  "",
  "#include \"raylibr.h\"",
  ""),
  con)

lines <- readLines(here::here("bin", "raylib_funs.txt"))

for (line in lines) {
  if (str_starts(line, "#")) next
  line <- str_replace(line, regex(" ?R[LM]API ?"), "")
  writeLines(make_rcpp_fun(parse_fun(line)), con)
}


close(con)
Sys.chmod(filename, "444")
