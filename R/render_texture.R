# Do not edit by hand.

#' Render texture
#'
#' Create a new render_texture object.
#'
#' @param id A non-negative integer. OpenGL framebuffer object id.
#' @param texture A texture. Color buffer attachment texture.
#' @param depth A texture. Depth buffer attachment texture.
#'
#' @return A render_texture
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct RenderTexture {
#'     unsigned int id;        // OpenGL framebuffer object id
#'     Texture texture;        // Color buffer attachment texture
#'     Texture depth;          // Depth buffer attachment texture
#' } RenderTexture;
#' ```
#'
#' @rdname render_texture
#'
#' @family render_texture functions
#'
#' @export
render_texture <- function(id, texture, depth) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  if (!is_texture(depth)) abort(paste0('`depth` must be a texture, not ', friendly_typeof(depth), '.'), call = NULL)
  render_texture_(id, texture, depth)
}

render_texture_set <- function(o, field, value) {
  if (field == "id") {
    if (!is_unsigned_int(value)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    render_texture_set_id_(o, value)
  } else if (field == "texture") {
    if (!is_texture(value)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(value), '.'), call = NULL)
    render_texture_set_texture_(o, value)
  } else if (field == "depth") {
    if (!is_texture(value)) abort(paste0('`depth` must be a texture, not ', friendly_typeof(value), '.'), call = NULL)
    render_texture_set_depth_(o, value)
  } else {
    abort(paste0("`render_texture` has no property ", field , "."), call = NULL)
  }
}

render_texture_get <- function(o, field) {
  if (field == "id") {
    render_texture_get_id_(o)
  } else if (field == "texture") {
    render_texture_get_texture_(o)
  } else if (field == "depth") {
    render_texture_get_depth_(o)
  } else {
    abort(paste0("`render_texture` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_render_texture" <- function(o, field) {
  render_texture_get(o, field)
}

#' @export
"$<-.raylibr_render_texture" <- function(o, field, value) {
  render_texture_set(o, field, value)
}

#' @export
.DollarNames.raylibr_render_texture <- function(x, pattern) {
  c("id", "texture", "depth")
}

#' @export
"[.raylibr_render_texture" <- `$.raylibr_render_texture`

#' @export
"[[.raylibr_render_texture" <- `$.raylibr_render_texture`

#' @export
"[<-.raylibr_render_texture" <- `$<-.raylibr_render_texture`

#' @export
"[[<-.raylibr_render_texture" <- `$<-.raylibr_render_texture`

#' @export
print.raylibr_render_texture <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_render_texture <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("render_texture(", res, ")")
}

#' @export
is_render_texture <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_render_texture"
}
