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
#' @export
as_color <- function(x) {
  color_from_(x)
}

#' Check if running on web
#'
#' Returns TRUE when running under Emscripten/webR, FALSE otherwise.
#'
#' @return Logical
#' @export
is_web <- function() {
  is_web_()
}

#' Evaluate JavaScript
#'
#' @param script Character string of JavaScript to evaluate.
#' @return Character string result.
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
#' @export
raylibr_resource <- function(name) {
  system.file("demo_resources", name, package = "raylibr")
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
#' @export
gui_scroll_panel <- function(bounds, text, content, scroll, view) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  if (!is_rectangle(content)) abort(paste0('`content` must be a rectangle, not ', friendly_typeof(content), '.'), call = NULL)
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
#' @export
gui_value_box_float <- function(bounds, text, text_value, value, edit_mode) {
  if (!is_rectangle(bounds)) abort(paste0('`bounds` must be a rectangle, not ', friendly_typeof(bounds), '.'), call = NULL)
  gui_value_box_float_(bounds, text, text_value, value, edit_mode)
}

abort <- function(message, call = NULL) {
  if (requireNamespace("rlang", quietly = TRUE)) {
    rlang::abort(message, call = call)
  } else {
    base::stop(message, call. = !is.null(call))
  }
}
