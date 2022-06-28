rectangle_set <- function(o, field, value) {
  do.call(paste0("rectangle_set_", field), args = list(o, value))
}

rectangle_get <- function(o, field) {
  do.call(paste0("rectangle_get_", field), args = list(o))
}

#' @export
"$.rectangle" <- function(o, field) {
  rectangle_get(o, field)
}

#' @export
"$<-.rectangle" <- function(o, field, value) {
  rectangle_set(o, field, value)
}

#' Autocomplete helper for \code{rectangle} objects
#'
#' @param x object
#' @param pattern current pattern to match
#'
#' @importFrom utils .DollarNames
#' @export
.DollarNames.rectangle <- function(x, pattern) {
  c("x", "y", "width", "height")
}

#' @export
"[.rectangle" <- `$.rectangle`

#' @export
"[[.rectangle" <- `$.rectangle`

#' @export
"[<-.rectangle" <- `$<-.rectangle`

#' @export
"[[<-.rectangle" <- `$<-.rectangle`

#' @export
print.rectangle <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.rectangle <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("rectangle(", res, ")")
}

