#' Set shader value
#'
#' Set shader uniform value.
#'
#' @param shader A shader.
#' @param loc_index An integer.
#' @param value A number or numerical vector of length 2, 3, or 4.
#'
#' @family shader functions
#'
#' @examplesIf FALSE
#' shader <- load_shader("", "shader.fs")
#' loc <- get_shader_location(shader, "myUniform")
#' set_shader_value(shader, loc, 1.0)
#' set_shader_value(shader, loc, c(1.0, 0.0))
#'
#' @export
set_shader_value <- function(shader, loc_index, value) {
  if (!is_shader(shader)) abort(paste0('`shader` must be a shader, not ', friendly_typeof(shader), '.'), call = NULL)
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)

  if (is_float(value)) {
    set_shader_value_float_(shader, loc_index, value)
  } else if (is_vector_2(value)) {
    set_shader_value_vector_2_(shader, loc_index, value)
  } else if (is_vector_3(value)) {
    set_shader_value_vector_3_(shader, loc_index, value)
  } else if (is_vector_4(value)) {
    set_shader_value_vector_4_(shader, loc_index, value)
  } else {
    abort(paste0('`value` must be a number or a numerical vector of length 2, 3, or 4, not ', friendly_typeof(value), '.'), call = NULL)
  }
}


#' Load font ex
#'
#' Load font from file with extended parameters.
#'
#' @param file_name A string.
#' @param font_size An integer.
#'
#' @return A font
#'
#' @note This function has been auto-generated from the following Raylib function definition:
#'
#' ```
#' Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);
#' ```
#'
#' @family font functions
#'
#' @examplesIf FALSE
#' font <- load_font_ex("myfont.ttf", 32L)
#'
#' @export
load_font_ex <- function(file_name, font_size) {
  if (!is_const_char_pointer(file_name)) abort(paste0('`file_name` must be a string, not ', friendly_typeof(file_name), '.'), call = NULL)
  if (!is_int(font_size)) abort(paste0('`font_size` must be an integer, not ', friendly_typeof(font_size), '.'), call = NULL)
  load_font_ex_(file_name, font_size)
}

#' Raylib Version
#'
#' Get the version of the Raylib library that is being used.
#'
#' @return A string
#'
#' @examples
#' raylib_version()
#'
#' @export
raylib_version <- function() {
  raylib_version_()
}

#' Convert to color
#'
#' Convert a value to a color object. Accepts R color names (strings),
#' hex integers, lists with r/g/b/a components, or existing color objects.
#'
#' @param x A color name (string), hex integer, list, or color object.
#' @return A color object.
#'
#' @examples
#' as_color("red")
#' as_color(list(r = 255, g = 0, b = 0, a = 255))
#'
#' @export
as_color <- function(x) {
  color_from_(x)
}

#' Check if running on web
#'
#' Returns TRUE when running under Emscripten/webR, FALSE otherwise.
#'
#' @return Logical
#'
#' @examples
#' is_web()
#'
#' @export
is_web <- function() {
  is_web_()
}

#' Evaluate JavaScript
#'
#' @param script Character string of JavaScript to evaluate.
#' @return Character string result.
#'
#' @examplesIf FALSE
#' eval_js("document.title")
#'
#' @export
eval_js <- function(script) {
  eval_js_(script)
}

#' Run game loop
#'
#' Portable game loop that works on both desktop and web (webR/Emscripten).
#' On desktop, runs a standard while loop. On web, registers a callback with
#' \code{emscripten_set_main_loop} so the browser event loop stays responsive.
#'
#' @param update_fn A function called once per frame. Should contain
#'   \code{begin_drawing()}/\code{end_drawing()} calls.
#' @param init_fn Optional function called once before the loop starts.
#' @param cleanup_fn Optional function called after the loop ends
#'   (e.g., to call \code{close_window()}).
#'
#' @examplesIf FALSE
#' run_game_loop(
#'   update_fn = function() {
#'     begin_drawing()
#'     clear_background("white")
#'     draw_text("Hello!", 100L, 100L, 20L, "black")
#'     end_drawing()
#'   },
#'   init_fn = function() init_window(800L, 450L, "Game"),
#'   cleanup_fn = function() close_window()
#' )
#'
#' @export
run_game_loop <- function(update_fn, init_fn = NULL, cleanup_fn = NULL) {
  if (!is.null(init_fn)) init_fn()
  if (is_web()) {
    set_main_loop_callback_(update_fn, cleanup_fn)
  } else {
    while (!window_should_close()) {
      update_fn()
    }
    if (!is.null(cleanup_fn)) cleanup_fn()
  }
}

#' Resolve resource path
#'
#' Get the path to a file in the package's demo resources directory.
#' Works correctly on both desktop and web (Emscripten virtual filesystem).
#'
#' @param name File name (e.g., \code{"texture.png"}).
#' @return Full path to the resource file.
#'
#' @examples
#' raylibr_resource("texture.png")
#'
#' @export
raylibr_resource <- function(name) {
  system.file("demo_resources", name, package = "raylibr")
}

# Whether examples and guides may open a window. Non-interactive sessions
# (R CMD check, CRAN, CI) only render with RAYLIBR_GL=true, which CI and
# local site builds set once a display or software GL is available.
has_display <- function() {
  gl <- tolower(Sys.getenv("RAYLIBR_GL"))
  if (gl == "true") return(TRUE)
  if (gl == "false") return(FALSE)
  if (!interactive()) return(FALSE)
  if (Sys.info()[["sysname"]] == "Linux") return(nzchar(Sys.getenv("DISPLAY")))
  TRUE
}

