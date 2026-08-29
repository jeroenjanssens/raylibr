# Do not edit by hand.

#' Rl Matrix Mode
#'
#'
#' @param mode An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_matrix_mode <- function(mode) {
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  rl_matrix_mode_(mode)
}

#' Rl Push Matrix
#'
#'
#' @family rlgl functions
#'
#' @export
rl_push_matrix <- function() {
  rl_push_matrix_()
}

#' Rl Pop Matrix
#'
#'
#' @family rlgl functions
#'
#' @export
rl_pop_matrix <- function() {
  rl_pop_matrix_()
}

#' Rl Load Identity
#'
#'
#' @family rlgl functions
#'
#' @export
rl_load_identity <- function() {
  rl_load_identity_()
}

#' Rl Translatef
#'
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @family rlgl functions
#'
#' @export
rl_translatef <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  rl_translatef_(x, y, z)
}

#' Rl Rotatef
#'
#'
#' @param angle A number.
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @family rlgl functions
#'
#' @export
rl_rotatef <- function(angle, x, y, z) {
  if (!is_float(angle)) abort(paste0('`angle` must be a number, not ', friendly_typeof(angle), '.'), call = NULL)
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  rl_rotatef_(angle, x, y, z)
}

#' Rl Scalef
#'
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @family rlgl functions
#'
#' @export
rl_scalef <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  rl_scalef_(x, y, z)
}

#' Rl Frustum
#'
#'
#' @param left A number.
#' @param right A number.
#' @param bottom A number.
#' @param top A number.
#' @param znear A number.
#' @param zfar A number.
#'
#' @family rlgl functions
#'
#' @export
rl_frustum <- function(left, right, bottom, top, znear, zfar) {
  if (!is_float(left)) abort(paste0('`left` must be a number, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_float(right)) abort(paste0('`right` must be a number, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_float(bottom)) abort(paste0('`bottom` must be a number, not ', friendly_typeof(bottom), '.'), call = NULL)
  if (!is_float(top)) abort(paste0('`top` must be a number, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_float(znear)) abort(paste0('`znear` must be a number, not ', friendly_typeof(znear), '.'), call = NULL)
  if (!is_float(zfar)) abort(paste0('`zfar` must be a number, not ', friendly_typeof(zfar), '.'), call = NULL)
  rl_frustum_(left, right, bottom, top, znear, zfar)
}

#' Rl Ortho
#'
#'
#' @param left A number.
#' @param right A number.
#' @param bottom A number.
#' @param top A number.
#' @param znear A number.
#' @param zfar A number.
#'
#' @family rlgl functions
#'
#' @export
rl_ortho <- function(left, right, bottom, top, znear, zfar) {
  if (!is_float(left)) abort(paste0('`left` must be a number, not ', friendly_typeof(left), '.'), call = NULL)
  if (!is_float(right)) abort(paste0('`right` must be a number, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_float(bottom)) abort(paste0('`bottom` must be a number, not ', friendly_typeof(bottom), '.'), call = NULL)
  if (!is_float(top)) abort(paste0('`top` must be a number, not ', friendly_typeof(top), '.'), call = NULL)
  if (!is_float(znear)) abort(paste0('`znear` must be a number, not ', friendly_typeof(znear), '.'), call = NULL)
  if (!is_float(zfar)) abort(paste0('`zfar` must be a number, not ', friendly_typeof(zfar), '.'), call = NULL)
  rl_ortho_(left, right, bottom, top, znear, zfar)
}

#' Rl Viewport
#'
#'
#' @param x An integer.
#' @param y An integer.
#' @param width An integer.
#' @param height An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_viewport <- function(x, y, width, height) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  rl_viewport_(x, y, width, height)
}

#' Rl Set Clip Planes
#'
#'
#' @param near_plane A number.
#' @param far_plane A number.
#'
#' @family rlgl functions
#'
#' @export
rl_set_clip_planes <- function(near_plane, far_plane) {
  if (!is_float(near_plane)) abort(paste0('`near_plane` must be a number, not ', friendly_typeof(near_plane), '.'), call = NULL)
  if (!is_float(far_plane)) abort(paste0('`far_plane` must be a number, not ', friendly_typeof(far_plane), '.'), call = NULL)
  rl_set_clip_planes_(near_plane, far_plane)
}

#' Rl Get Cull Distance Near
#'
#'
#' @return A number
#'
#' @family rlgl functions
#'
#' @export
rl_get_cull_distance_near <- function() {
  rl_get_cull_distance_near_()
}

#' Rl Get Cull Distance Far
#'
#'
#' @return A number
#'
#' @family rlgl functions
#'
#' @export
rl_get_cull_distance_far <- function() {
  rl_get_cull_distance_far_()
}

#' Rl Begin
#'
#'
#' @param mode An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_begin <- function(mode) {
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  rl_begin_(mode)
}

#' Rl End
#'
#'
#' @family rlgl functions
#'
#' @export
rl_end <- function() {
  rl_end_()
}

#' Rl Vertex2i
#'
#'
#' @param x An integer.
#' @param y An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_vertex2i <- function(x, y) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  rl_vertex2i_(x, y)
}

#' Rl Vertex2f
#'
#'
#' @param x A number.
#' @param y A number.
#'
#' @family rlgl functions
#'
#' @export
rl_vertex2f <- function(x, y) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  rl_vertex2f_(x, y)
}

#' Rl Vertex3f
#'
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @family rlgl functions
#'
#' @export
rl_vertex3f <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  rl_vertex3f_(x, y, z)
}

