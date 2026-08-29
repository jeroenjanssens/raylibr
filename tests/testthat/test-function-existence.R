test_that("newly auto-generated raylib functions exist", {
  new_fns <- c(
    # Window/input
    "set_window_min_size", "set_window_max_size",
    "get_monitor_name", "get_clipboard_text", "set_clipboard_text",
    "get_char_pressed",
    # Shader
    "get_shader_location", "get_shader_location_attrib",
    "set_shader_value_matrix", "set_shader_value_texture",
    # Ray casting
    "get_screen_to_world_ray", "get_screen_to_world_ray_ex",
    # Spline segments
    "draw_spline_segment_linear", "draw_spline_segment_basis",
    "draw_spline_segment_catmull_rom",
    "draw_spline_segment_bezier_quadratic",
    "draw_spline_segment_bezier_cubic",
    # Spline points
    "get_spline_point_linear", "get_spline_point_basis",
    "get_spline_point_catmull_rom",
    "get_spline_point_bezier_quad", "get_spline_point_bezier_cubic",
    # Collision
    "check_collision_circle_line",
    # Image
    "load_image_raw", "gen_image_perlin_noise",
    "image_from_channel", "get_image_alpha_border",
    # Color math
    "color_is_equal", "color_from_normalized",
    "color_to_hsv", "color_from_hsv",
    "color_brightness", "color_contrast", "color_lerp",
    # Text/glyph
    "get_glyph_index", "get_glyph_info", "get_glyph_atlas_rec",
    "get_codepoint_count",
    "text_subtext", "text_remove_spaces", "text_replace",
    "text_insert", "text_find_index",
    "text_to_upper", "text_to_lower",
    "text_to_pascal", "text_to_snake", "text_to_camel",
    "text_to_integer", "text_to_float",
    # GenMesh
    "gen_mesh_poly", "gen_mesh_plane", "gen_mesh_cube",
    "gen_mesh_sphere", "gen_mesh_hemi_sphere",
    "gen_mesh_cylinder", "gen_mesh_cone",
    "gen_mesh_torus", "gen_mesh_knot",
    "gen_mesh_heightmap", "gen_mesh_cubicmap",
    # Mesh export
    "get_mesh_bounding_box", "export_mesh", "export_mesh_as_code",
    # Audio
    "set_master_volume", "get_master_volume",
    "set_sound_pan", "seek_music_stream", "set_music_pan",
    "is_audio_stream_playing", "set_audio_stream_pan",
    "set_audio_stream_buffer_size_default",
    # File ops
    "file_rename", "file_remove", "file_copy",
    "file_move", "file_text_replace",
    # Misc
    "wait_time", "get_gamepad_name", "get_key_name",
    # Automation
    "set_automation_event_base_frame",
    "start_automation_event_recording",
    "stop_automation_event_recording"
  )

  for (fn_name in new_fns) {
    expect_true(
      exists(fn_name, envir = asNamespace("raylibr")),
      info = paste0("Function '", fn_name, "' should exist")
    )
    expect_true(
      is.function(get(fn_name, envir = asNamespace("raylibr"))),
      info = paste0("'", fn_name, "' should be a function")
    )
  }
})

