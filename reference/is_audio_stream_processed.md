# Is Audio Stream Processed

Check if any audio stream buffers requires refill.

## Usage

``` r
is_audio_stream_processed(stream)
```

## Arguments

- stream:

  An audio_stream.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool IsAudioStreamProcessed(AudioStream stream);

## See also

Other audio functions:
[`close_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/close_audio_device.md),
[`init_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/init_audio_device.md),
[`is_audio_device_ready()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_device_ready.md),
[`is_audio_stream_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_playing.md),
[`is_audio_stream_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_valid.md),
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`pause_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_audio_stream.md),
[`play_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_audio_stream.md),
[`resume_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_audio_stream.md),
[`set_audio_stream_buffer_size_default()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_buffer_size_default.md),
[`set_audio_stream_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_pan.md),
[`set_audio_stream_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_pitch.md),
[`set_audio_stream_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_audio_stream_volume.md),
[`stop_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_audio_stream.md),
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md)

Other is functions:
[`color_is_equal()`](https://jeroenjanssens.github.io/raylibr/reference/color_is_equal.md),
[`is_audio_device_ready()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_device_ready.md),
[`is_audio_stream_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_playing.md),
[`is_audio_stream_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_audio_stream_valid.md),
[`is_cursor_hidden()`](https://jeroenjanssens.github.io/raylibr/reference/is_cursor_hidden.md),
[`is_cursor_on_screen()`](https://jeroenjanssens.github.io/raylibr/reference/is_cursor_on_screen.md),
[`is_file_dropped()`](https://jeroenjanssens.github.io/raylibr/reference/is_file_dropped.md),
[`is_file_extension()`](https://jeroenjanssens.github.io/raylibr/reference/is_file_extension.md),
[`is_file_name_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_file_name_valid.md),
[`is_font_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_font_valid.md),
[`is_gamepad_available()`](https://jeroenjanssens.github.io/raylibr/reference/is_gamepad_available.md),
[`is_gamepad_button_down()`](https://jeroenjanssens.github.io/raylibr/reference/is_gamepad_button_down.md),
[`is_gamepad_button_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/is_gamepad_button_pressed.md),
[`is_gamepad_button_released()`](https://jeroenjanssens.github.io/raylibr/reference/is_gamepad_button_released.md),
[`is_gamepad_button_up()`](https://jeroenjanssens.github.io/raylibr/reference/is_gamepad_button_up.md),
[`is_gesture_detected()`](https://jeroenjanssens.github.io/raylibr/reference/is_gesture_detected.md),
[`is_image_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_image_valid.md),
[`is_key_down()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_down.md),
[`is_key_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_pressed.md),
[`is_key_pressed_repeat()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_pressed_repeat.md),
[`is_key_released()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_released.md),
[`is_key_up()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_up.md),
[`is_material_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_material_valid.md),
[`is_model_animation_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_model_valid.md),
[`is_mouse_button_down()`](https://jeroenjanssens.github.io/raylibr/reference/is_mouse_button_down.md),
[`is_mouse_button_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/is_mouse_button_pressed.md),
[`is_mouse_button_released()`](https://jeroenjanssens.github.io/raylibr/reference/is_mouse_button_released.md),
[`is_mouse_button_up()`](https://jeroenjanssens.github.io/raylibr/reference/is_mouse_button_up.md),
[`is_music_stream_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_music_stream_playing.md),
[`is_music_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_music_valid.md),
[`is_path_file()`](https://jeroenjanssens.github.io/raylibr/reference/is_path_file.md),
[`is_render_texture_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_render_texture_valid.md),
[`is_shader_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_shader_valid.md),
[`is_sound_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_sound_playing.md),
[`is_sound_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_sound_valid.md),
[`is_texture_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_texture_valid.md),
[`is_wave_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_wave_valid.md),
[`is_window_focused()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_focused.md),
[`is_window_fullscreen()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_fullscreen.md),
[`is_window_hidden()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_hidden.md),
[`is_window_maximized()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_maximized.md),
[`is_window_minimized()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_minimized.md),
[`is_window_ready()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_ready.md),
[`is_window_resized()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_resized.md),
[`is_window_state()`](https://jeroenjanssens.github.io/raylibr/reference/is_window_state.md),
[`text_is_equal()`](https://jeroenjanssens.github.io/raylibr/reference/text_is_equal.md)

## Examples

``` r
if (FALSE) {
is_audio_stream_processed(load_audio_stream(44100L, 16L, 1L))
}
```