#' Render a 2D scene to an image
#'
#' Creates a hidden window, calls the supplied drawing function
#' on a black background, and returns the captured framebuffer as an
#' \code{image} object. The image auto-displays in knitr documents
#' (like ggplot2 plots) and can be saved with \code{export_image()}.
#'
#' @param draw A function containing drawing calls
#'   (e.g., \code{draw_circle}, \code{draw_text}).
#' @param width An integer. Window width in pixels.
#' @param height An integer. Window height in pixels.
#'
#' @return An image object. On HiDPI displays the framebuffer is captured at
#'   full pixel density (e.g., 1280x960 for a 640x480 window at 2x scale);
#'   knitr still displays it at \code{width} x \code{height}.
#'
#' @examplesIf FALSE
#' raylibr_screenshot(function() {
#'   draw_circle(200L, 150L, 80.0, "yellow")
#' })
#'
#' @export
raylibr_screenshot <- function(draw, width = 640L, height = 480L) {
  set_config_flags(flag$window_hidden + flag$window_highdpi)
  init_window(width, height, "raylibr")
  on.exit(close_window())
  for (i in 1:2) {
    begin_drawing()
    clear_background("black")
    draw()
    end_drawing()
  }
  img <- load_image_from_screen()
  attr(img, "display_size") <- c(width, height)
  img
}

#' Render a 3D scene to an image
#'
#' Creates a hidden window with a default camera, calls the supplied
#' drawing function inside a 3D mode block, and returns the captured
#' framebuffer as an \code{image} object.
#'
#' @param draw A function containing 3D drawing calls
#'   (e.g., \code{draw_cube}, \code{draw_sphere}).
#' @param width An integer. Window width in pixels.
#' @param height An integer. Window height in pixels.
#'
#' @return An image object. On HiDPI displays the framebuffer is captured at
#'   full pixel density (e.g., 1280x960 for a 640x480 window at 2x scale);
#'   knitr still displays it at \code{width} x \code{height}.
#'
#' @examplesIf FALSE
#' raylibr_screenshot_3d(function() {
#'   draw_cube(c(0, 0, 0), 2.0, 2.0, 2.0, "red")
#' })
#'
#' @export
raylibr_screenshot_3d <- function(draw, width = 640L, height = 480L) {
  set_config_flags(flag$window_hidden + flag$window_highdpi)
  init_window(width, height, "raylibr")
  on.exit(close_window())
  cam <- camera_3d(c(4, 4, 4))
  for (i in 1:2) {
    begin_drawing()
    clear_background("black")
    begin_mode_3d(cam)
    draw_grid(10L, 1.0)
    draw()
    end_mode_3d()
    end_drawing()
  }
  img <- load_image_from_screen()
  attr(img, "display_size") <- c(width, height)
  img
}

#' @importFrom grDevices as.raster
#' @export
print.image <- function(x, ...) {
  if (typeof(x) != "externalptr") return(NextMethod())
  grid::grid.newpage()
  grid::grid.raster(as.raster(image_to_raster_(x)),
                    width = grid::unit(1, "npc"),
                    height = grid::unit(1, "npc"),
                    interpolate = FALSE)
  invisible(x)
}

#' @exportS3Method knitr::knit_print
knit_print.image <- function(x, ...) {
  if (typeof(x) != "externalptr") return(NextMethod())
  f <- tempfile(tmpdir = ".", fileext = ".png")
  export_image(x, f)
  size <- attr(x, "display_size")
  # Empty caption plus an explicit alt attribute keeps pandoc from wrapping
  # the image in a <figure> with a caption.
  dims <- if (is.null(size)) "" else sprintf(" width=%d height=%d", size[1], size[2])
  knitr::asis_output(paste0('![](', f, '){.raylibr-image alt="Image rendered by raylibr"', dims, '}'))
}

# --- Camera mutation ----------------------------------------------------------

#' Update camera
#'
#' Update camera position for selected mode. Modifies the camera in place.
#'
#' @param camera A camera_3d.
#' @param mode An integer. Camera mode (use camera_mode enum).
#'
#' @family camera functions
#'
#' @examplesIf FALSE
#' cam <- camera_3d(c(0, 10, 10))
#' update_camera(cam, camera_mode$orbital)
#'
#' @export
update_camera <- function(camera, mode) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  update_camera_(camera, mode)
  invisible(camera)
}

#' Update camera pro
#'
#' Update camera movement/rotation. Modifies the camera in place.
#'
#' @param camera A camera_3d.
#' @param movement A numeric vector of length 3.
#' @param rotation A numeric vector of length 3.
#' @param zoom A number.
#'
#' @family camera functions
#'
#' @examplesIf FALSE
#' cam <- camera_3d(c(0, 10, 10))
#' update_camera_pro(cam, c(0, 0, 0), c(0, 0, 0), 1.0)
#'
#' @export
update_camera_pro <- function(camera, movement, rotation, zoom) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_vector_3(movement)) abort(paste0('`movement` must be a numeric vector of length 3, not ', friendly_typeof(movement), '.'), call = NULL)
  if (!is_vector_3(rotation)) abort(paste0('`rotation` must be a numeric vector of length 3, not ', friendly_typeof(rotation), '.'), call = NULL)
  if (!is_float(zoom)) abort(paste0('`zoom` must be a number, not ', friendly_typeof(zoom), '.'), call = NULL)
  update_camera_pro_(camera, movement, rotation, zoom)
  invisible(camera)
}

# --- Vector2/3 array drawing --------------------------------------------------

#' Draw line strip
#'
#' Draw lines sequence (using gl lines).
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 200, 350, 50, 150, 250), ncol = 2)
#' raylibr_screenshot(function() draw_line_strip(pts, "red"))
#'
#' @export
draw_line_strip <- function(points, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_line_strip_(points, as_color(color))
}

#' Draw triangle fan
#'
#' Draw a triangle fan defined by points (first vertex is the center).
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(200, 300, 100, 300, 100, 50, 250, 250), ncol = 2)
#' raylibr_screenshot(function() draw_triangle_fan(pts, "blue"))
#'
#' @export
draw_triangle_fan <- function(points, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_triangle_fan_(points, as_color(color))
}

#' Draw triangle strip
#'
#' Draw a triangle strip defined by points.
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 150, 250, 350, 80, 220, 80, 220), ncol = 2)
#' raylibr_screenshot(function() draw_triangle_strip(pts, "green"))
#'
#' @export
draw_triangle_strip <- function(points, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_triangle_strip_(points, as_color(color))
}

#' Draw spline linear
#'
#' Draw spline: linear, minimum 2 points.
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param thick A number. Line thickness.
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 200, 350, 50, 250, 100), ncol = 2)
#' raylibr_screenshot(function() draw_spline_linear(pts, 3.0, "red"))
#'
#' @export
draw_spline_linear <- function(points, thick, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_spline_linear_(points, thick, as_color(color))
}

