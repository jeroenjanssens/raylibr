#!/usr/bin/env Rscript
# Parse rlgl.h to produce rlgl_api.json with the same schema as raylib_api.json.
# Usage: Rscript data-raw/generate_rlgl_api.R

rlgl_h <- "inst/raylib-6.0-minimal/src/rlgl.h"
if (!file.exists(rlgl_h)) {
  message("Extracting raylib tarball to get rlgl.h...")
  system2("tar", c("-xf", "inst/raylib-6.0-minimal.tar.gz", "-C", "inst"))
}
stopifnot(file.exists(rlgl_h))

lines <- readLines(rlgl_h)

rlapi_lines <- grep("^RLAPI\\s", lines, value = TRUE)
rlapi_lines <- rlapi_lines[!grepl("#define", rlapi_lines)]

parse_function <- function(line) {
  line <- sub("\\s*//\\s*(.*)$", "", line)
  desc <- sub(".*//\\s*", "", grep("//", c(line), value = TRUE))
  original <- line
  line_with_comment <- grep("//", c(original), value = TRUE)
  desc <- if (length(line_with_comment) > 0) {
    sub(".*//\\s*", "", original)
  } else ""
  line <- sub("\\s*//.*$", "", original)

  m <- regmatches(line, regexec("^RLAPI\\s+(.+?)\\s+\\*?(rl\\w+)\\(([^)]*)\\)\\s*;?\\s*$", line))[[1]]
  if (length(m) == 0) return(NULL)

  ret_type <- trimws(m[2])
  if (grepl("\\*\\s*$", ret_type) == FALSE && grepl(paste0("\\*", m[3]), line)) {
    ret_type <- paste0(ret_type, " *")
  }
  name <- m[3]
  param_str <- trimws(m[4])

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
        params <- c(params, list(list(type = trimws(pm[2]), name = pm[3])))
      }
    }
  }

  list(
    name = name,
    description = desc,
    returnType = ret_type,
    params = if (length(params) > 0) params else list()
  )
}

functions <- Filter(Negate(is.null), lapply(rlapi_lines, parse_function))

out <- list(functions = functions)
jsonlite::write_json(out, "data-raw/rlgl_api.json", pretty = TRUE, auto_unbox = TRUE)
message(sprintf("Wrote %d rlgl functions to data-raw/rlgl_api.json", length(functions)))
