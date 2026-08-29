#!/usr/bin/env Rscript
# Parse raymath.h to produce raymath_api.json with the same schema as raylib_api.json.
# Usage: Rscript data-raw/generate_raymath_api.R

raymath_h <- "inst/raylib-6.0-minimal/src/raymath.h"
if (!file.exists(raymath_h)) {
  message("Extracting raylib tarball to get raymath.h...")
  system2("tar", c("-xf", "inst/raylib-6.0-minimal.tar.gz", "-C", "inst"))
}
stopifnot(file.exists(raymath_h))

lines <- readLines(raymath_h)

rmapi_lines <- grep("^RMAPI\\s", lines, value = TRUE)

parse_function <- function(line) {
  m <- regmatches(line, regexec("^RMAPI\\s+(.+?)\\s+(\\*?)([A-Z][A-Za-z0-9]+)\\(([^)]*)\\)\\s*$", line))[[1]]
  if (length(m) == 0) return(NULL)

  ret_type <- trimws(m[2])
  if (m[3] == "*") ret_type <- paste0(ret_type, " *")
  name <- m[4]
  param_str <- trimws(m[5])

  params <- list()
  if (param_str != "" && param_str != "void") {
    param_parts <- strsplit(param_str, ",")[[1]]
    for (p in param_parts) {
      p <- trimws(p)
      pm <- regmatches(p, regexec("^(.+?)\\s+(\\w+)\\s*$", p))[[1]]
      if (length(pm) == 0) {
        pm <- regmatches(p, regexec("^(.+\\*)\\s*(\\w+)\\s*$", p))[[1]]
      }
      if (length(pm) >= 3) {
        ptype <- trimws(pm[2])
        ptype <- sub("^const\\s+", "", ptype)
        params <- c(params, list(list(type = ptype, name = pm[3])))
      }
    }
  }

  list(
    name = name,
    description = "",
    returnType = ret_type,
    params = if (length(params) > 0) params else list()
  )
}

functions <- Filter(Negate(is.null), lapply(rmapi_lines, parse_function))

out <- list(functions = functions)
jsonlite::write_json(out, "data-raw/raymath_api.json", pretty = TRUE, auto_unbox = TRUE)
message(sprintf("Wrote %d raymath functions to data-raw/raymath_api.json", length(functions)))
