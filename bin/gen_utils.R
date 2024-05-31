library(stringr)
library(purrr)
library(glue)
library(dplyr)

families <- c("window", "screen", "monitor", "fps", "cursor", "mode", "shader", "file", "directory", "key", "gamepad", "mouse", "touch", "camera", "draw", "line", "circle", "rectangle", "collision", "image", "color", "text", "texture", "font", "model", "mesh", "material", "audio", "volume", "init", "sound", "wave", "music", "stream", "world", "camera_2d", "camera_3d", "audio_stream")

# need nrow (instead of length)
vec_classes_matrix <- c("Vector2", "Vector3", "Vector4")

# become a vector (and not a list) when vectorized
vec_classes_vector <- c("bool", "unsigned int", "int", "float")

alias_type <- function(x, vectorized = FALSE) {
  if (vectorized) {
    case_when(x %in% vec_classes_matrix ~ "NumericMatrix",
              x == "bool" ~ "BooleanVector",
              x == "int" ~ "NumericVector",
              x == "float" ~ "NumericVector",
              x == "unsigned char" ~ "NumericVector",
              x == "unsigned int" ~ "NumericVector",
              x == "char *" ~ "CharacterVector",
              x == "const char *" ~ "CharacterVector",
              TRUE ~ "List")
  } else {
    case_when(x == "Camera" ~ "Camera3D",
              x == "Quaternion" ~ "Vector4",
              x == "Matrix" ~ "RaylibMatrix",
              x == "RenderTexture2D" ~ "RenderTexture",
              x == "Texture2D" ~ "Texture",
              x == "TextureCubemap" ~ "Texture",
              x == "unsigned char" ~ "unsigned int",
              x == "char *" ~ "const char *",
              TRUE ~ x)
  }
}

# Get function name from function definition
extract_fun <- function(x) {
  str_extract(x, regex("( |\\*)[A-Za-z0-9]*\\(", TRUE)) %>%
  str_sub(2, -2)
}

# Get return type from function definition
extract_return <- function(x)  {
  ret <- str_replace(x, regex("( |\\*)[A-Za-z0-9]*\\(.*$", TRUE), "\\1") %>%
  str_trim() %>%
  alias_type()
}

# Get name and type from parameter
extract_param_type_name <- function(p) {
  p <- str_replace_all(p, "\\*([^ ])", "\\* \\1")
  parts <- unlist(str_split(p, " "))
  name <- tail(parts, 1)
  type <- alias_type(str_c(head(parts, -1), collapse = " "))
  default <- NA
  pointer <- FALSE

  if (name == "void" && type == "") {
    name <- ""
    type <- "void"
  } else if (type %in% c("void *", "const char *")) {

  } else if (str_ends(type, " \\*")) {
    type <- alias_type(str_replace_all(type, " \\*$", ""))
    pointer <- TRUE
  }

  list(
    name = name,
    type = type,
    default = default,
    pointer = pointer
  )
}

# Extract a list of all parameters
extract_params <- function(x) {
  str_extract(x, regex("\\(.*\\)")) %>%
  str_sub(2, -2) %>%
  str_split(", ?") %>%
  unlist() %>%
  str_replace("\\*", "\\* ") %>%
  map(extract_param_type_name) %>%
    set_names(map_chr(., ~ make_rcpp_name(pluck(., "name"))))
}

# Extract a named list that holds all information about a function
parse_fun <- function(x) {
  parts <- unlist(str_split(x, ";"))
  code <- paste0(parts[1], ";")
  comment <- paste0(str_replace(parts[2], regex(" *// *"), ""), ".")

  list(
    code = code,
    name = extract_fun(code),
    ret = extract_return(code),
    params = extract_params(code),
    comment = comment
  )
}

