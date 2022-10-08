# Generate functions in src/ and R/

source(here::here("bin", "gen_utils.R"))


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


  funs <- append(funs, list(fun))
  names(funs)[length(funs)] <- make_rcpp_name(fun$name)
}


# Customizations ----------------------------------------------------------

funs$clear_background$params$color$default <- "white"

funs$init_window$params$width$default <- 640
funs$init_window$params$height$default <- 480
funs$init_window$params$title$default <- "Raylibr"

funs$text_replace$params$text$const_cast <- "char *"

funs$get_char_pressed$families <- "key"


# Generate R functions ----------------------------------------------------

filename <- here::here("R", glue("functions.R"))
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(glue("
  # Do not edit by hand.

"), con)

for(fun in funs) {

  writeLines(glue("
    #' {make_rd_name(fun$name)}
    #'
    #' {fun$comment}
    #'
    {make_rd_params(fun$params, comment = '#')}
    #'
    {make_rd_value(fun$ret, comment = '#')}#'
    #' @note This function has been auto-generated from the following Raylib function definition:
    #'
    #' ```
    #' {fun$code}
    #' ```
    {make_rd_families(fun$families)}
    {make_rd_seealsos(fun$seealsos)}
    #' @export
    {make_rcpp_name(fun$name)} <- function({make_r_params(fun$params)}) {{
    {make_checks(fun$params)}  {make_rcpp_name(fun$name)}_({paste0(names(fun$params), collapse = \", \")})
    }}

"), con)
}

close(con)
# Sys.chmod(filename, "444")

# Customizations before genering Cpp functions ----------------------------

funs$update_camera <- NULL

# Generate Cpp functions --------------------------------------------------

filename <- here::here("src", glue("functions.cpp"))
Sys.chmod(filename, "644")
file.create(filename)
con <- file(filename, open = "wt")

writeLines(glue("
  // Do not edit by hand

  #include \"raylibr.h\"

"), con)

for(fun in funs) {

  writeLines(glue("
       // [[Rcpp::export]]
       {fun$ret} {make_rcpp_name(fun$name)}_({make_rcpp_params(fun$params)}) {{
         return {fun$name}({make_rcpp_params(fun$params, types = FALSE)});
       }}

       "), con)

}

close(con)
# Sys.chmod(filename, "444")

