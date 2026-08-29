#!/usr/bin/env Rscript
# Parse raygui.h to produce raygui_api.json with the same schema as raylib_api.json.
# Usage: Rscript data-raw/generate_raygui_api.R

raygui_h <- "inst/raygui.h"
if (!file.exists(raygui_h)) {
  stop("inst/raygui.h not found. Download it first.")
}

lines <- readLines(raygui_h)

# --- Parse functions ---

rayguiapi_lines <- grep("^RAYGUIAPI\\s", lines, value = TRUE)

parse_function <- function(line) {
  # Strip trailing comment and semicolon
  line <- sub("\\s*//.*$", "", line)
  line <- sub(";\\s*$", "", line)
  line <- trimws(line)
  m <- regmatches(line, regexec(
    "^RAYGUIAPI\\s+(.+?)\\s+(\\*?)([A-Z][A-Za-z0-9]+)\\(([^)]*)\\)\\s*$", line))[[1]]
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
      # Extract name (last word) and type (everything before it)
      # Handle: "float *value", "const char *text", "Rectangle bounds", "bool editMode"
      pm <- regmatches(p, regexec("^(.+?)\\s*\\*\\s*(\\w+)$", p))[[1]]
      if (length(pm) >= 3) {
        # Pointer param: "float *value" or "const char *text"
        ptype <- paste0(trimws(pm[2]), " *")
        pname <- pm[3]
      } else {
        # Non-pointer param: "Rectangle bounds"
        pm <- regmatches(p, regexec("^(.+)\\s+(\\w+)$", p))[[1]]
        if (length(pm) < 3) next
        ptype <- trimws(pm[2])
        pname <- pm[3]
      }
      # Strip const from non-pointer types
      if (!grepl("\\*", ptype)) {
        ptype <- sub("^const\\s+", "", ptype)
      }
      params <- c(params, list(list(type = ptype, name = pname)))
    }
  }

  list(
    name = name,
    description = "",
    returnType = ret_type,
    params = if (length(params) > 0) params else list()
  )
}

functions <- Filter(Negate(is.null), lapply(rayguiapi_lines, parse_function))

# --- Parse enums ---

enum_blocks <- list()
in_enum <- FALSE
current_enum <- NULL
current_values <- list()
current_value <- 0L

for (line in lines) {
  if (grepl("^typedef enum \\{", line) || grepl("^typedef enum$", line)) {
    in_enum <- TRUE
    current_values <- list()
    current_value <- 0L
    next
  }

  if (in_enum && grepl("^\\} (\\w+);", line)) {
    m <- regmatches(line, regexec("^\\} (\\w+);", line))[[1]]
    current_enum <- m[2]
    enum_blocks[[length(enum_blocks) + 1]] <- list(
      name = current_enum,
      values = current_values
    )
    in_enum <- FALSE
    next
  }

  if (in_enum) {
    # Match: NAME = value, or NAME,
    m <- regmatches(line, regexec("^\\s+(\\w+)\\s*=\\s*(-?\\d+|0x[0-9a-fA-F]+)", line))[[1]]
    if (length(m) >= 3) {
      val_name <- m[2]
      val_str <- m[3]
      if (grepl("^0x", val_str)) {
        current_value <- strtoi(val_str, base = 16L)
      } else {
        current_value <- as.integer(val_str)
      }
      current_values[[length(current_values) + 1]] <- list(
        name = val_name,
        value = current_value
      )
      current_value <- current_value + 1L
      next
    }
    # Match: NAME, (auto-increment)
    m2 <- regmatches(line, regexec("^\\s+(\\w+)\\s*[,}]?\\s*", line))[[1]]
    if (length(m2) >= 2 && !grepl("^//", trimws(line))) {
      val_name <- m2[2]
      if (nchar(val_name) > 1 && val_name == toupper(val_name)) {
        current_values[[length(current_values) + 1]] <- list(
          name = val_name,
          value = current_value
        )
        current_value <- current_value + 1L
      }
    }
  }
}

# Also try to extract descriptions from comments above RAYGUIAPI lines
for (i in seq_along(functions)) {
  fn_name <- functions[[i]]$name
  idx <- grep(paste0("RAYGUIAPI.*\\b", fn_name, "\\("), lines)
  if (length(idx) > 0) {
    comment_line <- lines[idx[1]]
    m <- regmatches(comment_line, regexec("//\\s*(.+)$", comment_line))[[1]]
    if (length(m) >= 2) {
      functions[[i]]$description <- trimws(m[2])
    }
  }
}

out <- list(functions = functions, enums = enum_blocks)
jsonlite::write_json(out, "data-raw/raygui_api.json", pretty = TRUE, auto_unbox = TRUE)
message(sprintf("Wrote %d raygui functions and %d enums to data-raw/raygui_api.json",
                length(functions), length(enum_blocks)))