#' Draw spline basis
#'
#' Draw spline: B-Spline, minimum 4 points.
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param thick A number. Line thickness.
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 150, 250, 350, 50, 200, 50, 250), ncol = 2)
#' raylibr_screenshot(function() draw_spline_basis(pts, 3.0, "blue"))
#'
#' @export
draw_spline_basis <- function(points, thick, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_spline_basis_(points, thick, as_color(color))
}

#' Draw spline catmull rom
#'
#' Draw spline: Catmull-Rom, minimum 4 points.
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param thick A number. Line thickness.
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 150, 250, 350, 50, 250, 250, 50), ncol = 2)
#' raylibr_screenshot(function() draw_spline_catmull_rom(pts, 3.0, "green"))
#'
#' @export
draw_spline_catmull_rom <- function(points, thick, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_spline_catmull_rom_(points, thick, as_color(color))
}

#' Draw spline bezier quadratic
#'
#' Draw spline: Quadratic Bezier, minimum 3 points (1 control point).
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param thick A number. Line thickness.
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 200, 350, 250, 50, 250), ncol = 2)
#' raylibr_screenshot(function() draw_spline_bezier_quadratic(pts, 3.0, "purple"))
#'
#' @export
draw_spline_bezier_quadratic <- function(points, thick, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_spline_bezier_quadratic_(points, thick, as_color(color))
}

#' Draw spline bezier cubic
#'
#' Draw spline: Cubic Bezier, minimum 4 points (2 control points).
#'
#' @param points A numeric matrix with 2 columns (x, y).
#' @param thick A number. Line thickness.
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(50, 150, 250, 350, 50, 250, 250, 50), ncol = 2)
#' raylibr_screenshot(function() draw_spline_bezier_cubic(pts, 3.0, "orange"))
#'
#' @export
draw_spline_bezier_cubic <- function(points, thick, color) {
  if (!is.matrix(points) || ncol(points) != 2) abort('`points` must be a numeric matrix with 2 columns.', call = NULL)
  draw_spline_bezier_cubic_(points, thick, as_color(color))
}

#' Draw triangle strip 3d
#'
#' Draw a triangle strip defined by points (3D version).
#'
#' @param points A numeric matrix with 3 columns (x, y, z).
#' @param color A color.
#'
#' @family draw functions
#'
#' @examplesIf raylibr:::has_display()
#' pts <- matrix(c(0, 1, 2, 3, 0, 1, 0, 1, 0, 0, 0, 0), ncol = 3)
#' raylibr_screenshot_3d(function() draw_triangle_strip_3d(pts, "red"))
#'
#' @export
draw_triangle_strip_3d <- function(points, color) {
  if (!is.matrix(points) || ncol(points) != 3) abort('`points` must be a numeric matrix with 3 columns.', call = NULL)
  draw_triangle_strip_3d_(points, as_color(color))
}

# --- Wave mutation ------------------------------------------------------------

#' Wave crop
#'
#' Crop a wave to defined frames range. Modifies the wave in place.
#'
#' @param wave A wave.
#' @param init_frame An integer. Initial frame.
#' @param final_frame An integer. Final frame.
#'
#' @family wave functions
#'
#' @examplesIf FALSE
#' w <- load_wave("sound.wav")
#' wave_crop(w, 0L, 44100L)
#'
#' @export
wave_crop <- function(wave, init_frame, final_frame) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  if (!is_int(init_frame)) abort(paste0('`init_frame` must be an integer, not ', friendly_typeof(init_frame), '.'), call = NULL)
  if (!is_int(final_frame)) abort(paste0('`final_frame` must be an integer, not ', friendly_typeof(final_frame), '.'), call = NULL)
  wave_crop_(wave, init_frame, final_frame)
  invisible(wave)
}

#' Wave format
#'
#' Convert wave data to desired format. Modifies the wave in place.
#'
#' @param wave A wave.
#' @param sample_rate An integer.
#' @param sample_size An integer.
#' @param channels An integer.
#'
#' @family wave functions
#'
#' @examplesIf FALSE
#' w <- load_wave("sound.wav")
#' wave_format(w, 44100L, 16L, 1L)
#'
#' @export
wave_format <- function(wave, sample_rate, sample_size, channels) {
  if (!is_wave(wave)) abort(paste0('`wave` must be a wave, not ', friendly_typeof(wave), '.'), call = NULL)
  if (!is_int(sample_rate)) abort(paste0('`sample_rate` must be an integer, not ', friendly_typeof(sample_rate), '.'), call = NULL)
  if (!is_int(sample_size)) abort(paste0('`sample_size` must be an integer, not ', friendly_typeof(sample_size), '.'), call = NULL)
  if (!is_int(channels)) abort(paste0('`channels` must be an integer, not ', friendly_typeof(channels), '.'), call = NULL)
  wave_format_(wave, sample_rate, sample_size, channels)
  invisible(wave)
}

# --- Material/Model/Mesh mutation ---------------------------------------------