test_that("manual wrapper functions exist", {
  manual_fns <- c(
    "update_camera", "update_camera_pro",
    "draw_line_strip", "draw_triangle_fan", "draw_triangle_strip",
    "draw_spline_linear", "draw_spline_basis", "draw_spline_catmull_rom",
    "draw_spline_bezier_quadratic", "draw_spline_bezier_cubic",
    "draw_triangle_strip_3d",
    "wave_crop", "wave_format",
    "set_material_texture", "set_model_mesh_material",
    "gen_mesh_tangents", "upload_mesh",
    "image_draw_line_ex", "image_draw_triangle",
    "draw_mesh_instanced",
    "set_model_texture",
    # raymath manual wrappers
    "vector3_ortho_normalize",
    "quaternion_to_axis_angle",
    "matrix_decompose",
    # rcamera wrappers
    "get_camera_forward", "get_camera_up", "get_camera_right",
    "get_camera_view_matrix", "get_camera_projection_matrix",
    "camera_move_forward", "camera_move_up", "camera_move_right",
    "camera_move_to_target", "camera_yaw", "camera_pitch", "camera_roll"
  )

  for (fn_name in manual_fns) {
    expect_true(
      exists(fn_name, envir = asNamespace("raylibr")),
      info = paste0("Manual wrapper '", fn_name, "' should exist")
    )
    expect_true(
      is.function(get(fn_name, envir = asNamespace("raylibr"))),
      info = paste0("'", fn_name, "' should be a function")
    )
  }
})

test_that("raymath auto-generated functions exist", {
  raymath_fns <- c(
    "float_clamp", "float_lerp", "float_normalize", "float_remap",
    "float_wrap", "float_equals",
    "vector2_zero", "vector2_one", "vector2_add", "vector2_subtract",
    "vector2_length", "vector2_distance", "vector2_normalize",
    "vector2_dot_product", "vector2_move_towards", "vector2_rotate",
    "vector3_zero", "vector3_one", "vector3_add", "vector3_cross_product",
    "vector3_normalize", "vector3_distance", "vector3_transform",
    "vector4_zero", "vector4_one", "vector4_add", "vector4_normalize",
    "matrix_identity", "matrix_multiply", "matrix_translate",
    "matrix_rotate", "matrix_scale", "matrix_invert",
    "matrix_look_at", "matrix_perspective", "matrix_ortho",
    "quaternion_identity", "quaternion_normalize", "quaternion_multiply",
    "quaternion_from_euler", "quaternion_to_euler",
    "quaternion_from_matrix", "quaternion_to_matrix",
    "quaternion_slerp", "quaternion_from_axis_angle"
  )

  for (fn_name in raymath_fns) {
    expect_true(
      exists(fn_name, envir = asNamespace("raylibr")),
      info = paste0("raymath function '", fn_name, "' should exist")
    )
  }
})

test_that("raygui auto-generated functions exist", {
  raygui_fns <- c(
    "gui_enable", "gui_disable", "gui_lock", "gui_unlock", "gui_is_locked",
    "gui_set_alpha", "gui_set_state", "gui_get_state",
    "gui_set_font", "gui_get_font",
    "gui_set_style", "gui_get_style",
    "gui_load_style", "gui_load_style_default",
    "gui_enable_tooltip", "gui_disable_tooltip", "gui_set_tooltip",
    "gui_set_icon_scale", "gui_draw_icon", "gui_get_text_width",
    "gui_window_box", "gui_group_box", "gui_line", "gui_panel",
    "gui_label", "gui_button", "gui_label_button",
    "gui_status_bar", "gui_dummy_rec",
    "gui_toggle", "gui_toggle_group", "gui_toggle_slider",
    "gui_check_box", "gui_combo_box", "gui_dropdown_box",
    "gui_spinner", "gui_value_box",
    "gui_slider", "gui_slider_bar", "gui_progress_bar",
    "gui_grid", "gui_list_view", "gui_tab_bar", "gui_message_box",
    "gui_color_picker", "gui_color_panel",
    "gui_color_bar_alpha", "gui_color_bar_hue",
    "gui_color_picker_hsv", "gui_color_panel_hsv",
    "gui_scroll_panel", "gui_text_box", "gui_text_input_box", "gui_value_box_float"
  )

  for (fn_name in raygui_fns) {
    expect_true(
      exists(fn_name, envir = asNamespace("raylibr")),
      info = paste0("raygui function '", fn_name, "' should exist")
    )
  }
})

test_that("total export count is at least 880", {
  ns <- asNamespace("raylibr")
  exports <- getNamespaceExports(ns)
  expect_gte(length(exports), 880)
})