# Generate function documentation for types
make_rd_type <- function(x, is_vectorized = FALSE) {

  first <- case_when(x == "int" ~ "An integer",
                     x == "unsigned int" ~ "A non-negative integer",
                     x == "unsigned char" ~ "An integer between 0 and 255",
                     x == "float" ~ "A number",
                     x == "bool" ~ "A logical",
                     x == "char" ~ "A string",
                     x == "const char *" ~ "A string",
                     x == "AudioStream" ~ "An audio_stream",
                     x == "Image" ~ "An image",
                     x == "Vector2" ~ "A numeric vector of length 2",
                     x == "Vector3" ~ "A numeric vector of length 3",
                     x == "Vector4" ~ "A numeric vector of length 4",
                     x == "RaylibMatrix" ~ "A numeric matrix of 4 by 4",
                     TRUE ~ paste0("A ", make_rcpp_name(x)))

  if (is.null(is_vectorized) || !is_vectorized) {
    return(first)
  }

  second <- case_when(x == "int" ~ "a vector of integers",
                     x == "unsigned int" ~ "a vector of non-negative integers",
                     x == "unsigned char" ~ "a vector of integers between 0 and 255",
                     x == "float" ~ "a vector of numbers",
                     x == "bool" ~ "a vector of logicals",
                     x == "char" ~ "a vector of strings",
                     x == "const char *" ~ "a vector of strings",
                     x == "AudioStream" ~ "a list of audio_streams",
                     x == "Image" ~ "a list of images",
                     x == "Vector2" ~ "a numeric matrix of width 2",
                     x == "Vector3" ~ "a numeric matrix of width 3",
                     x == "Vector4" ~ "a numeric matrix of width 4",
                     x == "RaylibMatrix" ~ "a list of numeric matrices of 4 by 4",
                     TRUE ~ paste0("a list of ", make_rcpp_name(x), "s"))

  return(paste0(first, " or ", second))
}



get_is_function <- function(type) {
  paste0("is_", stringr::str_replace_all(stringr::str_replace_all(make_rcpp_name(alias_type(type)), fixed("*"), "pointer"), " ", "_"))
}

make_check <- function(field, type, argname = field) {
  glue("if (!{get_is_function(type)}({argname})) abort(paste0('`{field}` must be {stringr::str_to_lower(make_rd_type(type))}, not ', friendly_typeof({argname}), '.'), call = NULL)")
}

make_check_vectorized <- function(field, type, argname = field) {
  if (type %in% c("Vector2", "Vector3", "Vector4")) {
    vec_function <- "is_mat"
  } else {
    vec_function <- "is_vec"
  }
  glue("if (!{get_is_function(type)}({argname}) && !{vec_function}({argname}, {get_is_function(type)})) abort(paste0('`{field}` must be {stringr::str_to_lower(make_rd_type(type, TRUE))}, not ', friendly_typeof({argname}), '.'), call = NULL)")
}

make_checks <- function(params) {
  if(params[[1]]$type == "void") return("")
  s <- c()
  for (p in params) {
    if (is.null(p$is_vectorized) || !p$is_vectorized) {
      s <- c(s, indent(make_check(make_rcpp_name(p$name), p$type)))
    } else {
      s <- c(s, indent(make_check_vectorized(make_rcpp_name(p$name), p$type)))
    }
  }
  s <- c(s, "")
  paste0(s, collapse = "\n")
}

# Generate function documentation for parameters
make_rd_params <- function(params, comment = "//") {
  if (params[[1]]$type == "void") return("")
  # params[[1]]$type <- alias_type(params[[1]]$type)

  parts <- c()
  for (p in params) {
    default <- deparse(p$default)
    parts <- c(parts, glue("{comment}' @param {make_rcpp_name(p$name)} {make_rd_type(alias_type(p$type), p$is_vectorized)}.{ifelse(is.null(p$comment), '', paste0(' ', p$comment, '.'))}{ifelse(default == 'NA', '', paste0(' Default: `', default, '`.'))}"))
  }

  paste0(parts, collapse = "\n")
}

# Generate function documentation for return value
make_rd_value <- function(ret, comment = '//') {
  ret <- alias_type(ret)
  if (ret == "void") {
    ""
  } else {
    glue("{comment}' @return {make_rd_type(ret)}\n\n")
  }
}