#' Set model texture
#'
#' Set texture for a material map of a model. Modifies the model in place.
#'
#' @param model A model.
#' @param material_id An integer. Material index.
#' @param map_type An integer. Material map type.
#' @param texture A texture.
#'
#' @family model functions
#'
#' @examplesIf FALSE
#' model <- load_model("model.obj")
#' tex <- load_texture("texture.png")
#' set_model_texture(model, 0L, material_map_index$albedo, tex)
#'
#' @export
set_model_texture <- function(model, material_id, map_type, texture) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_int(material_id)) abort(paste0('`material_id` must be an integer, not ', friendly_typeof(material_id), '.'), call = NULL)
  if (!is_int(map_type)) abort(paste0('`map_type` must be an integer, not ', friendly_typeof(map_type), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  set_model_texture_(model, material_id, map_type, texture)
  invisible(model)
}

#' Set material texture
#'
#' Set texture for a material map type. Modifies the material in place.
#'
#' @param material A material.
#' @param map_type An integer. Material map type.
#' @param texture A texture.
#'
#' @family material functions
#'
#' @examplesIf FALSE
#' mat <- load_material_default()
#' tex <- load_texture("texture.png")
#' set_material_texture(mat, material_map_index$albedo, tex)
#'
#' @export
set_material_texture <- function(material, map_type, texture) {
  if (!is_material(material)) abort(paste0('`material` must be a material, not ', friendly_typeof(material), '.'), call = NULL)
  if (!is_int(map_type)) abort(paste0('`map_type` must be an integer, not ', friendly_typeof(map_type), '.'), call = NULL)
  if (!is_texture(texture)) abort(paste0('`texture` must be a texture, not ', friendly_typeof(texture), '.'), call = NULL)
  set_material_texture_(material, map_type, texture)
  invisible(material)
}

#' Set model mesh material
#'
#' Set material for a mesh in a model. Modifies the model in place.
#'
#' @param model A model.
#' @param mesh_id An integer. Mesh index.
#' @param material_id An integer. Material index.
#'
#' @family model functions
#'
#' @examplesIf FALSE
#' model <- load_model("model.obj")
#' set_model_mesh_material(model, 0L, 0L)
#'
#' @export
set_model_mesh_material <- function(model, mesh_id, material_id) {
  if (!is_model(model)) abort(paste0('`model` must be a model, not ', friendly_typeof(model), '.'), call = NULL)
  if (!is_int(mesh_id)) abort(paste0('`mesh_id` must be an integer, not ', friendly_typeof(mesh_id), '.'), call = NULL)
  if (!is_int(material_id)) abort(paste0('`material_id` must be an integer, not ', friendly_typeof(material_id), '.'), call = NULL)
  set_model_mesh_material_(model, mesh_id, material_id)
  invisible(model)
}

#' Generate mesh tangents
#'
#' Compute mesh tangents. Modifies the mesh in place.
#'
#' @param mesh A mesh.
#'
#' @family mesh functions
#'
#' @examplesIf FALSE
#' mesh <- gen_mesh_cube(1.0, 1.0, 1.0)
#' gen_mesh_tangents(mesh)
#'
#' @export
gen_mesh_tangents <- function(mesh) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  gen_mesh_tangents_(mesh)
  invisible(mesh)
}

#' Upload mesh
#'
#' Upload mesh vertex data to GPU (VRAM). Modifies the mesh in place.
#'
#' @param mesh A mesh.
#' @param dynamic A logical. Whether the mesh data is dynamic.
#'
#' @family mesh functions
#'
#' @examplesIf FALSE
#' mesh <- gen_mesh_cube(1.0, 1.0, 1.0)
#' upload_mesh(mesh, FALSE)
#'
#' @export
upload_mesh <- function(mesh, dynamic) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_bool(dynamic)) abort(paste0('`dynamic` must be a logical, not ', friendly_typeof(dynamic), '.'), call = NULL)
  upload_mesh_(mesh, dynamic)
  invisible(mesh)
}

# --- Image drawing with mutation ----------------------------------------------

#' Image draw line ex
#'
#' Draw line within an image (Vector version). Modifies the image in place.
#'
#' @param dst An image.
#' @param start A numeric vector of length 2.
#' @param end A numeric vector of length 2.
#' @param thick An integer. Line thickness.
#' @param color A color.
#'
#' @family image functions
#'
#' @examplesIf FALSE
#' img <- gen_image_color(100, 100, "white")
#' image_draw_line_ex(img, c(0, 0), c(100, 100), 2L, "red")
#'
#' @export
image_draw_line_ex <- function(dst, start, end, thick, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_vector_2(start)) abort(paste0('`start` must be a numeric vector of length 2, not ', friendly_typeof(start), '.'), call = NULL)
  if (!is_vector_2(end)) abort(paste0('`end` must be a numeric vector of length 2, not ', friendly_typeof(end), '.'), call = NULL)
  image_draw_line_ex_(dst, start, end, thick, as_color(color))
  invisible(dst)
}