#' Rl Tex Coord2f
#'
#'
#' @param x A number.
#' @param y A number.
#'
#' @family rlgl functions
#'
#' @export
rl_tex_coord2f <- function(x, y) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  rl_tex_coord2f_(x, y)
}

#' Rl Normal3f
#'
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @family rlgl functions
#'
#' @export
rl_normal3f <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  rl_normal3f_(x, y, z)
}

#' Rl Color4ub
#'
#'
#' @param r A non-negative integer (0-255).
#' @param g A non-negative integer (0-255).
#' @param b A non-negative integer (0-255).
#' @param a A non-negative integer (0-255).
#'
#' @family rlgl functions
#'
#' @export
rl_color4ub <- function(r, g, b, a) {
  if (!is_unsigned_char(r)) abort(paste0('`r` must be a non-negative integer (0-255), not ', friendly_typeof(r), '.'), call = NULL)
  if (!is_unsigned_char(g)) abort(paste0('`g` must be a non-negative integer (0-255), not ', friendly_typeof(g), '.'), call = NULL)
  if (!is_unsigned_char(b)) abort(paste0('`b` must be a non-negative integer (0-255), not ', friendly_typeof(b), '.'), call = NULL)
  if (!is_unsigned_char(a)) abort(paste0('`a` must be a non-negative integer (0-255), not ', friendly_typeof(a), '.'), call = NULL)
  rl_color4ub_(r, g, b, a)
}

#' Rl Color3f
#'
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#'
#' @family rlgl functions
#'
#' @export
rl_color3f <- function(x, y, z) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  rl_color3f_(x, y, z)
}

#' Rl Color4f
#'
#'
#' @param x A number.
#' @param y A number.
#' @param z A number.
#' @param w A number.
#'
#' @family rlgl functions
#'
#' @export
rl_color4f <- function(x, y, z, w) {
  if (!is_float(x)) abort(paste0('`x` must be a number, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_float(y)) abort(paste0('`y` must be a number, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_float(z)) abort(paste0('`z` must be a number, not ', friendly_typeof(z), '.'), call = NULL)
  if (!is_float(w)) abort(paste0('`w` must be a number, not ', friendly_typeof(w), '.'), call = NULL)
  rl_color4f_(x, y, z, w)
}

#' Rl Enable Vertex Array
#'
#'
#' @param vao_id A non-negative integer.
#'
#' @return A logical
#'
#' @family rlgl functions
#'
#' @export
rl_enable_vertex_array <- function(vao_id) {
  if (!is_unsigned_int(vao_id)) abort(paste0('`vao_id` must be a non-negative integer, not ', friendly_typeof(vao_id), '.'), call = NULL)
  rl_enable_vertex_array_(vao_id)
}

#' Rl Disable Vertex Array
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_vertex_array <- function() {
  rl_disable_vertex_array_()
}

#' Rl Enable Vertex Buffer
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_vertex_buffer <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_enable_vertex_buffer_(id)
}

#' Rl Disable Vertex Buffer
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_vertex_buffer <- function() {
  rl_disable_vertex_buffer_()
}

#' Rl Enable Vertex Buffer Element
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_vertex_buffer_element <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_enable_vertex_buffer_element_(id)
}

#' Rl Disable Vertex Buffer Element
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_vertex_buffer_element <- function() {
  rl_disable_vertex_buffer_element_()
}

#' Rl Enable Vertex Attribute
#'
#'
#' @param index A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_vertex_attribute <- function(index) {
  if (!is_unsigned_int(index)) abort(paste0('`index` must be a non-negative integer, not ', friendly_typeof(index), '.'), call = NULL)
  rl_enable_vertex_attribute_(index)
}

#' Rl Disable Vertex Attribute
#'
#'
#' @param index A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_disable_vertex_attribute <- function(index) {
  if (!is_unsigned_int(index)) abort(paste0('`index` must be a non-negative integer, not ', friendly_typeof(index), '.'), call = NULL)
  rl_disable_vertex_attribute_(index)
}

#' Rl Disable State Pointer
#'
#'
#' @param vertex_attrib_type An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_disable_state_pointer <- function(vertex_attrib_type) {
  if (!is_int(vertex_attrib_type)) abort(paste0('`vertex_attrib_type` must be an integer, not ', friendly_typeof(vertex_attrib_type), '.'), call = NULL)
  rl_disable_state_pointer_(vertex_attrib_type)
}

#' Rl Active Texture Slot
#'
#'
#' @param slot An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_active_texture_slot <- function(slot) {
  if (!is_int(slot)) abort(paste0('`slot` must be an integer, not ', friendly_typeof(slot), '.'), call = NULL)
  rl_active_texture_slot_(slot)
}

#' Rl Enable Texture
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_texture <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_enable_texture_(id)
}

#' Rl Disable Texture
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_texture <- function() {
  rl_disable_texture_()
}

#' Rl Enable Texture Cubemap
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_texture_cubemap <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_enable_texture_cubemap_(id)
}

#' Rl Disable Texture Cubemap
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_texture_cubemap <- function() {
  rl_disable_texture_cubemap_()
}

#' Rl Texture Parameters
#'
#'
#' @param id A non-negative integer.
#' @param param An integer.
#' @param value An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_texture_parameters <- function(id, param, value) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_int(param)) abort(paste0('`param` must be an integer, not ', friendly_typeof(param), '.'), call = NULL)
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  rl_texture_parameters_(id, param, value)
}