make_r_params <- function(params) {
  parts <- c()

  for (p in params) {
    if (length(p$default) == 1 && is.na(p$default)) {
      parts <- c(parts, make_rcpp_name(p$name))
    } else {
      parts <- c(parts, glue("{make_rcpp_name(p$name)} = {deparse(p$default)}"))
    }
  }

  paste0(parts, collapse = ", ")
}

# Construct Rcpp code for function parameters
make_rcpp_params <- function(params, types = TRUE, vectorized = FALSE) {
  if (params[[1]]$type == "void") return("")

  s <- c()
  for (p in params) {
    name <- make_rcpp_name(p$name)
    if (vectorized && !is.null(p$is_vectorized) && p$is_vectorized && !types) {

      if (p$type == "Vector2") {
        name <- glue("Vector2{{ as<float>(wrap({name}(i, 0))), as<float>(wrap({name}(i, 1))) }}")
      } else if (p$type == "Vector3") {
        name <- glue("Vector3{{ as<float>(wrap({name}(i, 0))), as<float>(wrap({name}(i, 1))), as<float>(wrap({name}(i, 2))) }}")
      } else if (p$type == "Vector4") {
        name <- glue("Vector4{{ as<float>(wrap({name}(i, 0))), as<float>(wrap({name}(i, 1))), as<float>(wrap({name}(i, 2))), as<float>(wrap({name}(i, 3))) }}")
      } else {
        name <- glue("{name}[i]")
      }

    } else {
      if (p$pointer) {
        name <- glue("&{name}")
      }
      if (!types && !is.null(p$const_cast)) {
        name <- glue("const_cast<{p$const_cast}>({name})")
      }
    }

    s <- c(s, glue("{ifelse(types, paste0(alias_type(p$type, vectorized && !is.null(p$is_vectorized) && p$is_vectorized), ' '), '')}{name}"))
  }

  str_c(s, collapse = ", ")
}

# Construct Rccp code for function name (snake case)
make_rcpp_name <- function(x) {
  stringr::str_replace_all(x, regex("([a-z])([0-9A-Z])"), regex("\\1_\\2")) %>%
  stringr::str_replace_all(regex("([0-9])([^_]{2,})"), regex("\\1_\\2")) %>%
    stringr::str_to_lower()
}

# Generate function documentation for function name (title case)
make_rd_name <- function(x) {
  str_replace_all(x, regex("([a-z])([0-9A-Z])"), regex("\\1 \\2")) %>%
  stringr::str_replace_all(regex("([0-9])([^_]{2,})"), regex("\\1 \\2")) %>%
  str_to_sentence()
}

make_rd_families <- function(fams) {
  if (length(fams) < 1) return("#'")

  s <- c("#'")
  for (fam in fams) {
    s <- c(s, glue("#' @family {fam} functions"))
  }
  s <- c(s, "#'")
  str_c(s, collapse = "\n")
}

make_rd_seealsos <- function(sas) {
  if (length(sas) < 1) return("#'")

  s <- c("#'")
  for (sa in sas) {
    s <- c(s, glue("#' @seealso [{sa}()] for creating {sa} objects."))
  }
  s <- c(s, "#'")
  str_c(s, collapse = "\n")
}

make_as <- function(name) {
  glue("template <> {name} as(SEXP x) {{
    return *XPtr<{name}>(x);
  }};\n\n")
}

make_wrap <- function(name) {
  glue("template <> SEXP wrap(const {name}& x) {{
    {name} *ptr = new {name};
    (*ptr) = x;
    XPtr<{name}>xptr = XPtr<{name}>(ptr, true);
    xptr.attr(\"class\") = \"raylibr_{make_rcpp_name(name)}\";
    return xptr;
  }};\n\n")
}

make_as_wrap_def <- function(name) {
  glue("template <> SEXP wrap(const {name}& x);
        template <> {name} as(SEXP);\n\n")
}

indent <- function(lines) {
  lines <- unlist(str_split(lines, "\n"))
  str_c("  ", lines)
}


