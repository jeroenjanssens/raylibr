# Generate classes in src/ and R/

source(here::here("bin", "gen_utils.R"))

structs_generate <-
  c("Rectangle",
    "Color",
    # "Image",
    "Texture",
    # "Font",
    "RenderTexture",
    "NPatchInfo",
    "GlyphInfo",
    "Camera2D",
    "Camera3D",
    # "Mesh",
    # "Shader",
    "MaterialMap",
    # "Material",
    # "BoneInfo",
    # "Model",
    # "ModelAnimation",
    # "Wave",
    # "AudioStream",
    "Sound",
    "RayCollision",
    "Transform",
    "BoundingBox",
    "Ray"
    # "Music"
  )
# Parse structs in raylib.h -----------------------------------------------

lines <- readLines(here::here("bin", "raylib.h.txt"))

current_struct <- NULL
struct_lines <- c()
classes <- list()
properties <- list()

for (line in lines) {

  if (is.null(current_struct)) {
    if (str_detect(line, "^typedef struct .* \\{")) {
      struct_name <- unlist(str_split(line, " "))[3]
      if (struct_name %in% structs_generate) {
        current_struct <- struct_name
        struct_lines <- c(struct_lines, line)
        class_name <- make_rcpp_name(struct_name)
      } else {
        cat("Remove: ", struct_name, "\n")
        unlink(here::here("R", glue("{make_rcpp_name(struct_name)}.R")), force = TRUE)
        unlink(here::here("src", glue("{make_rcpp_name(struct_name)}.cpp")), force = TRUE)
      }
    }
  } else {
    # We are currently inside a struct definition

    struct_lines <- c(struct_lines, line)
    if (str_detect(line, glue("^\\}} {struct_name};"))) {
      # Reached end of definition, save

      classes[[class_name]] <- list(
        class_name = class_name,
        struct_name = struct_name,
        properties = properties,
        struct_lines = struct_lines,
        create_constructor = TRUE,
        create_is_function = TRUE
      )

      # reset
      current_struct <- NULL
      struct_lines <- c()
      properties <- list()

    } else if (str_detect(line, ";")) {
      # Line contains a struct field

      field <- str_trim(unlist(str_split(line, ";"))[1])
      comment <- str_trim(unlist(str_split(line, "//"))[2])

      f <- extract_param_type_name(field)
      f$rcpp_name <- make_rcpp_name(f$name)
      f$comment <- comment
      f$default <- NA
      properties <- append(properties, list(f))
      names(properties)[length(properties)] <- make_rcpp_name(f$name)
    }
  }
}


# Customizations ----------------------------------------------------------

classes$camera_2d$properties$zoom$default <- 1.0
classes$camera_2d$properties$zoom$comment <- "Camera zoom (scaling)"

classes$camera_3d$properties$fovy$default <- 70
classes$camera_3d$properties$target$default <- (c(0, 0, 0))
classes$camera_3d$properties$up$default <- c(0, 1, 0)
classes$camera_3d$properties$projection$default <- 0
classes$camera_3d$properties$projection$comment <- "Camera projection: either `camera_projection$perspective` (0) or `camera_projection$orthographic` (1)"

classes$vector_2 <- NULL

classes$color$create_is_function <- FALSE
#classes$image$create_constructor <- FALSE
#classes$image$properties$data <- NULL



# Generate R files --------------------------------------------------------