#' Rl Cubemap Parameters
#'
#'
#' @param id A non-negative integer.
#' @param param An integer.
#' @param value An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_cubemap_parameters <- function(id, param, value) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_int(param)) abort(paste0('`param` must be an integer, not ', friendly_typeof(param), '.'), call = NULL)
  if (!is_int(value)) abort(paste0('`value` must be an integer, not ', friendly_typeof(value), '.'), call = NULL)
  rl_cubemap_parameters_(id, param, value)
}

#' Rl Enable Shader
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_shader <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_enable_shader_(id)
}

#' Rl Disable Shader
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_shader <- function() {
  rl_disable_shader_()
}

#' Rl Enable Framebuffer
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_enable_framebuffer <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_enable_framebuffer_(id)
}

#' Rl Disable Framebuffer
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_framebuffer <- function() {
  rl_disable_framebuffer_()
}

#' Rl Get Active Framebuffer
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_active_framebuffer <- function() {
  rl_get_active_framebuffer_()
}

#' Rl Active Draw Buffers
#'
#'
#' @param count An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_active_draw_buffers <- function(count) {
  if (!is_int(count)) abort(paste0('`count` must be an integer, not ', friendly_typeof(count), '.'), call = NULL)
  rl_active_draw_buffers_(count)
}

#' Rl Blit Framebuffer
#'
#'
#' @param src_x An integer.
#' @param src_y An integer.
#' @param src_width An integer.
#' @param src_height An integer.
#' @param dst_x An integer.
#' @param dst_y An integer.
#' @param dst_width An integer.
#' @param dst_height An integer.
#' @param buffer_mask An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_blit_framebuffer <- function(src_x, src_y, src_width, src_height, dst_x, dst_y, dst_width, dst_height, buffer_mask) {
  if (!is_int(src_x)) abort(paste0('`src_x` must be an integer, not ', friendly_typeof(src_x), '.'), call = NULL)
  if (!is_int(src_y)) abort(paste0('`src_y` must be an integer, not ', friendly_typeof(src_y), '.'), call = NULL)
  if (!is_int(src_width)) abort(paste0('`src_width` must be an integer, not ', friendly_typeof(src_width), '.'), call = NULL)
  if (!is_int(src_height)) abort(paste0('`src_height` must be an integer, not ', friendly_typeof(src_height), '.'), call = NULL)
  if (!is_int(dst_x)) abort(paste0('`dst_x` must be an integer, not ', friendly_typeof(dst_x), '.'), call = NULL)
  if (!is_int(dst_y)) abort(paste0('`dst_y` must be an integer, not ', friendly_typeof(dst_y), '.'), call = NULL)
  if (!is_int(dst_width)) abort(paste0('`dst_width` must be an integer, not ', friendly_typeof(dst_width), '.'), call = NULL)
  if (!is_int(dst_height)) abort(paste0('`dst_height` must be an integer, not ', friendly_typeof(dst_height), '.'), call = NULL)
  if (!is_int(buffer_mask)) abort(paste0('`buffer_mask` must be an integer, not ', friendly_typeof(buffer_mask), '.'), call = NULL)
  rl_blit_framebuffer_(src_x, src_y, src_width, src_height, dst_x, dst_y, dst_width, dst_height, buffer_mask)
}

#' Rl Bind Framebuffer
#'
#'
#' @param target A non-negative integer.
#' @param framebuffer A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_bind_framebuffer <- function(target, framebuffer) {
  if (!is_unsigned_int(target)) abort(paste0('`target` must be a non-negative integer, not ', friendly_typeof(target), '.'), call = NULL)
  if (!is_unsigned_int(framebuffer)) abort(paste0('`framebuffer` must be a non-negative integer, not ', friendly_typeof(framebuffer), '.'), call = NULL)
  rl_bind_framebuffer_(target, framebuffer)
}

#' Rl Enable Color Blend
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_color_blend <- function() {
  rl_enable_color_blend_()
}

#' Rl Disable Color Blend
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_color_blend <- function() {
  rl_disable_color_blend_()
}

#' Rl Enable Depth Test
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_depth_test <- function() {
  rl_enable_depth_test_()
}

#' Rl Disable Depth Test
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_depth_test <- function() {
  rl_disable_depth_test_()
}

#' Rl Enable Depth Mask
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_depth_mask <- function() {
  rl_enable_depth_mask_()
}

#' Rl Disable Depth Mask
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_depth_mask <- function() {
  rl_disable_depth_mask_()
}

#' Rl Enable Backface Culling
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_backface_culling <- function() {
  rl_enable_backface_culling_()
}

#' Rl Disable Backface Culling
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_backface_culling <- function() {
  rl_disable_backface_culling_()
}

#' Rl Color Mask
#'
#'
#' @param r A logical.
#' @param g A logical.
#' @param b A logical.
#' @param a A logical.
#'
#' @family rlgl functions
#'
#' @export
rl_color_mask <- function(r, g, b, a) {
  if (!is_bool(r)) abort(paste0('`r` must be a logical, not ', friendly_typeof(r), '.'), call = NULL)
  if (!is_bool(g)) abort(paste0('`g` must be a logical, not ', friendly_typeof(g), '.'), call = NULL)
  if (!is_bool(b)) abort(paste0('`b` must be a logical, not ', friendly_typeof(b), '.'), call = NULL)
  if (!is_bool(a)) abort(paste0('`a` must be a logical, not ', friendly_typeof(a), '.'), call = NULL)
  rl_color_mask_(r, g, b, a)
}

#' Rl Set Cull Face
#'
#'
#' @param mode An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_cull_face <- function(mode) {
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  rl_set_cull_face_(mode)
}

#' Rl Enable Scissor Test
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_scissor_test <- function() {
  rl_enable_scissor_test_()
}

