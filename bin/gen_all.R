# Generate classes and functions in src/ and R/

source(here::here("bin", "gen_utils.R"))

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
      current_struct <- struct_name
      struct_lines <- c(struct_lines, line)
      class_name <- make_rcpp_name(struct_name)
      cat(glue("Found {class_name}...\n\n"))
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
        create_class = TRUE,
        create_aswrap_implementation = TRUE,
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





# Parse functions ---------------------------------------------------------

lines <- readLines(here::here("bin", "raylib_funs.txt"))


funs <- list()

for (line in lines) {
  if (str_starts(line, "#")) next
  line <- str_replace(line, regex(" ?R[LM]API ?"), "")
  fun <- parse_fun(line)

  # Family documention
  parts <- unlist(str_split(make_rcpp_name(fun$name), "_"))
  fun$families <- parts[parts %in% families]

  # See also documentation
  fun$seealsos <- c()
  for (p in fun$params) {
    if (make_rcpp_name(p$type) %in% families) {
      fun$seealsos <- c(fun$seealsos, make_rcpp_name(p$type))
    }
  }
  fun$seealsos <- unique(fun$seealsos)

  rcpp_name <- make_rcpp_name(fun$name)

  # Enable vectorization for this function?
  fun$is_vectorized <- grepl("^(image_)?draw_", rcpp_name)
  if (fun$is_vectorized) {
    for (p in names(fun$params)) {
      if (!((fun$params[[p]]$type == "Image") && fun$params[[p]]$pointer)) {
        fun$params[[p]]$is_vectorized <- TRUE
      }
    }
  }

  funs <- append(funs, list(fun))
  names(funs)[length(funs)] <- rcpp_name
}





# Class Customizations ------------------------------------------------------

classes$vector_2$create_class <- FALSE
classes$vector_3$create_class <- FALSE
classes$vector_4$create_class <- FALSE
classes$matrix$create_class <- FALSE
classes$audio_stream$create_class <- FALSE
classes$bone_info$create_class <- FALSE
classes$font$create_class <- FALSE
classes$image$create_class <- FALSE
classes$material$create_class <- FALSE
classes$mesh$create_class <- FALSE
classes$model$create_class <- FALSE
classes$model_animation$create_class <- FALSE
classes$music$create_class <- FALSE
classes$shader$create_class <- FALSE
classes$vr_device_info$create_class <- FALSE
classes$vr_stereo_config$create_class <- FALSE
classes$wave$create_class <- FALSE

classes$vector_2$create_is_function <- FALSE
classes$vector_3$create_is_function <- FALSE
classes$vector_4$create_is_function <- FALSE
classes$matrix$create_is_function <- FALSE
classes$color$create_is_function <- FALSE

classes$camera_2d$properties$zoom$default <- 1.0
classes$camera_2d$properties$zoom$comment <- "Camera zoom (scaling)"

classes$camera_3d$properties$fovy$default <- 70
classes$camera_3d$properties$target$default <- (c(0, 0, 0))
classes$camera_3d$properties$up$default <- c(0, 1, 0)
classes$camera_3d$properties$projection$default <- 0
classes$camera_3d$properties$projection$comment <-
  glue("Camera projection: ",
       "either `camera_projection$perspective` (0) or ",
        "`camera_projection$orthographic` (1)")





# Function customizations ------------------------------------------------------

funs$clear_background$params$color$default <- "white"

funs$init_window$params$width$default <- 640
funs$init_window$params$height$default <- 480
funs$init_window$params$title$default <- "Raylibr"

funs$text_replace$params$text$const_cast <- "char *"

funs$get_char_pressed$families <- "key"

funs$draw_triangle_strip_3d$is_vectorized <- FALSE
funs$draw_texture_poly$is_vectorized <- FALSE


# Generate R class files -------------------------------------------------------

