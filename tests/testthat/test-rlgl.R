test_that("rlgl functions exist in namespace", {
  rlgl_fns <- c(
    "rl_matrix_mode", "rl_push_matrix", "rl_pop_matrix", "rl_load_identity",
    "rl_translatef", "rl_rotatef", "rl_scalef",
    "rl_frustum", "rl_ortho", "rl_viewport",
    "rl_set_clip_planes", "rl_get_cull_distance_near", "rl_get_cull_distance_far",
    "rl_begin", "rl_end",
    "rl_vertex2i", "rl_vertex2f", "rl_vertex3f",
    "rl_tex_coord2f", "rl_normal3f",
    "rl_color4ub", "rl_color3f", "rl_color4f",
    "rl_enable_vertex_array", "rl_disable_vertex_array",
    "rl_enable_vertex_attribute", "rl_disable_vertex_attribute",
    "rl_active_texture_slot", "rl_enable_texture", "rl_disable_texture",
    "rl_enable_texture_cubemap", "rl_disable_texture_cubemap",
    "rl_texture_parameters",
    "rl_enable_shader", "rl_disable_shader",
    "rl_enable_framebuffer", "rl_disable_framebuffer",
    "rl_get_active_framebuffer",
    "rl_enable_color_blend", "rl_disable_color_blend",
    "rl_enable_depth_test", "rl_disable_depth_test",
    "rl_enable_depth_mask", "rl_disable_depth_mask",
    "rl_enable_backface_culling", "rl_disable_backface_culling",
    "rl_color_mask",
    "rl_enable_scissor_test", "rl_disable_scissor_test",
    "rl_scissor",
    "rl_enable_wire_mode", "rl_enable_point_mode", "rl_disable_wire_mode",
    "rl_set_line_width", "rl_get_line_width",
    "rl_enable_smooth_lines", "rl_disable_smooth_lines",
    "rl_enable_stereo_render", "rl_disable_stereo_render",
    "rl_is_stereo_render_enabled",
    "rl_clear_color", "rl_clear_screen_buffers",
    "rl_check_errors", "rl_set_blend_mode", "rl_set_blend_factors",
    "rl_set_blend_factors_separate",
    "rl_gl_init", "rl_gl_close",
    "rl_get_version", "rl_get_framebuffer_width", "rl_get_framebuffer_height",
    "rl_get_texture_id_default", "rl_get_shader_id_default",
    "rl_draw_render_batch_active",
    "rl_check_render_batch_limit",
    "rl_set_texture",
    "rl_unload_vertex_array", "rl_unload_vertex_buffer",
    "rl_set_vertex_attribute", "rl_set_vertex_attribute_divisor",
    "rl_draw_vertex_array", "rl_draw_vertex_array_instanced",
    "rl_unload_texture", "rl_get_pixel_format_name",
    "rl_unload_framebuffer",
    "rl_load_shader", "rl_load_shader_program",
    "rl_unload_shader_program",
    "rl_get_location_uniform", "rl_get_location_attrib",
    "rl_set_uniform_matrix",
    "rl_set_uniform_sampler",
    "rl_compute_shader_dispatch",
    "rl_bind_shader_buffer", "rl_copy_shader_buffer",
    "rl_get_shader_buffer_size",
    "rl_bind_image_texture",
    "rl_get_matrix_modelview", "rl_get_matrix_projection",
    "rl_get_matrix_transform",
    "rl_get_matrix_projection_stereo", "rl_get_matrix_view_offset_stereo",
    "rl_set_matrix_projection", "rl_set_matrix_modelview",
    "rl_set_matrix_projection_stereo", "rl_set_matrix_view_offset_stereo",
    "rl_load_draw_cube", "rl_load_draw_quad"
  )

  for (fn_name in rlgl_fns) {
    expect_true(
      exists(fn_name, envir = asNamespace("raylibr")),
      info = paste0("rlgl function '", fn_name, "' should exist")
    )
  }
})

test_that("rl_get_cull_distance returns defaults", {
  near <- rl_get_cull_distance_near()
  far <- rl_get_cull_distance_far()
  expect_type(near, "double")
  expect_type(far, "double")
  expect_true(near < far)
})

test_that("total rlgl function count", {
  ns <- getNamespaceExports(asNamespace("raylibr"))
  rlgl_exports <- grep("^rl_", ns, value = TRUE)
  expect_gte(length(rlgl_exports), 120)
})