#' Rl Disable Scissor Test
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_scissor_test <- function() {
  rl_disable_scissor_test_()
}

#' Rl Scissor
#'
#'
#' @param x An integer.
#' @param y An integer.
#' @param width An integer.
#' @param height An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_scissor <- function(x, y, width, height) {
  if (!is_int(x)) abort(paste0('`x` must be an integer, not ', friendly_typeof(x), '.'), call = NULL)
  if (!is_int(y)) abort(paste0('`y` must be an integer, not ', friendly_typeof(y), '.'), call = NULL)
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  rl_scissor_(x, y, width, height)
}

#' Rl Enable Point Mode
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_point_mode <- function() {
  rl_enable_point_mode_()
}

#' Rl Disable Point Mode
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_point_mode <- function() {
  rl_disable_point_mode_()
}

#' Rl Set Point Size
#'
#'
#' @param size A number.
#'
#' @family rlgl functions
#'
#' @export
rl_set_point_size <- function(size) {
  if (!is_float(size)) abort(paste0('`size` must be a number, not ', friendly_typeof(size), '.'), call = NULL)
  rl_set_point_size_(size)
}

#' Rl Get Point Size
#'
#'
#' @return A number
#'
#' @family rlgl functions
#'
#' @export
rl_get_point_size <- function() {
  rl_get_point_size_()
}

#' Rl Enable Wire Mode
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_wire_mode <- function() {
  rl_enable_wire_mode_()
}

#' Rl Disable Wire Mode
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_wire_mode <- function() {
  rl_disable_wire_mode_()
}

#' Rl Set Line Width
#'
#'
#' @param width A number.
#'
#' @family rlgl functions
#'
#' @export
rl_set_line_width <- function(width) {
  if (!is_float(width)) abort(paste0('`width` must be a number, not ', friendly_typeof(width), '.'), call = NULL)
  rl_set_line_width_(width)
}

#' Rl Get Line Width
#'
#'
#' @return A number
#'
#' @family rlgl functions
#'
#' @export
rl_get_line_width <- function() {
  rl_get_line_width_()
}

#' Rl Enable Smooth Lines
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_smooth_lines <- function() {
  rl_enable_smooth_lines_()
}

#' Rl Disable Smooth Lines
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_smooth_lines <- function() {
  rl_disable_smooth_lines_()
}

#' Rl Enable Stereo Render
#'
#'
#' @family rlgl functions
#'
#' @export
rl_enable_stereo_render <- function() {
  rl_enable_stereo_render_()
}

#' Rl Disable Stereo Render
#'
#'
#' @family rlgl functions
#'
#' @export
rl_disable_stereo_render <- function() {
  rl_disable_stereo_render_()
}

#' Rl Is Stereo Render Enabled
#'
#'
#' @return A logical
#'
#' @family rlgl functions
#'
#' @export
rl_is_stereo_render_enabled <- function() {
  rl_is_stereo_render_enabled_()
}

#' Rl Clear Color
#'
#'
#' @param r A non-negative integer (0-255).
#' @param g A non-negative integer (0-255).
#' @param b A non-negative integer (0-255).
#' @param a A non-negative integer (0-255).
#'
#' @family rlgl functions
#'
#' @export
rl_clear_color <- function(r, g, b, a) {
  if (!is_unsigned_char(r)) abort(paste0('`r` must be a non-negative integer (0-255), not ', friendly_typeof(r), '.'), call = NULL)
  if (!is_unsigned_char(g)) abort(paste0('`g` must be a non-negative integer (0-255), not ', friendly_typeof(g), '.'), call = NULL)
  if (!is_unsigned_char(b)) abort(paste0('`b` must be a non-negative integer (0-255), not ', friendly_typeof(b), '.'), call = NULL)
  if (!is_unsigned_char(a)) abort(paste0('`a` must be a non-negative integer (0-255), not ', friendly_typeof(a), '.'), call = NULL)
  rl_clear_color_(r, g, b, a)
}

#' Rl Clear Screen Buffers
#'
#'
#' @family rlgl functions
#'
#' @export
rl_clear_screen_buffers <- function() {
  rl_clear_screen_buffers_()
}

#' Rl Check Errors
#'
#'
#' @family rlgl functions
#'
#' @export
rl_check_errors <- function() {
  rl_check_errors_()
}

#' Rl Set Blend Mode
#'
#'
#' @param mode An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_blend_mode <- function(mode) {
  if (!is_int(mode)) abort(paste0('`mode` must be an integer, not ', friendly_typeof(mode), '.'), call = NULL)
  rl_set_blend_mode_(mode)
}

#' Rl Set Blend Factors
#'
#'
#' @param gl_src_factor An integer.
#' @param gl_dst_factor An integer.
#' @param gl_equation An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_blend_factors <- function(gl_src_factor, gl_dst_factor, gl_equation) {
  if (!is_int(gl_src_factor)) abort(paste0('`gl_src_factor` must be an integer, not ', friendly_typeof(gl_src_factor), '.'), call = NULL)
  if (!is_int(gl_dst_factor)) abort(paste0('`gl_dst_factor` must be an integer, not ', friendly_typeof(gl_dst_factor), '.'), call = NULL)
  if (!is_int(gl_equation)) abort(paste0('`gl_equation` must be an integer, not ', friendly_typeof(gl_equation), '.'), call = NULL)
  rl_set_blend_factors_(gl_src_factor, gl_dst_factor, gl_equation)
}

