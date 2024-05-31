# Do not edit by hand.

#' Material map
#'
#' Create a new material_map object.
#'
#' @param texture A texture. Material map texture.
#' @param color A color. Material map color.
#' @param value A number. Material map value.
#'
#' @return A material_map
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct MaterialMap {
#'     Texture2D texture;      // Material map texture
#'     Color color;            // Material map color
#'     float value;            // Material map value
#' } MaterialMap;
#' ```
#'
#' @rdname material_map
#'
#' @family material_map functions
#'
#' @export
material_map <- function(texture, color, value) {
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_color(color)) abort(paste0('`color` must be a color, not ', friendly_typeof(color), '.'), call = NULL)
  if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
  material_map_(texture, color, value)
}

material_map_set <- function(o, field, value) {
  if (field == "texture") {
    if (!is_texture(value)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(value), '.'), call = NULL)
    material_map_set_texture_(o, value)
  } else if (field == "color") {
    if (!is_color(value)) abort(paste0('`color` must be a color, not ', friendly_typeof(value), '.'), call = NULL)
    material_map_set_color_(o, value)
  } else if (field == "value") {
    if (!is_float(value)) abort(paste0('`value` must be a number, not ', friendly_typeof(value), '.'), call = NULL)
    material_map_set_value_(o, value)
  } else {
    abort(paste0("`material_map` has no property ", field , "."), call = NULL)
  }
}

material_map_get <- function(o, field) {
  if (field == "texture") {
    material_map_get_texture_(o)
  } else if (field == "color") {
    material_map_get_color_(o)
  } else if (field == "value") {
    material_map_get_value_(o)
  } else {
    abort(paste0("`material_map` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_material_map" <- function(o, field) {
  material_map_get(o, field)
}

#' @export
"$<-.raylibr_material_map" <- function(o, field, value) {
  material_map_set(o, field, value)
}

#' @export
.DollarNames.raylibr_material_map <- function(x, pattern) {
  c("texture", "color", "value")
}

#' @export
"[.raylibr_material_map" <- `$.raylibr_material_map`

#' @export
"[[.raylibr_material_map" <- `$.raylibr_material_map`

#' @export
"[<-.raylibr_material_map" <- `$<-.raylibr_material_map`

#' @export
"[[<-.raylibr_material_map" <- `$<-.raylibr_material_map`

#' @export
print.raylibr_material_map <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_material_map <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("material_map(", res, ")")
}

#' @export
is_material_map <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_material_map"
}
