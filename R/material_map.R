# Do not edit by hand

#' Material map
#'
#' Create a new `material_map` object.
#'
#' @param texture A texture. Material map texture.
#' @param color A color. Material map color.
#' @param value A number. Material map value.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct MaterialMap {
#'     Texture2D texture;      // Material map texture
#'     Color color;            // Material map color
#'     float value;            // Material map value
#' } MaterialMap;
#' ```

#' @rdname material_map
#' @export
material_map <- function(texture, color, value) {
  material_map_(texture, color, value)
}

material_map_set <- function(o, field, value) {
  do.call(paste0("material_map_set_", field, "_"), args = list(o, value))
}

material_map_get <- function(o, field) {
  do.call(paste0("material_map_get_", field, "_"), args = list(o))
}

#' @export
"$.material_map" <- function(o, field) {
  material_map_get(o, field)
}

#' @export
"$<-.material_map" <- function(o, field, value) {
  material_map_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.material_map <- function(x, pattern) {
  c("texture", "color", "value")
}

#' @export
"[.material_map" <- `$.material_map`

#' @export
"[[.material_map" <- `$.material_map`

#' @export
"[<-.material_map" <- `$<-.material_map`

#' @export
"[[<-.material_map" <- `$<-.material_map`

#' @export
print.material_map <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.material_map <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("material_map(", res, ")")
}