#' Rl Set Blend Factors Separate
#'
#'
#' @param gl_src_rgb An integer.
#' @param gl_dst_rgb An integer.
#' @param gl_src_alpha An integer.
#' @param gl_dst_alpha An integer.
#' @param gl_eq_rgb An integer.
#' @param gl_eq_alpha An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_blend_factors_separate <- function(gl_src_rgb, gl_dst_rgb, gl_src_alpha, gl_dst_alpha, gl_eq_rgb, gl_eq_alpha) {
  if (!is_int(gl_src_rgb)) abort(paste0('`gl_src_rgb` must be an integer, not ', friendly_typeof(gl_src_rgb), '.'), call = NULL)
  if (!is_int(gl_dst_rgb)) abort(paste0('`gl_dst_rgb` must be an integer, not ', friendly_typeof(gl_dst_rgb), '.'), call = NULL)
  if (!is_int(gl_src_alpha)) abort(paste0('`gl_src_alpha` must be an integer, not ', friendly_typeof(gl_src_alpha), '.'), call = NULL)
  if (!is_int(gl_dst_alpha)) abort(paste0('`gl_dst_alpha` must be an integer, not ', friendly_typeof(gl_dst_alpha), '.'), call = NULL)
  if (!is_int(gl_eq_rgb)) abort(paste0('`gl_eq_rgb` must be an integer, not ', friendly_typeof(gl_eq_rgb), '.'), call = NULL)
  if (!is_int(gl_eq_alpha)) abort(paste0('`gl_eq_alpha` must be an integer, not ', friendly_typeof(gl_eq_alpha), '.'), call = NULL)
  rl_set_blend_factors_separate_(gl_src_rgb, gl_dst_rgb, gl_src_alpha, gl_dst_alpha, gl_eq_rgb, gl_eq_alpha)
}

#' Rl Gl Init
#'
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_gl_init <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  rl_gl_init_(width, height)
}

#' Rl Gl Close
#'
#'
#' @family rlgl functions
#'
#' @export
rl_gl_close <- function() {
  rl_gl_close_()
}

#' Rl Get Version
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_version <- function() {
  rl_get_version_()
}

#' Rl Set Framebuffer Width
#'
#'
#' @param width An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_framebuffer_width <- function(width) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  rl_set_framebuffer_width_(width)
}

#' Rl Get Framebuffer Width
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_framebuffer_width <- function() {
  rl_get_framebuffer_width_()
}

#' Rl Set Framebuffer Height
#'
#'
#' @param height An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_framebuffer_height <- function(height) {
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  rl_set_framebuffer_height_(height)
}

#' Rl Get Framebuffer Height
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_framebuffer_height <- function() {
  rl_get_framebuffer_height_()
}

#' Rl Get Texture Id Default
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_texture_id_default <- function() {
  rl_get_texture_id_default_()
}

#' Rl Get Shader Id Default
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_shader_id_default <- function() {
  rl_get_shader_id_default_()
}

#' Rl Draw Render Batch Active
#'
#'
#' @family rlgl functions
#'
#' @export
rl_draw_render_batch_active <- function() {
  rl_draw_render_batch_active_()
}

#' Rl Check Render Batch Limit
#'
#'
#' @param v_count An integer.
#'
#' @return A logical
#'
#' @family rlgl functions
#'
#' @export
rl_check_render_batch_limit <- function(v_count) {
  if (!is_int(v_count)) abort(paste0('`v_count` must be an integer, not ', friendly_typeof(v_count), '.'), call = NULL)
  rl_check_render_batch_limit_(v_count)
}

#' Rl Set Texture
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_texture <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_set_texture_(id)
}

#' Rl Load Vertex Array
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_vertex_array <- function() {
  rl_load_vertex_array_()
}

#' Rl Unload Vertex Array
#'
#'
#' @param vao_id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_vertex_array <- function(vao_id) {
  if (!is_unsigned_int(vao_id)) abort(paste0('`vao_id` must be a non-negative integer, not ', friendly_typeof(vao_id), '.'), call = NULL)
  rl_unload_vertex_array_(vao_id)
}

#' Rl Unload Vertex Buffer
#'
#'
#' @param vbo_id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_vertex_buffer <- function(vbo_id) {
  if (!is_unsigned_int(vbo_id)) abort(paste0('`vbo_id` must be a non-negative integer, not ', friendly_typeof(vbo_id), '.'), call = NULL)
  rl_unload_vertex_buffer_(vbo_id)
}

#' Rl Set Vertex Attribute
#'
#'
#' @param index A non-negative integer.
#' @param comp_size An integer.
#' @param type An integer.
#' @param normalized A logical.
#' @param stride An integer.
#' @param offset An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_vertex_attribute <- function(index, comp_size, type, normalized, stride, offset) {
  if (!is_unsigned_int(index)) abort(paste0('`index` must be a non-negative integer, not ', friendly_typeof(index), '.'), call = NULL)
  if (!is_int(comp_size)) abort(paste0('`comp_size` must be an integer, not ', friendly_typeof(comp_size), '.'), call = NULL)
  if (!is_int(type)) abort(paste0('`type` must be an integer, not ', friendly_typeof(type), '.'), call = NULL)
  if (!is_bool(normalized)) abort(paste0('`normalized` must be a logical, not ', friendly_typeof(normalized), '.'), call = NULL)
  if (!is_int(stride)) abort(paste0('`stride` must be an integer, not ', friendly_typeof(stride), '.'), call = NULL)
  if (!is_int(offset)) abort(paste0('`offset` must be an integer, not ', friendly_typeof(offset), '.'), call = NULL)
  rl_set_vertex_attribute_(index, comp_size, type, normalized, stride, offset)
}

