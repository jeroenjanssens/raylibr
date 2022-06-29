library(stringr)
library(purrr)
library(glue)
library(dplyr)

alias_type <- function(x) {
  case_when(x == "Camera" ~ "Camera3D",
            x == "Quaternion" ~ "Vector4",
            x == "Matrix" ~ "RaylibMatrix",
            x == "RenderTexture2D" ~ "RenderTexture",
            x == "Texture2D" ~ "Texture",
            x == "TextureCubemap" ~ "Texture",
            TRUE ~ x)
}

structs_generate <-
  c("Rectangle",
    "Image",
    "Texture",
    "Font",
    "RenderTexture",
    "NPatchInfo",
    "GlyphInfo",
    "Camera2D",
    "Camera3D",
    "Mesh",
    "Shader",
    "MaterialMap",
    "Material",
    "BoneInfo",
    "Model",
    "ModelAnimation",
    "Wave",
    "AudioStream",
    "Sound",
    "Music"
  )

structs_custom <-
  c("Color",
    "Vector2",
    "Vector3",
    "Vector4",
    "RaylibMatrix"
  )

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
  parts <- str_split(p, " ") %>%
    unlist()

  parts[[1]] <- alias_type(parts[[1]])

  if (parts[[1]] == "void") {
    list(
      name = "",
      type = "void",
      default = NA
    )
  } else {
    list(
      name = tail(parts, 1),
      type = str_c(head(parts, -1), collapse = " "),
      default = NA
    )
  }
}

# Extract a list of all parameters
extract_params <- function(x) {
  str_extract(x, regex("\\(.*\\)")) %>%
  str_sub(2, -2) %>%
  str_split(", ?") %>%
  unlist() %>%
  str_replace("\\*", "\\* ") %>%
  map(extract_param_type_name)
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
make_rd_type <- function(x) {
  case_when(x == "int" ~ "An integer",
            x == "unsigned int" ~ "A non-negative integer",
            x == "float" ~ "A number",
            x == "bool" ~ "A logical",
            x == "const char *" ~ "A string",
            x == "Vector2" ~ "A numeric vector of length 2",
            x == "Vector3" ~ "A numeric vector of length 3",
            x == "Vector4" ~ "A numeric vector of length 4",
            x == "RaylibMatrix" ~ "A numeric matrix of 4 by 4",
            TRUE ~ paste0("A ", make_rcpp_name(x)))
}

# Generate function documentation for parameters
make_rd_params <- function(params, comment = "//") {
  if (params[[1]]$type == "void") return("")
  params[[1]]$type <- alias_type(params[[1]]$type)

  map_chr(params, ~ glue("{comment}' @param {make_rcpp_name(.$name)} {make_rd_type(.$type)}.{ifelse(is.null(.$comment), '', paste0(' ', .$comment, '.'))}{ifelse(is.na(.$default), '', paste0(' Default: `', deparse(.$default), '`.'))}")) %>%
  str_c(collapse = "\n") %>%
    paste0("\n")
}

# Generate function documentation for return value
make_rd_value <- function(ret) {
  ret <- alias_type(ret)
  if (ret == "void") {
    ""
  } else {
    glue("//' @return {make_rd_type(ret)}\n\n")
  }
}

make_r_params <- function(params) {
  parts <- c()

  for (p in params) {
    if (is.na(p$default)) {
      parts <- c(parts, p$name)
    } else {
      parts <- c(parts, glue("{p$name} = {deparse(p$default)}"))
    }
  }

  paste0(parts, collapse = ", ")
}

# Construct Rcpp code for function parameters
make_rcpp_params <- function(params) {
  if (params[[1]]$type == "void") return("")
  params[[1]]$type <- alias_type(params[[1]]$type)
  map_chr(params, ~ paste0(.$type, " ", make_rcpp_name(.$name))) %>%
  str_c(collapse = ", ") %>%
  str_trim()
}

# Construct Rccp code for complete function
make_rcpp_fun <- function(d) {
  pt <- map_chr(d$params, ~ make_rcpp_name(.$name)) %>%
    str_c(collapse = ", ")

  if (pt == "void") pt <- ""

  glue("//' {make_rd_name(d$name)}
       //'
       //' {d$comment}
       //'
       {make_rd_params(d$params)}{make_rd_value(d$ret)}//'
       //' @note This function has been auto-generated from the following Raylib function definition:
       //'
       //' `{d$code}`
       //'
       //' @export
       // [[Rcpp::export]]
       {d$ret} {make_rcpp_name(d$name)}({make_rcpp_params(d$params)}) {{
         return {d$name}({pt});
       }}\n\n")
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
    xptr.attr(\"class\") = \"{make_rcpp_name(name)}\";
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
