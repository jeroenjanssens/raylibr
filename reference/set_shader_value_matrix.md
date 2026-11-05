# Set Shader Value Matrix

Set shader uniform value (matrix 4x4).

## Usage

``` r
set_shader_value_matrix(shader, loc_index, mat)
```

## Arguments

- shader:

  A shader.

- loc_index:

  An integer.

- mat:

  A 4x4 numeric matrix.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);

## See also

Other matrix functions:
[`get_camera_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_matrix.md),
[`matrix_add()`](https://raylibr.jeroenjanssens.com/reference/matrix_add.md),
[`matrix_compose()`](https://raylibr.jeroenjanssens.com/reference/matrix_compose.md),
[`matrix_decompose()`](https://raylibr.jeroenjanssens.com/reference/matrix_decompose.md),
[`matrix_determinant()`](https://raylibr.jeroenjanssens.com/reference/matrix_determinant.md),
[`matrix_frustum()`](https://raylibr.jeroenjanssens.com/reference/matrix_frustum.md),
[`matrix_identity()`](https://raylibr.jeroenjanssens.com/reference/matrix_identity.md),
[`matrix_invert()`](https://raylibr.jeroenjanssens.com/reference/matrix_invert.md),
[`matrix_look_at()`](https://raylibr.jeroenjanssens.com/reference/matrix_look_at.md),
[`matrix_multiply()`](https://raylibr.jeroenjanssens.com/reference/matrix_multiply.md),
[`matrix_multiply_value()`](https://raylibr.jeroenjanssens.com/reference/matrix_multiply_value.md),
[`matrix_ortho()`](https://raylibr.jeroenjanssens.com/reference/matrix_ortho.md),
[`matrix_perspective()`](https://raylibr.jeroenjanssens.com/reference/matrix_perspective.md),
[`matrix_rotate()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate.md),
[`matrix_rotate_x()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_x.md),
[`matrix_rotate_xyz()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_xyz.md),
[`matrix_rotate_y()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_y.md),
[`matrix_rotate_z()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_z.md),
[`matrix_rotate_zyx()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_zyx.md),
[`matrix_scale()`](https://raylibr.jeroenjanssens.com/reference/matrix_scale.md),
[`matrix_subtract()`](https://raylibr.jeroenjanssens.com/reference/matrix_subtract.md),
[`matrix_trace()`](https://raylibr.jeroenjanssens.com/reference/matrix_trace.md),
[`matrix_translate()`](https://raylibr.jeroenjanssens.com/reference/matrix_translate.md),
[`matrix_transpose()`](https://raylibr.jeroenjanssens.com/reference/matrix_transpose.md)

Other shader functions:
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/end_shader_mode.md),
[`get_shader_location()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`load_shader()`](https://raylibr.jeroenjanssens.com/reference/load_shader.md),
[`load_shader_from_memory()`](https://raylibr.jeroenjanssens.com/reference/load_shader_from_memory.md),
[`set_shader_value()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md)

Other set functions:
[`set_audio_stream_buffer_size_default()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://raylibr.jeroenjanssens.com/reference/set_audio_stream_volume.md),
[`set_automation_event_base_frame()`](https://raylibr.jeroenjanssens.com/reference/set_automation_event_base_frame.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_config_flags()`](https://raylibr.jeroenjanssens.com/reference/set_config_flags.md),
[`set_exit_key()`](https://raylibr.jeroenjanssens.com/reference/set_exit_key.md),
[`set_gamepad_mappings()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_mappings.md),
[`set_gamepad_vibration()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_vibration.md),
[`set_gestures_enabled()`](https://raylibr.jeroenjanssens.com/reference/set_gestures_enabled.md),
[`set_master_volume()`](https://raylibr.jeroenjanssens.com/reference/set_master_volume.md),
[`set_mouse_cursor()`](https://raylibr.jeroenjanssens.com/reference/set_mouse_cursor.md),
[`set_mouse_offset()`](https://raylibr.jeroenjanssens.com/reference/set_mouse_offset.md),
[`set_mouse_position()`](https://raylibr.jeroenjanssens.com/reference/set_mouse_position.md),
[`set_mouse_scale()`](https://raylibr.jeroenjanssens.com/reference/set_mouse_scale.md),
[`set_music_pan()`](https://raylibr.jeroenjanssens.com/reference/set_music_pan.md),
[`set_music_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_music_pitch.md),
[`set_music_volume()`](https://raylibr.jeroenjanssens.com/reference/set_music_volume.md),
[`set_random_seed()`](https://raylibr.jeroenjanssens.com/reference/set_random_seed.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shapes_texture.md),
[`set_sound_pan()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pan.md),
[`set_sound_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pitch.md),
[`set_sound_volume()`](https://raylibr.jeroenjanssens.com/reference/set_sound_volume.md),
[`set_target_fps()`](https://raylibr.jeroenjanssens.com/reference/set_target_fps.md),
[`set_text_line_spacing()`](https://raylibr.jeroenjanssens.com/reference/set_text_line_spacing.md),
[`set_texture_filter()`](https://raylibr.jeroenjanssens.com/reference/set_texture_filter.md),
[`set_texture_wrap()`](https://raylibr.jeroenjanssens.com/reference/set_texture_wrap.md),
[`set_trace_log_level()`](https://raylibr.jeroenjanssens.com/reference/set_trace_log_level.md),
[`set_window_focused()`](https://raylibr.jeroenjanssens.com/reference/set_window_focused.md),
[`set_window_icon()`](https://raylibr.jeroenjanssens.com/reference/set_window_icon.md),
[`set_window_max_size()`](https://raylibr.jeroenjanssens.com/reference/set_window_max_size.md),
[`set_window_min_size()`](https://raylibr.jeroenjanssens.com/reference/set_window_min_size.md),
[`set_window_monitor()`](https://raylibr.jeroenjanssens.com/reference/set_window_monitor.md),
[`set_window_opacity()`](https://raylibr.jeroenjanssens.com/reference/set_window_opacity.md),
[`set_window_position()`](https://raylibr.jeroenjanssens.com/reference/set_window_position.md),
[`set_window_size()`](https://raylibr.jeroenjanssens.com/reference/set_window_size.md),
[`set_window_state()`](https://raylibr.jeroenjanssens.com/reference/set_window_state.md),
[`set_window_title()`](https://raylibr.jeroenjanssens.com/reference/set_window_title.md)

## Examples

``` r
if (FALSE) {
set_shader_value_matrix(load_shader("", "shader.fs"), 0L, diag(4))
}
```