#' Rl Set Vertex Attribute Divisor
#'
#'
#' @param index A non-negative integer.
#' @param divisor An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_vertex_attribute_divisor <- function(index, divisor) {
  if (!is_unsigned_int(index)) abort(paste0('`index` must be a non-negative integer, not ', friendly_typeof(index), '.'), call = NULL)
  if (!is_int(divisor)) abort(paste0('`divisor` must be an integer, not ', friendly_typeof(divisor), '.'), call = NULL)
  rl_set_vertex_attribute_divisor_(index, divisor)
}

#' Rl Draw Vertex Array
#'
#'
#' @param offset An integer.
#' @param count An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_draw_vertex_array <- function(offset, count) {
  if (!is_int(offset)) abort(paste0('`offset` must be an integer, not ', friendly_typeof(offset), '.'), call = NULL)
  if (!is_int(count)) abort(paste0('`count` must be an integer, not ', friendly_typeof(count), '.'), call = NULL)
  rl_draw_vertex_array_(offset, count)
}

#' Rl Draw Vertex Array Instanced
#'
#'
#' @param offset An integer.
#' @param count An integer.
#' @param instances An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_draw_vertex_array_instanced <- function(offset, count, instances) {
  if (!is_int(offset)) abort(paste0('`offset` must be an integer, not ', friendly_typeof(offset), '.'), call = NULL)
  if (!is_int(count)) abort(paste0('`count` must be an integer, not ', friendly_typeof(count), '.'), call = NULL)
  if (!is_int(instances)) abort(paste0('`instances` must be an integer, not ', friendly_typeof(instances), '.'), call = NULL)
  rl_draw_vertex_array_instanced_(offset, count, instances)
}

#' Rl Load Texture Depth
#'
#'
#' @param width An integer.
#' @param height An integer.
#' @param use_render_buffer A logical.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_texture_depth <- function(width, height, use_render_buffer) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  if (!is_bool(use_render_buffer)) abort(paste0('`use_render_buffer` must be a logical, not ', friendly_typeof(use_render_buffer), '.'), call = NULL)
  rl_load_texture_depth_(width, height, use_render_buffer)
}

#' Rl Get Pixel Format Name
#'
#'
#' @param format A non-negative integer.
#'
#' @return A string
#'
#' @family rlgl functions
#'
#' @export
rl_get_pixel_format_name <- function(format) {
  if (!is_unsigned_int(format)) abort(paste0('`format` must be a non-negative integer, not ', friendly_typeof(format), '.'), call = NULL)
  rl_get_pixel_format_name_(format)
}

#' Rl Unload Texture
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_texture <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_unload_texture_(id)
}

#' Rl Load Framebuffer
#'
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_framebuffer <- function() {
  rl_load_framebuffer_()
}

#' Rl Framebuffer Attach
#'
#'
#' @param id A non-negative integer.
#' @param tex_id A non-negative integer.
#' @param attach_type An integer.
#' @param tex_type An integer.
#' @param mip_level An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_framebuffer_attach <- function(id, tex_id, attach_type, tex_type, mip_level) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_unsigned_int(tex_id)) abort(paste0('`tex_id` must be a non-negative integer, not ', friendly_typeof(tex_id), '.'), call = NULL)
  if (!is_int(attach_type)) abort(paste0('`attach_type` must be an integer, not ', friendly_typeof(attach_type), '.'), call = NULL)
  if (!is_int(tex_type)) abort(paste0('`tex_type` must be an integer, not ', friendly_typeof(tex_type), '.'), call = NULL)
  if (!is_int(mip_level)) abort(paste0('`mip_level` must be an integer, not ', friendly_typeof(mip_level), '.'), call = NULL)
  rl_framebuffer_attach_(id, tex_id, attach_type, tex_type, mip_level)
}

#' Rl Framebuffer Complete
#'
#'
#' @param id A non-negative integer.
#'
#' @return A logical
#'
#' @family rlgl functions
#'
#' @export
rl_framebuffer_complete <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_framebuffer_complete_(id)
}

#' Rl Unload Framebuffer
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_framebuffer <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_unload_framebuffer_(id)
}

#' Rl Resize Framebuffer
#'
#'
#' @param width An integer.
#' @param height An integer.
#'
#' @family rlgl functions
#'
#' @export
rl_resize_framebuffer <- function(width, height) {
  if (!is_int(width)) abort(paste0('`width` must be an integer, not ', friendly_typeof(width), '.'), call = NULL)
  if (!is_int(height)) abort(paste0('`height` must be an integer, not ', friendly_typeof(height), '.'), call = NULL)
  rl_resize_framebuffer_(width, height)
}

#' Rl Load Shader
#'
#'
#' @param code A string.
#' @param type An integer.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_shader <- function(code, type) {
  if (!is_const_char_pointer(code)) abort(paste0('`code` must be a string, not ', friendly_typeof(code), '.'), call = NULL)
  if (!is_int(type)) abort(paste0('`type` must be an integer, not ', friendly_typeof(type), '.'), call = NULL)
  rl_load_shader_(code, type)
}

#' Rl Load Shader Program
#'
#'
#' @param vs_code A string.
#' @param fs_code A string.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_shader_program <- function(vs_code, fs_code) {
  if (!is_const_char_pointer(vs_code)) abort(paste0('`vs_code` must be a string, not ', friendly_typeof(vs_code), '.'), call = NULL)
  if (!is_const_char_pointer(fs_code)) abort(paste0('`fs_code` must be a string, not ', friendly_typeof(fs_code), '.'), call = NULL)
  rl_load_shader_program_(vs_code, fs_code)
}