#' Image draw triangle
#'
#' Draw triangle within an image. Modifies the image in place.
#'
#' @param dst An image.
#' @param v1 A numeric vector of length 2.
#' @param v2 A numeric vector of length 2.
#' @param v3 A numeric vector of length 2.
#' @param color A color.
#'
#' @family image functions
#'
#' @examplesIf FALSE
#' img <- gen_image_color(200, 200, "white")
#' image_draw_triangle(img, c(100, 10), c(10, 190), c(190, 190), "blue")
#'
#' @export
image_draw_triangle <- function(dst, v1, v2, v3, color) {
  if (!is_image(dst)) abort(paste0('`dst` must be an image, not ', friendly_typeof(dst), '.'), call = NULL)
  if (!is_vector_2(v1)) abort(paste0('`v1` must be a numeric vector of length 2, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_2(v2)) abort(paste0('`v2` must be a numeric vector of length 2, not ', friendly_typeof(v2), '.'), call = NULL)
  if (!is_vector_2(v3)) abort(paste0('`v3` must be a numeric vector of length 2, not ', friendly_typeof(v3), '.'), call = NULL)
  image_draw_triangle_(dst, v1, v2, v3, as_color(color))
  invisible(dst)
}

# --- Matrix array function ----------------------------------------------------

#' Draw mesh instanced
#'
#' Draw multiple mesh instances with material and different transforms.
#'
#' @param mesh A mesh.
#' @param material A material.
#' @param transforms A list of 4x4 numeric matrices.
#'
#' @family draw functions
#'
#' @examplesIf FALSE
#' mesh <- gen_mesh_cube(1.0, 1.0, 1.0)
#' mat <- load_material_default()
#' transforms <- list(diag(4), diag(4))
#' draw_mesh_instanced(mesh, mat, transforms)
#'
#' @export
draw_mesh_instanced <- function(mesh, material, transforms) {
  if (!is_mesh(mesh)) abort(paste0('`mesh` must be a mesh, not ', friendly_typeof(mesh), '.'), call = NULL)
  if (!is_material(material)) abort(paste0('`material` must be a material, not ', friendly_typeof(material), '.'), call = NULL)
  if (!is.list(transforms)) abort('`transforms` must be a list of 4x4 matrices.', call = NULL)
  draw_mesh_instanced_(mesh, material, transforms)
}

# --- raymath output-pointer wrappers -----------------------------------------

#' Orthonormalize two Vector3
#'
#' Makes vectors normalized and orthogonal to each other.
#'
#' @param v1 A numeric vector of length 3.
#' @param v2 A numeric vector of length 3.
#'
#' @return A list with elements `v1` and `v2`, both numeric vectors of length 3.
#'
#' @family vector3 functions
#'
#' @examples
#' result <- vector3_ortho_normalize(c(1, 0, 0), c(0, 1, 0))
#' result$v1
#' result$v2
#'
#' @export
vector3_ortho_normalize <- function(v1, v2) {
  if (!is_vector_3(v1)) abort(paste0('`v1` must be a numeric vector of length 3, not ', friendly_typeof(v1), '.'), call = NULL)
  if (!is_vector_3(v2)) abort(paste0('`v2` must be a numeric vector of length 3, not ', friendly_typeof(v2), '.'), call = NULL)
  vector3_ortho_normalize_(v1, v2)
}

#' Quaternion to axis and angle
#'
#' Get the rotation angle and axis for a given quaternion.
#'
#' @param q A numeric vector of length 4 (quaternion).
#'
#' @return A list with elements `axis` (numeric vector of length 3) and `angle` (number).
#'
#' @family quaternion functions
#'
#' @examples
#' result <- quaternion_to_axis_angle(c(0, 0, 0, 1))
#' result$axis
#' result$angle
#'
#' @export
quaternion_to_axis_angle <- function(q) {
  if (!is_vector_4(q)) abort(paste0('`q` must be a numeric vector of length 4, not ', friendly_typeof(q), '.'), call = NULL)
  quaternion_to_axis_angle_(q)
}

#' Decompose a matrix
#'
#' Decompose a transformation matrix into its translation, rotation, and scale components.
#'
#' @param mat A 4x4 numeric matrix.
#'
#' @return A list with elements `translation` (numeric vector of length 3),
#'   `rotation` (numeric vector of length 4, quaternion), and `scale` (numeric vector of length 3).
#'
#' @family matrix functions
#'
#' @examples
#' result <- matrix_decompose(diag(4))
#' result$translation
#' result$rotation
#' result$scale
#'
#' @export
matrix_decompose <- function(mat) {
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  matrix_decompose_(mat)
}

# --- rcamera wrappers --------------------------------------------------------

#' Get camera forward vector
#'
#' @param camera A camera_3d.
#'
#' @return A numeric vector of length 3.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' get_camera_forward(cam)
#'
#' @export
get_camera_forward <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_forward_(camera)
}

#' Get camera up vector
#'
#' @param camera A camera_3d.
#'
#' @return A numeric vector of length 3.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' get_camera_up(cam)
#'
#' @export
get_camera_up <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_up_(camera)
}

#' Get camera right vector
#'
#' @param camera A camera_3d.
#'
#' @return A numeric vector of length 3.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' get_camera_right(cam)
#'
#' @export
get_camera_right <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_right_(camera)
}

#' Get camera view matrix
#'
#' @param camera A camera_3d.
#'
#' @return A 4x4 numeric matrix.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' get_camera_view_matrix(cam)
#'
#' @export
get_camera_view_matrix <- function(camera) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  get_camera_view_matrix_(camera)
}

#' Get camera projection matrix
#'
#' @param camera A camera_3d.
#' @param aspect A number. Screen aspect ratio (width/height).
#'
#' @return A 4x4 numeric matrix.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' get_camera_projection_matrix(cam, 800 / 450)
#'
#' @export
get_camera_projection_matrix <- function(camera, aspect) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(aspect)) abort(paste0('`aspect` must be a number, not ', friendly_typeof(aspect), '.'), call = NULL)
  get_camera_projection_matrix_(camera, aspect)
}

#' Move camera forward
#'
#' @param camera A camera_3d.
#' @param distance A number.
#' @param move_in_world_plane A logical.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_move_forward(cam, 1.0, TRUE)
#'
#' @export
camera_move_forward <- function(camera, distance, move_in_world_plane) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(distance)) abort(paste0('`distance` must be a number, not ', friendly_typeof(distance), '.'), call = NULL)
  if (!is_bool(move_in_world_plane)) abort(paste0('`move_in_world_plane` must be a logical, not ', friendly_typeof(move_in_world_plane), '.'), call = NULL)
  camera_move_forward_(camera, distance, move_in_world_plane)
  invisible(camera)
}

#' Move camera up
#'
#' @param camera A camera_3d.
#' @param distance A number.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_move_up(cam, 1.0)
#'
#' @export
camera_move_up <- function(camera, distance) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(distance)) abort(paste0('`distance` must be a number, not ', friendly_typeof(distance), '.'), call = NULL)
  camera_move_up_(camera, distance)
  invisible(camera)
}

#' Move camera right
#'
#' @param camera A camera_3d.
#' @param distance A number.
#' @param move_in_world_plane A logical.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_move_right(cam, 1.0, TRUE)
#'
#' @export
camera_move_right <- function(camera, distance, move_in_world_plane) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(distance)) abort(paste0('`distance` must be a number, not ', friendly_typeof(distance), '.'), call = NULL)
  if (!is_bool(move_in_world_plane)) abort(paste0('`move_in_world_plane` must be a logical, not ', friendly_typeof(move_in_world_plane), '.'), call = NULL)
  camera_move_right_(camera, distance, move_in_world_plane)
  invisible(camera)
}

#' Move camera to target
#'
#' @param camera A camera_3d.
#' @param delta A number.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_move_to_target(cam, 1.0)
#'
#' @export
camera_move_to_target <- function(camera, delta) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(delta)) abort(paste0('`delta` must be a number, not ', friendly_typeof(delta), '.'), call = NULL)
  camera_move_to_target_(camera, delta)
  invisible(camera)
}

#' Rotate camera around up axis (yaw)
#'
#' @param camera A camera_3d.
#' @param angle A number. Rotation angle in radians.
#' @param rotate_around_target A logical.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_yaw(cam, 0.1, TRUE)
#'
#' @export
camera_yaw <- function(camera, angle, rotate_around_target) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  if (!is_bool(rotate_around_target)) abort(paste0('`rotate_around_target` must be a logical, not ', friendly_typeof(rotate_around_target), '.'), call = NULL)
  camera_yaw_(camera, angle, rotate_around_target)
  invisible(camera)
}

