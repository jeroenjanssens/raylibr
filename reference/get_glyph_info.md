# Get Glyph Info

Get glyph font info data for a codepoint (unicode character), fallback
to '?' if not found.

## Usage

``` r
get_glyph_info(font, codepoint)
```

## Arguments

- font:

  A font.

- codepoint:

  An integer.

## Value

A glyph_info

## Note

This function has been auto-generated from the following Raylib function
definition:

    GlyphInfo GetGlyphInfo(Font font, int codepoint);

## See also

Other get functions:
[`get_application_directory()`](https://jeroenjanssens.github.io/raylibr/reference/get_application_directory.md),
[`get_camera_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_matrix.md),
[`get_camera_matrix_2d()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_matrix_2d.md),
[`get_char_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/get_char_pressed.md),
[`get_clipboard_image()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_image.md),
[`get_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_text.md),
[`get_codepoint_count()`](https://jeroenjanssens.github.io/raylibr/reference/get_codepoint_count.md),
[`get_collision_rec()`](https://jeroenjanssens.github.io/raylibr/reference/get_collision_rec.md),
[`get_color()`](https://jeroenjanssens.github.io/raylibr/reference/get_color.md),
[`get_current_monitor()`](https://jeroenjanssens.github.io/raylibr/reference/get_current_monitor.md),
[`get_directory_file_count()`](https://jeroenjanssens.github.io/raylibr/reference/get_directory_file_count.md),
[`get_directory_file_count_ex()`](https://jeroenjanssens.github.io/raylibr/reference/get_directory_file_count_ex.md),
[`get_directory_path()`](https://jeroenjanssens.github.io/raylibr/reference/get_directory_path.md),
[`get_file_extension()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_extension.md),
[`get_file_length()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_length.md),
[`get_file_mod_time()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_mod_time.md),
[`get_file_name()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_name.md),
[`get_file_name_without_ext()`](https://jeroenjanssens.github.io/raylibr/reference/get_file_name_without_ext.md),
[`get_font_default()`](https://jeroenjanssens.github.io/raylibr/reference/get_font_default.md),
[`get_fps()`](https://jeroenjanssens.github.io/raylibr/reference/get_fps.md),
[`get_frame_time()`](https://jeroenjanssens.github.io/raylibr/reference/get_frame_time.md),
[`get_gamepad_axis_count()`](https://jeroenjanssens.github.io/raylibr/reference/get_gamepad_axis_count.md),
[`get_gamepad_axis_movement()`](https://jeroenjanssens.github.io/raylibr/reference/get_gamepad_axis_movement.md),
[`get_gamepad_button_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/get_gamepad_button_pressed.md),
[`get_gamepad_name()`](https://jeroenjanssens.github.io/raylibr/reference/get_gamepad_name.md),
[`get_gesture_detected()`](https://jeroenjanssens.github.io/raylibr/reference/get_gesture_detected.md),
[`get_gesture_drag_angle()`](https://jeroenjanssens.github.io/raylibr/reference/get_gesture_drag_angle.md),
[`get_gesture_drag_vector()`](https://jeroenjanssens.github.io/raylibr/reference/get_gesture_drag_vector.md),
[`get_gesture_hold_duration()`](https://jeroenjanssens.github.io/raylibr/reference/get_gesture_hold_duration.md),
[`get_gesture_pinch_angle()`](https://jeroenjanssens.github.io/raylibr/reference/get_gesture_pinch_angle.md),
[`get_gesture_pinch_vector()`](https://jeroenjanssens.github.io/raylibr/reference/get_gesture_pinch_vector.md),
[`get_glyph_atlas_rec()`](https://jeroenjanssens.github.io/raylibr/reference/get_glyph_atlas_rec.md),
[`get_glyph_index()`](https://jeroenjanssens.github.io/raylibr/reference/get_glyph_index.md),
[`get_image_alpha_border()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_alpha_border.md),
[`get_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_color.md),
[`get_key_name()`](https://jeroenjanssens.github.io/raylibr/reference/get_key_name.md),
[`get_key_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/get_key_pressed.md),
[`get_master_volume()`](https://jeroenjanssens.github.io/raylibr/reference/get_master_volume.md),
[`get_mesh_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_mesh_bounding_box.md),
[`get_model_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_model_bounding_box.md),
[`get_monitor_count()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_count.md),
[`get_monitor_height()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_height.md),
[`get_monitor_name()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_name.md),
[`get_monitor_physical_height()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_physical_height.md),
[`get_monitor_physical_width()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_physical_width.md),
[`get_monitor_position()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_position.md),
[`get_monitor_refresh_rate()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_refresh_rate.md),
[`get_monitor_width()`](https://jeroenjanssens.github.io/raylibr/reference/get_monitor_width.md),
[`get_mouse_delta()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_delta.md),
[`get_mouse_position()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_position.md),
[`get_mouse_wheel_move()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_wheel_move.md),
[`get_mouse_wheel_move_v()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_wheel_move_v.md),
[`get_mouse_x()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_x.md),
[`get_mouse_y()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_y.md),
[`get_music_time_length()`](https://jeroenjanssens.github.io/raylibr/reference/get_music_time_length.md),
[`get_music_time_played()`](https://jeroenjanssens.github.io/raylibr/reference/get_music_time_played.md),
[`get_pixel_data_size()`](https://jeroenjanssens.github.io/raylibr/reference/get_pixel_data_size.md),
[`get_prev_directory_path()`](https://jeroenjanssens.github.io/raylibr/reference/get_prev_directory_path.md),
[`get_random_value()`](https://jeroenjanssens.github.io/raylibr/reference/get_random_value.md),
[`get_ray_collision_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_box.md),
[`get_ray_collision_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_mesh.md),
[`get_ray_collision_quad()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_quad.md),
[`get_ray_collision_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_sphere.md),
[`get_ray_collision_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_triangle.md),
[`get_render_height()`](https://jeroenjanssens.github.io/raylibr/reference/get_render_height.md),
[`get_render_width()`](https://jeroenjanssens.github.io/raylibr/reference/get_render_width.md),
[`get_screen_height()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_height.md),
[`get_screen_to_world_2d()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_to_world_2d.md),
[`get_screen_to_world_ray()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_to_world_ray.md),
[`get_screen_to_world_ray_ex()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_to_world_ray_ex.md),
[`get_screen_width()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_width.md),
[`get_shader_location()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location_attrib.md),
[`get_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/get_shapes_texture.md),
[`get_shapes_texture_rectangle()`](https://jeroenjanssens.github.io/raylibr/reference/get_shapes_texture_rectangle.md),
[`get_spline_point_basis()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_basis.md),
[`get_spline_point_bezier_cubic()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_bezier_cubic.md),
[`get_spline_point_bezier_quad()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_bezier_quad.md),
[`get_spline_point_catmull_rom()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_catmull_rom.md),
[`get_spline_point_linear()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_linear.md),
[`get_text_between()`](https://jeroenjanssens.github.io/raylibr/reference/get_text_between.md),
[`get_time()`](https://jeroenjanssens.github.io/raylibr/reference/get_time.md),
[`get_touch_point_count()`](https://jeroenjanssens.github.io/raylibr/reference/get_touch_point_count.md),
[`get_touch_point_id()`](https://jeroenjanssens.github.io/raylibr/reference/get_touch_point_id.md),
[`get_touch_position()`](https://jeroenjanssens.github.io/raylibr/reference/get_touch_position.md),
[`get_touch_x()`](https://jeroenjanssens.github.io/raylibr/reference/get_touch_x.md),
[`get_touch_y()`](https://jeroenjanssens.github.io/raylibr/reference/get_touch_y.md),
[`get_window_position()`](https://jeroenjanssens.github.io/raylibr/reference/get_window_position.md),
[`get_window_scale_dpi()`](https://jeroenjanssens.github.io/raylibr/reference/get_window_scale_dpi.md),
[`get_working_directory()`](https://jeroenjanssens.github.io/raylibr/reference/get_working_directory.md),
[`get_world_to_screen()`](https://jeroenjanssens.github.io/raylibr/reference/get_world_to_screen.md),
[`get_world_to_screen_2d()`](https://jeroenjanssens.github.io/raylibr/reference/get_world_to_screen_2d.md),
[`get_world_to_screen_ex()`](https://jeroenjanssens.github.io/raylibr/reference/get_world_to_screen_ex.md)
