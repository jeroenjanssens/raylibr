is_bool <- function(x) {
  is.logical(x) && length(x) == 1
}

is_number <- function(x) {
  is.numeric(x) && length(x) == 1
}

is_float <- is_number

is_int <- is_number

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

is_char <- is_const_char_pointer

is_void_pointer <- function(x) {
  TRUE
}

is_const_void <- function(x) {
  TRUE
}

#' @export
is_music <- function(x) {
  class(x) == "music"
}

is_unsigned_char <- function(x) {
  is_number(x) && x >= 0 && x <= 255
}

is_vec <- function(x, is_first_fun) {
  is.vector(x) && is_first_fun(x[[1]])
}

is_mat <- function(x, is_first_fun) {
  is.matrix(x) && is_first_fun(x[1,])
}

friendly_typeof <- function(x) {
  cls <- class(x)
  typ <- typeof(x)

  if (length(x) == 1) {
    if ((typ == "externalptr") && (cls %in% c("audio_stream", "image"))) {
      paste0("an ", cls)
    } else if ((typ == "externalptr") && (cls != "NULL")) {
      paste0("a ", cls)
    } else if (is.logical(x) && is.na(x)) {
      "NA"
    } else if (is.numeric(x)) {
      "a number"
    } else if (is.character(x)) {
      "a string"
    } else if (typ %in% c("environment", "expression", "externalptr")) {
      paste0("an ", typ)
    } else {
      paste0("a ", typ)
    }
  } else {
    str_len <- paste0("of length ", length(x))
    if (is.null(x)) {
      "NULL"
    } else if (is.matrix(x) && is.numeric(x)) {
      paste0("a numeric matrix of ", nrow(x), " by ", ncol(x))
    } else if (is.numeric(x)) {
      paste0("a numeric vector ", str_len)
    } else if (is.list(x)) {
      paste0("a list of ", length(x), " ", class(x[[1]]), "s")
    } else {
      paste0("a ", typ, " vector ", str_len)
    }
  }
}
