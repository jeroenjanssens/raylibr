# Do not edit by hand

#' Render texture
#'
#' Create a new `render_texture` object.
#'
#' @param id A non-negative integer. OpenGL framebuffer object id.
#' @param texture A texture. Color buffer attachment texture.
#' @param depth A texture. Depth buffer attachment texture.
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct RenderTexture {
#'     unsigned int id;        // OpenGL framebuffer object id
#'     Texture texture;        // Color buffer attachment texture
#'     Texture depth;          // Depth buffer attachment texture
#' } RenderTexture;
#' ```

#' @rdname render_texture
#' @export
render_texture <- function(id, texture, depth) {
  render_texture_(id, texture, depth)
}

render_texture_set <- function(o, field, value) {
  do.call(paste0("render_texture_set_", field, "_"), args = list(o, value))
}

render_texture_get <- function(o, field) {
  do.call(paste0("render_texture_get_", field, "_"), args = list(o))
}

#' @export
"$.render_texture" <- function(o, field) {
  render_texture_get(o, field)
}

#' @export
"$<-.render_texture" <- function(o, field, value) {
  render_texture_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.render_texture <- function(x, pattern) {
  c("id", "texture", "depth")
}

#' @export
"[.render_texture" <- `$.render_texture`

#' @export
"[[.render_texture" <- `$.render_texture`

#' @export
"[<-.render_texture" <- `$<-.render_texture`

#' @export
"[[<-.render_texture" <- `$<-.render_texture`

#' @export
print.render_texture <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.render_texture <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("render_texture(", res, ")")
}