#' Rl Load Shader Program Ex
#'
#'
#' @param vs_id A non-negative integer.
#' @param fs_id A non-negative integer.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_shader_program_ex <- function(vs_id, fs_id) {
  if (!is_unsigned_int(vs_id)) abort(paste0('`vs_id` must be a non-negative integer, not ', friendly_typeof(vs_id), '.'), call = NULL)
  if (!is_unsigned_int(fs_id)) abort(paste0('`fs_id` must be a non-negative integer, not ', friendly_typeof(fs_id), '.'), call = NULL)
  rl_load_shader_program_ex_(vs_id, fs_id)
}

#' Rl Load Shader Program Compute
#'
#'
#' @param cs_id A non-negative integer.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_load_shader_program_compute <- function(cs_id) {
  if (!is_unsigned_int(cs_id)) abort(paste0('`cs_id` must be a non-negative integer, not ', friendly_typeof(cs_id), '.'), call = NULL)
  rl_load_shader_program_compute_(cs_id)
}

#' Rl Unload Shader
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_shader <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_unload_shader_(id)
}

#' Rl Unload Shader Program
#'
#'
#' @param id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_shader_program <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_unload_shader_program_(id)
}

#' Rl Get Location Uniform
#'
#'
#' @param id A non-negative integer.
#' @param uniform_name A string.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_location_uniform <- function(id, uniform_name) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_const_char_pointer(uniform_name)) abort(paste0('`uniform_name` must be a string, not ', friendly_typeof(uniform_name), '.'), call = NULL)
  rl_get_location_uniform_(id, uniform_name)
}

#' Rl Get Location Attrib
#'
#'
#' @param id A non-negative integer.
#' @param attrib_name A string.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_location_attrib <- function(id, attrib_name) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_const_char_pointer(attrib_name)) abort(paste0('`attrib_name` must be a string, not ', friendly_typeof(attrib_name), '.'), call = NULL)
  rl_get_location_attrib_(id, attrib_name)
}

#' Rl Set Uniform Matrix
#'
#'
#' @param loc_index An integer.
#' @param mat A 4x4 numeric matrix.
#'
#' @family rlgl functions
#'
#' @export
rl_set_uniform_matrix <- function(loc_index, mat) {
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)
  if (!is_raylib_matrix(mat)) abort(paste0('`mat` must be a 4x4 numeric matrix, not ', friendly_typeof(mat), '.'), call = NULL)
  rl_set_uniform_matrix_(loc_index, mat)
}

#' Rl Set Uniform Sampler
#'
#'
#' @param loc_index An integer.
#' @param texture_id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_set_uniform_sampler <- function(loc_index, texture_id) {
  if (!is_int(loc_index)) abort(paste0('`loc_index` must be an integer, not ', friendly_typeof(loc_index), '.'), call = NULL)
  if (!is_unsigned_int(texture_id)) abort(paste0('`texture_id` must be a non-negative integer, not ', friendly_typeof(texture_id), '.'), call = NULL)
  rl_set_uniform_sampler_(loc_index, texture_id)
}

#' Rl Compute Shader Dispatch
#'
#'
#' @param group_x A non-negative integer.
#' @param group_y A non-negative integer.
#' @param group_z A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_compute_shader_dispatch <- function(group_x, group_y, group_z) {
  if (!is_unsigned_int(group_x)) abort(paste0('`group_x` must be a non-negative integer, not ', friendly_typeof(group_x), '.'), call = NULL)
  if (!is_unsigned_int(group_y)) abort(paste0('`group_y` must be a non-negative integer, not ', friendly_typeof(group_y), '.'), call = NULL)
  if (!is_unsigned_int(group_z)) abort(paste0('`group_z` must be a non-negative integer, not ', friendly_typeof(group_z), '.'), call = NULL)
  rl_compute_shader_dispatch_(group_x, group_y, group_z)
}

#' Rl Unload Shader Buffer
#'
#'
#' @param ssbo_id A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_unload_shader_buffer <- function(ssbo_id) {
  if (!is_unsigned_int(ssbo_id)) abort(paste0('`ssbo_id` must be a non-negative integer, not ', friendly_typeof(ssbo_id), '.'), call = NULL)
  rl_unload_shader_buffer_(ssbo_id)
}

#' Rl Bind Shader Buffer
#'
#'
#' @param id A non-negative integer.
#' @param index A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_bind_shader_buffer <- function(id, index) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_unsigned_int(index)) abort(paste0('`index` must be a non-negative integer, not ', friendly_typeof(index), '.'), call = NULL)
  rl_bind_shader_buffer_(id, index)
}

#' Rl Copy Shader Buffer
#'
#'
#' @param dest_id A non-negative integer.
#' @param src_id A non-negative integer.
#' @param dest_offset A non-negative integer.
#' @param src_offset A non-negative integer.
#' @param count A non-negative integer.
#'
#' @family rlgl functions
#'
#' @export
rl_copy_shader_buffer <- function(dest_id, src_id, dest_offset, src_offset, count) {
  if (!is_unsigned_int(dest_id)) abort(paste0('`dest_id` must be a non-negative integer, not ', friendly_typeof(dest_id), '.'), call = NULL)
  if (!is_unsigned_int(src_id)) abort(paste0('`src_id` must be a non-negative integer, not ', friendly_typeof(src_id), '.'), call = NULL)
  if (!is_unsigned_int(dest_offset)) abort(paste0('`dest_offset` must be a non-negative integer, not ', friendly_typeof(dest_offset), '.'), call = NULL)
  if (!is_unsigned_int(src_offset)) abort(paste0('`src_offset` must be a non-negative integer, not ', friendly_typeof(src_offset), '.'), call = NULL)
  if (!is_unsigned_int(count)) abort(paste0('`count` must be a non-negative integer, not ', friendly_typeof(count), '.'), call = NULL)
  rl_copy_shader_buffer_(dest_id, src_id, dest_offset, src_offset, count)
}