for (cls in classes) {
  # Create R/{class_name}.R

  filename <- here::here("R", glue("{cls$class_name}.R"))
  if (!cls$create_class && !cls$create_is_function) {
    unlink(filename, force = TRUE)
    next
  }

  cat(glue("Creating {filename}...\n\n"))
  Sys.chmod(filename, "644")
  file.create(filename)
  con <- file(filename, open = "wt")

  writeLines(glue("
    # Do not edit by hand.

"), con)

  if (cls$create_class) {

    writeLines(glue("
      #' {make_rd_name(cls$struct_name)}
      #'
      #' Create a new {cls$class_name} object.
      #'
      {make_rd_params(cls$properties, comment = '#')}
      #'
      {make_rd_value(cls$class_name, comment = '#')}#'
      #' @note This class has been auto-generated from the ",
      "following Raylib struct definition:
      #'
"), con)

    writeLines(c("#' ```", str_c("#' ", cls$struct_lines, ""), "#' ```", "#'"),
    con)

    if (cls$create_constructor) {
      writeLines(glue("
        #' @rdname {cls$class_name}
        #'
        #' @family {cls$class_name} functions
        #'
        #' @export
        {cls$class_name} <- function({make_r_params(cls$properties)}) {{
        {make_checks(cls$properties)}  ",
        "{cls$class_name}_({paste0(names(cls$properties), collapse = \", \")})
        }}

"), con)
    }

    writeLines(glue("
      {cls$class_name}_set <- function(o, field, value) {{
"), con)

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
        abort(paste0(\"`{cls$class_name}` has ",
        "no property \", field , \".\"), call = NULL)
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
        abort(paste0(\"`{cls$class_name}` has ",
        "no property \", field , \".\"), call = NULL)
      }}"))
    writeLines(indent(s), con)

    writeLines(glue("
      }}

      #' @export
      \"$.raylibr_{cls$class_name}\" <- function(o, field) {{
        {cls$class_name}_get(o, field)
      }}

      #' @export
      \"$<-.raylibr_{cls$class_name}\" <- function(o, field, value) {{
        {cls$class_name}_set(o, field, value)
      }}

      #' @export
      .DollarNames.raylibr_{cls$class_name} <- function(x, pattern) {{
        {deparse(names(cls$properties))}
      }}

      #' @export
      \"[.raylibr_{cls$class_name}\" <- `$.raylibr_{cls$class_name}`

      #' @export
      \"[[.raylibr_{cls$class_name}\" <- `$.raylibr_{cls$class_name}`

      #' @export
      \"[<-.raylibr_{cls$class_name}\" <- `$<-.raylibr_{cls$class_name}`

      #' @export
      \"[[<-.raylibr_{cls$class_name}\" <- `$<-.raylibr_{cls$class_name}`

      #' @export
      print.raylibr_{cls$class_name} <- function(x, ...) {{
        cat(as.character(x), \"\\n\")
      }}

      #' @export
      as.character.raylibr_{cls$class_name} <- function(x, ...) {{
        fields <- .DollarNames(x)
        values <- vapply(fields, function(field) {{
          val <- x[[field]]
          paste(as.character(val), collapse = \", \")
        }}, character(1))
        res <- paste(fields, values, sep = \" = \", collapse = \", \")
        paste0(\"{cls$class_name}(\", res, \")\")
      }}
"), con)
  }

  if (cls$create_is_function) {
    writeLines(glue("

      #' @export
      is_{cls$class_name} <- function(x) {{
        typeof(x) == \"externalptr\" && class(x) == \"raylibr_{cls$class_name}\"
      }}
"), con)
  }

  close(con)
  # Sys.chmod(filename, "444")
}







# Generate R functions ----------------------------------------------------

filename <- here::here("R", glue("functions.R"))
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(glue("
  # Do not edit by hand.

"), con)

for(fun in funs) {

  note_vectorized <- ""
  if (fun$is_vectorized) {
    note_vectorized <- "This function is vectorized to allow for faster drawing. "
  }

  writeLines(glue("
    #' {make_rd_name(fun$name)}
    #'
    #' {fun$comment}
    #'
    {make_rd_params(fun$params, comment = '#')}
    #'
    {make_rd_value(fun$ret, comment = '#')}#'
    #' @note {note_vectorized}This function has been auto-generated ",
    "from the following Raylib function definition:
    #'
    #' ```
    #' {fun$code}
    #' ```
    {make_rd_families(fun$families)}
    {make_rd_seealsos(fun$seealsos)}
    #' @export
"), con)

  if (is.null(fun$is_vectorized) || !fun$is_vectorized) {
    writeLines(glue("{make_rcpp_name(fun$name)} <- ",
                    "function({make_r_params(fun$params)}) {{
  {make_checks(fun$params)}  {make_rcpp_name(fun$name)}",
  "_({paste0(names(fun$params), collapse = \", \")})
  }}

  "), con)
  } else {
    # generate vectorized version

    lens_parts <- c()
    for (p in fun$params) {
      if (!is.null(p$is_vectorized) && p$is_vectorized) {
        if (p$type %in% vec_classes_matrix) {
          lens_parts <- c(lens_parts, glue("ifelse(is.matrix({make_rcpp_name(p$name)}), nrow({make_rcpp_name(p$name)}), 1)"))
        } else {
          lens_parts <- c(lens_parts, glue("length({make_rcpp_name(p$name)})"))
        }
      }
    }
    lens_str <- paste0("lens <- c(", str_c(lens_parts, collapse = ", "), ")")

    rep_str <- c()
    param_i = 1
    for (p in fun$params) {
      if (!is.null(p$is_vectorized) && p$is_vectorized) {
        if (p$type %in% vec_classes_vector) {
          rep_str <- c(rep_str, glue("if (lens[{param_i}] < max_len) {make_rcpp_name(p$name)} <- rep({make_rcpp_name(p$name)}, length.out = max_len)"))
        } else if (p$type %in% vec_classes_matrix) {
          matrix_width <- substr(p$type, nchar(p$type), nchar(p$type))
          rep_str <- c(rep_str, glue("if (lens[{param_i}] < max_len) {make_rcpp_name(p$name)} <- matrix(rep(t({make_rcpp_name(p$name)}), length.out = max_len * {matrix_width}), ncol = {matrix_width}, byrow = TRUE)"))
        } else {
          rep_str <- c(rep_str, glue("if (lens[{param_i}] < max_len) {make_rcpp_name(p$name)} <- rep(unlist(list({make_rcpp_name(p$name)})), length.out = max_len)"))
        }
        param_i <- param_i + 1
      }
    }
    rep_str <- str_c(str_c("    ", rep_str), collapse = "\n")

    writeLines(glue("{make_rcpp_name(fun$name)} <- function({make_r_params(fun$params)}) {{
  {make_checks(fun$params)}
    {lens_str}
    if (any(lens > 1)) {{
      max_len <- max(lens)
  {rep_str}
      {make_rcpp_name(fun$name)}_vectorized_({paste0(names(fun$params), collapse = \", \")})
    }} else {{
      {make_rcpp_name(fun$name)}_({paste0(names(fun$params), collapse = \", \")})
    }}
  }}

"), con)
  }
}

close(con)








# Generate Cpp file -------------------------------------------------------

# All Cpp code will be in one file:
# 1. generated classes
# 2. insert extra_classes
# 3. generated functions
# 4. insert extra functions

filename <- here::here("src", "all.cpp")
cat(glue("Creating {filename}\n\n"))
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")


writeLines(glue("
  // Do not edit by hand.

  #include \"raylibr.h\"

  // [[Rcpp::plugins(cpp11)]]

"), con)

for (cls in classes[order(names(classes))]) {

  if (is.null(cls$class_name) ||
      (!cls$create_class && !cls$create_is_function)) {
    next
  }

  writeLines(strrep("/", 80), con)
  writeLines(str_c("// ", cls$struct_lines), con)
  writeLines(c(strrep("/", 80), ""), con)

  if (cls$create_is_function) {
    writeLines(c("namespace Rcpp {", ""), con)
    writeLines(indent(make_as(cls$struct_name)), con)
    writeLines(indent(make_wrap(cls$struct_name)), con)
    writeLines("}\n", con)
  }

  if (cls$create_class) {
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
        {prop$type} {cls$class_name}_get_",
        "{prop$rcpp_name}_({cls$struct_name} obj) {{
          return obj.{prop$name};
        }}

        // [[Rcpp::export]]
        {cls$struct_name} {cls$class_name}_set_{prop$rcpp_name}",
        "_({cls$struct_name} obj, {prop$type} {prop$rcpp_name}) {{
          obj.{prop$name} = {prop$rcpp_name};
          return obj;
        }}

"), con)

    }
  }

}

# Insert extra_classes.cpp ----------------------------------------------------

writeLines(c("// Begin extra_classes.cpp", ""), con)
writeLines(readLines(here::here("bin", "extra_classes.cpp")), con)
writeLines(c("// End extra_classes.cpp", ""), con)

# Customizations before genering Cpp functions --------------------------------

funs$update_camera <- NULL

# Generate Cpp functions ------------------------------------------------------

for(fun in funs) {

  writeLines(glue("
       // [[Rcpp::export]]
       {fun$ret} {make_rcpp_name(fun$name)}_({make_rcpp_params(fun$params)}) {{
         return {fun$name}({make_rcpp_params(fun$params, types = FALSE)});
       }}

       "), con)

  if (!is.null(fun$is_vectorized) && fun$is_vectorized) {

    for (p in fun$params) {
      if (!is.null(p$is_vectorized) && p$is_vectorized) {
        first_param <- make_rcpp_name(p$name)
        if (p$type %in% vec_classes_matrix) {
          first_param_length <- "nrow"
        } else {
          first_param_length <- "length"
        }

        break
      }
    }

     writeLines(glue("
         // [[Rcpp::export]]
         void {make_rcpp_name(fun$name)}_vectorized_({make_rcpp_params(fun$params, vectorized = TRUE)}) {{
           for (int i = 0; i < {first_param}.{first_param_length}(); i++) {{
             {fun$name}({make_rcpp_params(fun$params, types = FALSE, vectorized = TRUE)});
           }}
         }}

         "), con)

  }

}


# Insert extra_functions.cpp ---------------------------------------------------

writeLines(c("// Begin extra_functions.cpp", ""), con)
writeLines(readLines(here::here("bin", "extra_functions.cpp")), con)
writeLines(c("// End extra_functions.cpp", ""), con)

close(con)








# Generate inst/include/raylibr_types.h -----------------------------------

filename <- here::here("inst", "include", "raylibr_types.h")
cat(glue("Creating {filename}\n"))
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(c(
  "// Do not edit by hand.",
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

for (cls in classes) {
  if (is.null(cls$struct_name)) next;
  writeLines(indent(make_as_wrap_def(alias_type(cls$struct_name))), con)
}

writeLines(c(
  "}",
  "",
  "#endif"),
  con)

close(con)