for (cls in classes) {
  # Create R/{class_name}.R

  filename <- here::here("R", glue("{cls$class_name}.R"))
  Sys.chmod(filename, "644")
  file.create(filename)
  con <- file(filename, open = "wt")

  writeLines(glue("
    # Do not edit by hand

    #' {make_rd_name(cls$struct_name)}
    #'
    #' Create a new `{cls$class_name}` object.
    #'
    {make_rd_params(cls$properties, comment = '#')}
    #'
    {make_rd_value(cls$class_name, comment = '#')}#'
    #' @note This class has been auto-generated from the following Raylib struct definition:
    #'
"), con)

  writeLines(c("#' ```", str_c("#' ", cls$struct_lines, ""), "#' ```", "#'"), con)

  if (cls$create_constructor) {
    writeLines(glue("
      #' @rdname {cls$class_name}
      #' @export
      {cls$class_name} <- function({make_r_params(cls$properties)}) {{
      {make_checks(cls$properties)}  {cls$class_name}_({paste0(names(cls$properties), collapse = \", \")})
      }}

"), con)
  }

  writeLines(glue("
    {cls$class_name}_set <- function(o, field, value) {{
"), con)

    # {cls$class_name}_set <- function(o, field, value) {{
    #   do.call(paste0(\"{cls$class_name}_set_\", field, \"_\"), args = list(o, value))

  use_else <- FALSE
  s <- ""
  for (prop in cls$properties) {
    s <- paste0(s, glue("
      {ifelse(use_else, 'else ', '')}if (field == \"{prop$rcpp_name}\") {{
        {make_check(prop$rcpp_name, prop$type, 'value')}
        {cls$class_name}_set_{prop$rcpp_name}_(o, value)
      }} "))
    use_else <- TRUE
  }
  s <- paste0(s, glue("
    else {{
      abort(paste0(\"`{cls$class_name}` has no property \", field , \".\"), call = NULL)
    }}"))
  writeLines(indent(s), con)

  writeLines(glue("
    }}

    {cls$class_name}_get <- function(o, field) {{
"), con)

  use_else <- FALSE
  s <- ""
  for (prop in cls$properties) {
    s <- paste0(s, glue("
      {ifelse(use_else, 'else ', '')}if (field == \"{prop$rcpp_name}\") {{
        {cls$class_name}_get_{prop$rcpp_name}_(o)
      }} "))
    use_else <- TRUE
  }
  s <- paste0(s, glue("
    else {{
      abort(paste0(\"`{cls$class_name}` has no property \", field , \".\"), call = NULL)
    }}"))
  writeLines(indent(s), con)

  writeLines(glue("
    }}

    #' @export
    \"$.{cls$class_name}\" <- function(o, field) {{
      {cls$class_name}_get(o, field)
    }}

    #' @export
    \"$<-.{cls$class_name}\" <- function(o, field, value) {{
      {cls$class_name}_set(o, field, value)
    }}

    #' @export
    .DollarNames.{cls$class_name} <- function(x, pattern) {{
      {deparse(names(cls$properties))}
    }}

    #' @export
    \"[.{cls$class_name}\" <- `$.{cls$class_name}`

    #' @export
    \"[[.{cls$class_name}\" <- `$.{cls$class_name}`

    #' @export
    \"[<-.{cls$class_name}\" <- `$<-.{cls$class_name}`

    #' @export
    \"[[<-.{cls$class_name}\" <- `$<-.{cls$class_name}`

    #' @export
    print.{cls$class_name} <- function(x, ...) {{
      cat(as.character(x), \"\\n\")
    }}

    #' @export
    as.character.{cls$class_name} <- function(x, ...) {{
      fields <- .DollarNames(x)
      values <- vapply(fields, function(field) {{
        val <- x[[field]]
        paste(as.character(val), collapse = \", \")
      }}, character(1))
      res <- paste(fields, values, sep = \" = \", collapse = \", \")
      paste0(\"{cls$class_name}(\", res, \")\")
    }}
"), con)

  if (cls$create_is_function) {
    writeLines(glue("

      #' @export
      is_{cls$class_name} <- function(x) {{
        typeof(x) == \"externalptr\" && class(x) == \"{cls$class_name}\"
      }}
"), con)
  }

  close(con)
  # Sys.chmod(filename, "444")
}

# Generate Cpp files ------------------------------------------------------

for (cls in classes) {

  # Create src/{class_name}.cpp

  filename <- here::here("src", glue("{cls$class_name}.cpp"))
  Sys.chmod(filename, "644")
  file.create(filename)
  con <- file(filename, open = "wt")

  writeLines(glue("
    // Do not edit by hand. This code is generated from the following definition in raylib.h:

"), con)

  writeLines(c(str_c('// ', cls$struct_lines), ""), con)

  writeLines(glue("
    #include \"raylibr.h\"

    // [[Rcpp::plugins(cpp11)]]

"), con)

  # Constructor
  writeLines(glue("
    // [[Rcpp::export]]
    {cls$struct_name} {cls$class_name}_({make_rcpp_params(cls$properties)}) {{
      {cls$struct_name} obj = {{}};
"), con)

  for (prop in cls$properties) {
    writeLines(glue("  obj.{prop$name} = {prop$rcpp_name};"), con)
  }

  writeLines(glue("
      return obj;
    }}

"), con)

  # Getters and setters
  for (prop in cls$properties) {

    writeLines(glue("
      // [[Rcpp::export]]
      {prop$type} {cls$class_name}_get_{prop$rcpp_name}_({cls$struct_name} obj) {{
        return obj.{prop$name};
      }}

      // [[Rcpp::export]]
      {cls$struct_name} {cls$class_name}_set_{prop$rcpp_name}_({cls$struct_name} obj, {prop$type} {prop$rcpp_name}) {{
        obj.{prop$name} = {prop$rcpp_name};
        return obj;
      }}

"), con)

  }

  close(con)
}



