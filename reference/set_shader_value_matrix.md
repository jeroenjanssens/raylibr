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
[`get_camera_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_matrix.md),
[`matrix_add()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_add.md),
[`matrix_compose()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_compose.md),
[`matrix_decompose()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_decompose.md),
[`matrix_determinant()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_determinant.md),
[`matrix_frustum()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_frustum.md),
[`matrix_identity()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_identity.md),
[`matrix_invert()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_invert.md),
[`matrix_look_at()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_look_at.md),
[`matrix_multiply()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_multiply.md),
[`matrix_multiply_value()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_multiply_value.md),
[`matrix_ortho()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_ortho.md),
[`matrix_perspective()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_perspective.md),
[`matrix_rotate()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate.md),
[`matrix_rotate_x()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_x.md),
[`matrix_rotate_xyz()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_xyz.md),
[`matrix_rotate_y()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_y.md),
[`matrix_rotate_z()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_z.md),
[`matrix_rotate_zyx()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_zyx.md),
[`matrix_scale()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_scale.md),
[`matrix_subtract()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_subtract.md),
[`matrix_trace()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_trace.md),
[`matrix_translate()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_translate.md),
[`matrix_transpose()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_transpose.md)

Other set functions:
[`set_audio_stream_buffer_size_default()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_volume.md),
[`set_automation_event_base_frame()`](https://jeroenjanssens.github.io/raylibr/reference/set_automation_event_base_frame.md),
[`set_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/set_clipboard_text.md),
[`set_config_flags()`](https://jeroenjanssens.github.io/raylibr/reference/set_config_flags.md),
[`set_exit_key()`](https://jeroenjanssens.github.io/raylibr/reference/set_exit_key.md),
[`set_gamepad_mappings()`](https://jeroenjanssens.github.io/raylibr/reference/set_gamepad_mappings.md),
[`set_gamepad_vibration()`](https://jeroenjanssens.github.io/raylibr/reference/set_gamepad_vibration.md),
[`set_gestures_enabled()`](https://jeroenjanssens.github.io/raylibr/reference/set_gestures_enabled.md),
[`set_master_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_master_volume.md),
[`set_mouse_cursor()`](https://jeroenjanssens.github.io/raylibr/reference/set_mouse_cursor.md),
[`set_mouse_offset()`](https://jeroenjanssens.github.io/raylibr/reference/set_mouse_offset.md),
[`set_mouse_position()`](https://jeroenjanssens.github.io/raylibr/reference/set_mouse_position.md),
[`set_mouse_scale()`](https://jeroenjanssens.github.io/raylibr/reference/set_mouse_scale.md),
[`set_music_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_music_pan.md),
[`set_music_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_music_pitch.md),
[`set_music_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_music_volume.md),
[`set_random_seed()`](https://jeroenjanssens.github.io/raylibr/reference/set_random_seed.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shapes_texture.md),
[`set_sound_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_sound_pan.md),
[`set_sound_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_sound_pitch.md),
[`set_sound_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_sound_volume.md),
[`set_target_fps()`](https://jeroenjanssens.github.io/raylibr/reference/set_target_fps.md),
[`set_text_line_spacing()`](https://jeroenjanssens.github.io/raylibr/reference/set_text_line_spacing.md),
[`set_texture_filter()`](https://jeroenjanssens.github.io/raylibr/reference/set_texture_filter.md),
[`set_texture_wrap()`](https://jeroenjanssens.github.io/raylibr/reference/set_texture_wrap.md),
[`set_trace_log_level()`](https://jeroenjanssens.github.io/raylibr/reference/set_trace_log_level.md),
[`set_window_focused()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_focused.md),
[`set_window_icon()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_icon.md),
[`set_window_max_size()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_max_size.md),
[`set_window_min_size()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_min_size.md),
[`set_window_monitor()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_monitor.md),
[`set_window_opacity()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_opacity.md),
[`set_window_position()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_position.md),
[`set_window_size()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_size.md),
[`set_window_state()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_state.md),
[`set_window_title()`](https://jeroenjanssens.github.io/raylibr/reference/set_window_title.md)