#' Rotate camera around right axis (pitch)
#'
#' @param camera A camera_3d.
#' @param angle A number. Rotation angle in radians.
#' @param lock_view A logical.
#' @param rotate_around_target A logical.
#' @param rotate_up A logical.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_pitch(cam, 0.1, TRUE, TRUE, FALSE)
#'
#' @export
camera_pitch <- function(camera, angle, lock_view, rotate_around_target, rotate_up) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  if (!is_bool(lock_view)) abort(paste0('`lock_view` must be a logical, not ', friendly_typeof(lock_view), '.'), call = NULL)
  if (!is_bool(rotate_around_target)) abort(paste0('`rotate_around_target` must be a logical, not ', friendly_typeof(rotate_around_target), '.'), call = NULL)
  if (!is_bool(rotate_up)) abort(paste0('`rotate_up` must be a logical, not ', friendly_typeof(rotate_up), '.'), call = NULL)
  camera_pitch_(camera, angle, lock_view, rotate_around_target, rotate_up)
  invisible(camera)
}

#' Rotate camera around forward axis (roll)
#'
#' @param camera A camera_3d.
#' @param angle A number. Rotation angle in radians.
#'
#' @family camera functions
#'
#' @examples
#' cam <- camera_3d(c(0, 10, 10))
#' camera_roll(cam, 0.1)
#'
#' @export
camera_roll <- function(camera, angle) {
  if (!is_camera_3d(camera)) abort(paste0('`camera` must be a camera_3d, not ', friendly_typeof(camera), '.'), call = NULL)
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  camera_roll_(camera, angle)
  invisible(camera)
}

# --- raygui manual wrappers ---------------------------------------------------

#' Gui Scroll Panel
#'
#' Scroll panel control, returns scroll offset and view rectangle.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param content A rectangle (content area).
#' @param scroll A numeric vector of length 2 (current scroll offset).
#' @param view A rectangle (current view area).
#'
#' @return A list with \code{result} (integer), \code{scroll} (numeric vector of length 2),
#'   and \code{view} (rectangle).
#'
#' @family gui functions
#'
#' @examplesIf FALSE
#' gui_scroll_panel(
#'   rectangle(10, 10, 200, 200), "Panel",
#'   rectangle(0, 0, 400, 400), c(0, 0),
#'   rectangle(0, 0, 200, 200)
#' )
#'
#' @export
gui_scroll_panel <- function(bounds, text, content, scroll, view) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_rectangle(content)) abort(paste0('`content` must be a rectangle, not ', friendly_typeof(content), '.'), call = NULL)
  if (!is_vector_2(scroll)) abort(paste0('`scroll` must be a numeric vector of length 2, not ', friendly_typeof(scroll), '.'), call = NULL)
  if (!is_rectangle(view)) abort(paste0('`view` must be a rectangle, not ', friendly_typeof(view), '.'), call = NULL)
  gui_scroll_panel_(bounds, text, content, scroll, view)
}

#' Gui Text Box
#'
#' Text box control, updates text string.
#'
#' @param bounds A rectangle.
#' @param text A string (current text).
#' @param text_size An integer (max text size).
#' @param edit_mode A logical.
#'
#' @return A list with \code{result} (integer) and \code{text} (string).
#'
#' @family gui functions
#'
#' @examplesIf FALSE
#' gui_text_box(rectangle(10, 10, 200, 30), "Hello", 64L, FALSE)
#'
#' @export
gui_text_box <- function(bounds, text, text_size, edit_mode) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  gui_text_box_(bounds, text, text_size, edit_mode)
}

#' Gui Text Input Box
#'
#' Text input box control with title and buttons.
#'
#' @param bounds A rectangle.
#' @param title A string.
#' @param message A string.
#' @param text A string (current text).
#' @param text_size An integer (max text size).
#' @param btn_text A string (button labels separated by semicolons).
#' @param btn_active An integer (current active button).
#' @param secret_view_active A logical.
#'
#' @return A list with \code{result} (integer), \code{text} (string),
#'   \code{btn_active} (integer), and \code{secret_view_active} (logical).
#'
#' @family gui functions
#'
#' @examplesIf FALSE
#' gui_text_input_box(
#'   rectangle(100, 100, 400, 200), "Title", "Enter text:",
#'   "", 256L, "Ok;Cancel", 0L, FALSE
#' )
#'
#' @export
gui_text_input_box <- function(bounds, title, message, text, text_size, btn_text,
                                btn_active, secret_view_active) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  gui_text_input_box_(bounds, title, message, text, text_size, btn_text,
                       btn_active, secret_view_active)
}

#' Gui Value Box Float
#'
#' Value box control for float values.
#'
#' @param bounds A rectangle.
#' @param text A string.
#' @param text_value A string (current text representation).
#' @param value A number (current float value).
#' @param edit_mode A logical.
#'
#' @return A list with \code{result} (integer), \code{text_value} (string),
#'   and \code{value} (number).
#'
#' @family gui functions
#'
#' @examplesIf FALSE
#' gui_value_box_float(rectangle(10, 10, 100, 30), "Value:", "0.0", 0.0, FALSE)
#'
#' @export
gui_value_box_float <- function(bounds, text, text_value, value, edit_mode) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  gui_value_box_float_(bounds, text, text_value, value, edit_mode)
}

