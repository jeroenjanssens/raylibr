#' @export
is_bool <- function(x) {
  is.logical() && length == 1
}

#' @export
is_number <- function(x) {
  is.numeric(x) && length(x) == 1
}

#' @export
is_float <- is_number

#' @export
is_int <- is_number

#' @export
is_unsigned_int <- function(x) {
  is_int(x) && x >= 0
}

#' @export
is_vector_2 <- function(x) {
  is.numeric(x) && length(x) == 2
}

#' @export
is_vector_3 <- function(x) {
  is.numeric(x) && length(x) == 3
}

#' @export
is_vector_4 <- function(x) {
  is.numeric(x) && length(x) == 4
}

#' @export
is_raylib_matrix <- function(x) {
  is.numeric(x) && is.matrix(x) && dim(x) == c(4, 4)
}

#' @export
is_color <- function(x) {
  class(x) == "color" ||
  is_unsigned_int(x) ||
  (is_const_char_pointer(x) && x %in% colors()) ||
  (is.list(x) && names(x) == c("r", "g", "b", "a"))
}

is_const_char_pointer <- function(x) {
  is.character(x) && length(x) == 1
}

is_music <- function(x) {
  class(x) == "music"
}

friendly_typeof <- function(x) {
  len <- length(x)
  cls <- class(x)
  typ <- typeof(x)
  str_len <- glue("of length {len}")

  if (len == 1) {
    glue(case_when(
      (typ == "externalptr" && cls %in% c("audio_stream", "image")) ~ "an {cls}",
      (typ == "externalptr" && cls != "NULL") ~ "a {cls}",
      is.logical(x) && is.na(x) ~ "NA",
      is.numeric(x) ~ "a number",
      is.character(x) ~ "a string",
      typ %in% c("environment", "expression", "externalptr") ~ "an {typ}",
      TRUE ~ "a {typ}"))
  } else {
    glue(case_when(
      is.null(x) ~ "NULL",
      is.matrix(x) && is.numeric(x) ~ "a numeric matrix of {nrow(x)} by {ncol(x)}",
      is.numeric(x) ~ "a numeric vector {str_len}",
      is.list(x) ~ "a list {str_len}",
      TRUE ~ "a {typ} vector {str_len}"))
  }
}