#' Rl Get Shader Buffer Size
#'
#'
#' @param id A non-negative integer.
#'
#' @return An integer
#'
#' @family rlgl functions
#'
#' @export
rl_get_shader_buffer_size <- function(id) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  rl_get_shader_buffer_size_(id)
}

#' Rl Bind Image Texture
#'
#'
#' @param id A non-negative integer.
#' @param index A non-negative integer.
#' @param format An integer.
#' @param readonly A logical.
#'
#' @family rlgl functions
#'
#' @export
rl_bind_image_texture <- function(id, index, format, readonly) {
  if (!is_unsigned_int(id)) abort(paste0('`id` must be a non-negative integer, not ', friendly_typeof(id), '.'), call = NULL)
  if (!is_unsigned_int(index)) abort(paste0('`index` must be a non-negative integer, not ', friendly_typeof(index), '.'), call = NULL)
  if (!is_int(format)) abort(paste0('`format` must be an integer, not ', friendly_typeof(format), '.'), call = NULL)
  if (!is_bool(readonly)) abort(paste0('`readonly` must be a logical, not ', friendly_typeof(readonly), '.'), call = NULL)
  rl_bind_image_texture_(id, index, format, readonly)
}

#' Rl Get Matrix Modelview
#'
#'
#' @return A 4x4 numeric matrix
#'
#' @family rlgl functions
#'
#' @export
rl_get_matrix_modelview <- function() {
  rl_get_matrix_modelview_()
}

#' Rl Get Matrix Projection
#'
#'
#' @return A 4x4 numeric matrix
#'
#' @family rlgl functions
#'
#' @export
rl_get_matrix_projection <- function() {
  rl_get_matrix_projection_()
}

#' Rl Get Matrix Transform
#'
#'
#' @return A 4x4 numeric matrix
#'
#' @family rlgl functions
#'
#' @export
rl_get_matrix_transform <- function() {
  rl_get_matrix_transform_()
}

#' Rl Get Matrix Projection Stereo
#'
#'
#' @param eye An integer.
#'
#' @return A 4x4 numeric matrix
#'
#' @family rlgl functions
#'
#' @export
rl_get_matrix_projection_stereo <- function(eye) {
  if (!is_int(eye)) abort(paste0('`eye` must be an integer, not ', friendly_typeof(eye), '.'), call = NULL)
  rl_get_matrix_projection_stereo_(eye)
}

#' Rl Get Matrix View Offset Stereo
#'
#'
#' @param eye An integer.
#'
#' @return A 4x4 numeric matrix
#'
#' @family rlgl functions
#'
#' @export
rl_get_matrix_view_offset_stereo <- function(eye) {
  if (!is_int(eye)) abort(paste0('`eye` must be an integer, not ', friendly_typeof(eye), '.'), call = NULL)
  rl_get_matrix_view_offset_stereo_(eye)
}

#' Rl Set Matrix Projection
#'
#'
#' @param proj A 4x4 numeric matrix.
#'
#' @family rlgl functions
#'
#' @export
rl_set_matrix_projection <- function(proj) {
  if (!is_raylib_matrix(proj)) abort(paste0('`proj` must be a 4x4 numeric matrix, not ', friendly_typeof(proj), '.'), call = NULL)
  rl_set_matrix_projection_(proj)
}

#' Rl Set Matrix Modelview
#'
#'
#' @param view A 4x4 numeric matrix.
#'
#' @family rlgl functions
#'
#' @export
rl_set_matrix_modelview <- function(view) {
  if (!is_raylib_matrix(view)) abort(paste0('`view` must be a 4x4 numeric matrix, not ', friendly_typeof(view), '.'), call = NULL)
  rl_set_matrix_modelview_(view)
}

#' Rl Set Matrix Projection Stereo
#'
#'
#' @param right A 4x4 numeric matrix.
#' @param left A 4x4 numeric matrix.
#'
#' @family rlgl functions
#'
#' @export
rl_set_matrix_projection_stereo <- function(right, left) {
  if (!is_raylib_matrix(right)) abort(paste0('`right` must be a 4x4 numeric matrix, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_raylib_matrix(left)) abort(paste0('`left` must be a 4x4 numeric matrix, not ', friendly_typeof(left), '.'), call = NULL)
  rl_set_matrix_projection_stereo_(right, left)
}

#' Rl Set Matrix View Offset Stereo
#'
#'
#' @param right A 4x4 numeric matrix.
#' @param left A 4x4 numeric matrix.
#'
#' @family rlgl functions
#'
#' @export
rl_set_matrix_view_offset_stereo <- function(right, left) {
  if (!is_raylib_matrix(right)) abort(paste0('`right` must be a 4x4 numeric matrix, not ', friendly_typeof(right), '.'), call = NULL)
  if (!is_raylib_matrix(left)) abort(paste0('`left` must be a 4x4 numeric matrix, not ', friendly_typeof(left), '.'), call = NULL)
  rl_set_matrix_view_offset_stereo_(right, left)
}

#' Rl Load Draw Cube
#'
#'
#' @family rlgl functions
#'
#' @export
rl_load_draw_cube <- function() {
  rl_load_draw_cube_()
}

#' Rl Load Draw Quad
#'
#'
#' @family rlgl functions
#'
#' @export
rl_load_draw_quad <- function() {
  rl_load_draw_quad_()
}