#' Export R script as webR HTML
#'
#' Generate an HTML file that runs a raylibr R script in the browser
#' using webR. Input features (mouse, keyboard, audio) are auto-detected
#' from the R code.
#'
#' @param script Path to an R script file.
#' @param output Path for the output HTML file. Defaults to replacing
#'   the \code{.R} extension with \code{.html}.
#' @param title Page title. Auto-detected from \code{init_window()} if
#'   not specified.
#' @param width Canvas width in pixels. Auto-detected from
#'   \code{init_window()} if not specified.
#' @param height Canvas height in pixels. Auto-detected from
#'   \code{init_window()} if not specified.
#' @param background CSS background color for the page.
#' @param cursor CSS cursor style for the canvas (e.g., \code{"crosshair"},
#'   \code{"default"}). When \code{NULL} (the default), no cursor rule is
#'   emitted.
#'
#' @return The output file path (invisibly). Also copies required
#'   JavaScript helper files (\code{coi-serviceworker.js},
#'   \code{raylibr-host.js}, \code{raylibr-audio.js}) to the output
#'   directory if they are not already present.
#'
#' @details
#' The generated HTML expects a \code{repo/} subdirectory containing
#' the raylibr webR package built with \code{inst/wasm/build-webr.sh}.
#'
#' Input features are detected by scanning the R code:
#' \itemize{
#'   \item Mouse position: \code{get_mouse_position()}, etc.
#'   \item Mouse buttons: \code{is_mouse_button_down()}, etc.
#'   \item Keyboard (one-shot): \code{get_key_pressed()},
#'     \code{is_key_pressed()}
#'   \item Keyboard (held): \code{is_key_down()}
#'   \item Text input: \code{gui_text_box()}, \code{get_char_pressed()}
#'   \item Audio: \code{init_audio_device()}, \code{load_sound()}, etc.
#' }
#'
#' Key mappings are built automatically from \code{key$...} references
#' in the script. The JavaScript keyboard handler includes a
#' single-character fallback so letter, digit, and punctuation keys
#' work without explicit map entries.
#'
#' @examplesIf FALSE
#' export_html("game.R")
#' export_html("game.R", "output/game.html", title = "My Game")
#'
#' @export
export_html <- function(script, output = NULL, title = NULL,
                        width = NULL, height = NULL,
                        background = "#000", cursor = NULL) {

  code <- paste(readLines(script, warn = FALSE), collapse = "\n")

  # --- Resolve init_window() arguments ----------------------------------
  env <- list()
  for (m in regmatches(code, gregexpr("(\\w+)\\s*<-\\s*(\\d+)(?=[^.])", code, perl = TRUE))[[1]]) {
    p <- regmatches(m, regexec("(\\w+)\\s*<-\\s*(\\d+)", m))[[1]]
    if (length(p) == 3) env[[p[2]]] <- as.integer(p[3])
  }
  for (m in regmatches(code, gregexpr("(\\w+)\\s*<-\\s*c\\((\\d+(?:\\s*,\\s*\\d+)*)\\)", code, perl = TRUE))[[1]]) {
    p <- regmatches(m, regexec("(\\w+)\\s*<-\\s*c\\(([^)]+)\\)", m))[[1]]
    if (length(p) == 3) env[[p[2]]] <- as.integer(strsplit(p[3], "\\s*,\\s*")[[1]])
  }

  resolve_int <- function(expr) {
    expr <- trimws(expr)
    if (grepl("^\\d+L?$", expr)) return(as.integer(sub("L$", "", expr)))
    if (!is.null(env[[expr]])) return(env[[expr]][1])
    idx <- regmatches(expr, regexec("^(\\w+)\\[\\s*(\\d+)\\s*\\]$", expr))[[1]]
    if (length(idx) == 3 && !is.null(env[[idx[2]]])) {
      i <- as.integer(idx[3])
      v <- env[[idx[2]]]
      if (i <= length(v)) return(v[i])
    }
    NULL
  }

  iw <- regmatches(code, regexec(
    "init_window\\s*\\(\\s*([^,]+?)\\s*,\\s*([^,]+?)\\s*,\\s*([^)]+?)\\s*\\)",
    code))[[1]]
  if (length(iw) >= 4) {
    if (is.null(width))  width  <- resolve_int(iw[2])
    if (is.null(height)) height <- resolve_int(iw[3])
    if (is.null(title)) {
      tm <- regmatches(iw[4], regexec('"([^"]*)"', iw[4]))[[1]]
      if (length(tm) >= 2) title <- tm[2]
    }
  }
  if (is.null(width))  width  <- 600L
  if (is.null(height)) height <- 400L
  if (is.null(title))  title  <- tools::file_path_sans_ext(basename(script))

  # --- Feature detection ------------------------------------------------
  has_gui <- grepl("gui_button|gui_toggle|gui_check_box|gui_slider|gui_combo_box|gui_spinner|gui_scroll_panel|gui_text_box|gui_text_input_box|gui_color_bar|gui_value_box", code)
  has_mouse <- has_gui || grepl(
    "get_mouse_position|get_mouse_delta|is_cursor_on_screen|set_mouse_cursor|get_mouse_x|get_mouse_y|get_mouse_wheel_move",
    code)
  has_mouse_buttons <- has_gui || grepl(
    "is_mouse_button_down|is_mouse_button_pressed|is_mouse_button_released",
    code)
  has_key_pressed <- grepl("get_key_pressed|is_key_pressed", code)
  has_key_down <- grepl("is_key_down", code)
  has_char_input <- grepl("gui_text_box|gui_text_input_box|get_char_pressed", code)
  has_audio <- grepl("init_audio_device|load_sound|load_music_stream", code)

  # --- Key extraction ---------------------------------------------------
  all_key_names <- unique(sub("^key\\$", "",
    regmatches(code, gregexpr("key\\$[a-z_0-9]+", code))[[1]]))

  kd_pat <- regmatches(code, gregexpr(
    "is_key_down\\s*\\(\\s*key\\$([a-z_0-9]+)\\s*\\)", code))[[1]]
  keydown_keys <- unique(sub(".*key\\$([a-z_0-9]+).*", "\\1", kd_pat))

  # Keys with multi-character e.key names (need explicit keyMap entries)
  key_js_name <- c(
    up = "ArrowUp", down = "ArrowDown", left = "ArrowLeft", right = "ArrowRight",
    enter = "Enter", escape = "Escape", tab = "Tab", backspace = "Backspace",
    delete = "Delete", insert = "Insert", home = "Home", end = "End",
    page_up = "PageUp", page_down = "PageDown",
    f1 = "F1", f2 = "F2", f3 = "F3", f4 = "F4", f5 = "F5", f6 = "F6",
    f7 = "F7", f8 = "F8", f9 = "F9", f10 = "F10", f11 = "F11", f12 = "F12")

  keymap_entries <- character(0)
  if (has_key_pressed) {
    for (kn in all_key_names) {
      js_name <- key_js_name[kn]
      if (is.na(js_name)) next
      raylib_code <- key[[kn]]
      if (is.null(raylib_code)) next
      keymap_entries <- c(keymap_entries, paste0(js_name, ": ", raylib_code))
    }
  }

  # Fixed keydown bitmask (must match patch_raylib.py)
  kd_bit  <- c(w = 1L, a = 2L, s = 4L, d = 8L,
               left = 16L, right = 32L, up = 64L, down = 128L,
               space = 256L, left_bracket = 512L, right_bracket = 1024L,
               period = 2048L, comma = 4096L,
               left_shift = 8192L, right_shift = 16384L)
  kd_code <- c(w = "KeyW", a = "KeyA", s = "KeyS", d = "KeyD",
               left = "ArrowLeft", right = "ArrowRight",
               up = "ArrowUp", down = "ArrowDown",
               space = "Space", left_bracket = "BracketLeft",
               right_bracket = "BracketRight",
               period = "Period", comma = "Comma",
               left_shift = "ShiftLeft", right_shift = "ShiftRight")

  keydown_entries <- character(0)
  if (has_key_down) {
    for (kn in keydown_keys) {
      if (!is.na(kd_bit[kn]) && !is.na(kd_code[kn]))
        keydown_entries <- c(keydown_entries,
                             paste0(kd_code[kn], ": ", kd_bit[kn]))
    }
  }
  if (has_char_input) {
    for (kn in c("left_shift", "right_shift")) {
      entry <- paste0(kd_code[kn], ": ", kd_bit[kn])
      if (!(entry %in% keydown_entries))
        keydown_entries <- c(keydown_entries, entry)
    }
  }

  # --- Build initRaylibr config -----------------------------------------
  input_parts <- character(0)
  if (has_mouse) input_parts <- c(input_parts, "    mouse: true")
  if (has_mouse_buttons) input_parts <- c(input_parts, "    mouseButtons: true")
  if (has_key_pressed) {
    if (length(keymap_entries) > 0) {
      input_parts <- c(input_parts, paste0(
        "    keyMap: { ", paste(keymap_entries, collapse = ", "), " }"))
    } else {
      input_parts <- c(input_parts, "    keyMap: {}")
    }
  }
  if (length(keydown_entries) > 0) {
    input_parts <- c(input_parts, paste0(
      "    keydownMap: { ", paste(keydown_entries, collapse = ", "), " }"))
  }
  if (has_char_input) input_parts <- c(input_parts, "    charInput: true")

  has_input <- length(input_parts) > 0
  has_keyboard <- has_key_pressed || length(keydown_entries) > 0

  opts <- c("  canvas: document.getElementById('canvas')",
            "  loadingEl: document.getElementById('loading')")
  if (has_input) {
    opts <- c(opts, paste0("  input: {\n",
                           paste(input_parts, collapse = ",\n"), ",\n  }"))
  }
  if (has_audio) opts <- c(opts, "  audio: true")
  if (has_keyboard && !has_char_input) opts <- c(opts, "  focusOnFirstFrame: true")
  if (has_mouse_buttons || has_char_input) opts <- c(opts, "  focusOnMousedown: true")

  opts_js <- paste(opts, collapse = ",\n")

  # --- Escape R code for JS template literal ----------------------------
  js_code <- gsub("\\", "\\\\", code, fixed = TRUE)
  js_code <- gsub("`", "\\`", js_code, fixed = TRUE)
  js_code <- gsub("${", "\\${", js_code, fixed = TRUE)

  # --- Assemble HTML ----------------------------------------------------
  html <- paste0(
    "<!DOCTYPE html>\n",
    "<html lang=\"en\">\n",
    "<head>\n",
    "<script src=\"coi-serviceworker.js\"></script>\n",
    "<meta charset=\"utf-8\">\n",
    "<meta name=\"viewport\" content=\"width=device-width\">\n",
    "<title>", title, "</title>\n",
    "<style>\n",
    "  * { margin: 0; padding: 0; box-sizing: border-box; }\n",
    "  body { background: ", background,
    "; display: flex; justify-content: center; align-items: center; min-height: 100vh; }\n",
    "  canvas { display: block; image-rendering: pixelated;",
    if (!is.null(cursor)) paste0(" cursor: ", cursor, ";") else "", " }\n",
    "  #loading { position: absolute; color: #888; font-family: monospace; font-size: 14px; }\n",
    "</style>\n",
    "</head>\n",
    "<body>\n",
    "<canvas id=\"canvas\" width=\"", width, "\" height=\"", height,
    "\" tabindex=\"0\"></canvas>\n",
    "<div id=\"loading\">Loading raylibr...</div>\n",
    "\n",
    "<script type=\"module\">\n",
    "import { initRaylibr } from './raylibr-host.js';\n",
    "\n",
    "const { webR } = await initRaylibr({\n",
    opts_js, ",\n",
    "}).catch(e => { document.getElementById('loading').textContent = 'Error: ' + e.message; throw e; });\n",
    "\n",
    "await webR.evalR(`\n",
    js_code, "\n`);\n",
    "</script>\n",
    "</body>\n",
    "</html>\n")

  # --- Write output -----------------------------------------------------
  if (is.null(output)) output <- sub("\\.[Rr]$", ".html", script)
  cat(html, file = output)

  outdir <- dirname(normalizePath(output, mustWork = FALSE))
  webr_dir <- system.file("webr", package = "raylibr")
  if (nzchar(webr_dir)) {
    for (f in c("coi-serviceworker.js", "raylibr-host.js", "raylibr-audio.js")) {
      dst <- file.path(outdir, f)
      if (!file.exists(dst)) file.copy(file.path(webr_dir, f), dst)
    }
  }

  message("Wrote ", output)
  message("Serve with a local web server. A 'repo/' subdirectory with the ",
          "raylibr webR package is required.")
  invisible(output)
}

abort <- function(message, call = NULL) {
  if (requireNamespace("rlang", quietly = TRUE)) {
    rlang::abort(message, call = call)
  } else {
    base::stop(message, call. = !is.null(call))
  }
}
