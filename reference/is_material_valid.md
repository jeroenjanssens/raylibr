# Is Material Valid

Check if a material is valid (shader assigned, map textures loaded in
GPU).

## Usage

``` r
is_material_valid(material)
```

## Arguments

- material:

  A material.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool IsMaterialValid(Material material);

## See also

Other valid functions:
[`is_audio_stream_valid()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_valid.md),
[`is_file_name_valid()`](https://raylibr.jeroenjanssens.com/reference/is_file_name_valid.md),
[`is_font_valid()`](https://raylibr.jeroenjanssens.com/reference/is_font_valid.md),
[`is_image_valid()`](https://raylibr.jeroenjanssens.com/reference/is_image_valid.md),
[`is_model_animation_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_valid.md),
[`is_music_valid()`](https://raylibr.jeroenjanssens.com/reference/is_music_valid.md),
[`is_render_texture_valid()`](https://raylibr.jeroenjanssens.com/reference/is_render_texture_valid.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`is_sound_valid()`](https://raylibr.jeroenjanssens.com/reference/is_sound_valid.md),
[`is_texture_valid()`](https://raylibr.jeroenjanssens.com/reference/is_texture_valid.md),
[`is_wave_valid()`](https://raylibr.jeroenjanssens.com/reference/is_wave_valid.md)

Other material functions:
[`load_material_default()`](https://raylibr.jeroenjanssens.com/reference/load_material_default.md),
[`set_material_texture()`](https://raylibr.jeroenjanssens.com/reference/set_material_texture.md),
[`unload_material()`](https://raylibr.jeroenjanssens.com/reference/unload_material.md)

Other is functions:
[`color_is_equal()`](https://raylibr.jeroenjanssens.com/reference/color_is_equal.md),
[`is_audio_device_ready()`](https://raylibr.jeroenjanssens.com/reference/is_audio_device_ready.md),
[`is_audio_stream_playing()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_playing.md),
[`is_audio_stream_processed()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_processed.md),
[`is_audio_stream_valid()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream_valid.md),
[`is_cursor_hidden()`](https://raylibr.jeroenjanssens.com/reference/is_cursor_hidden.md),
[`is_cursor_on_screen()`](https://raylibr.jeroenjanssens.com/reference/is_cursor_on_screen.md),
[`is_file_dropped()`](https://raylibr.jeroenjanssens.com/reference/is_file_dropped.md),
[`is_file_extension()`](https://raylibr.jeroenjanssens.com/reference/is_file_extension.md),
[`is_file_name_valid()`](https://raylibr.jeroenjanssens.com/reference/is_file_name_valid.md),
[`is_font_valid()`](https://raylibr.jeroenjanssens.com/reference/is_font_valid.md),
[`is_gamepad_available()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_available.md),
[`is_gamepad_button_down()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_down.md),
[`is_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_pressed.md),
[`is_gamepad_button_released()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_released.md),
[`is_gamepad_button_up()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_up.md),
[`is_gesture_detected()`](https://raylibr.jeroenjanssens.com/reference/is_gesture_detected.md),
[`is_image_valid()`](https://raylibr.jeroenjanssens.com/reference/is_image_valid.md),
[`is_key_down()`](https://raylibr.jeroenjanssens.com/reference/is_key_down.md),
[`is_key_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_key_pressed.md),
[`is_key_pressed_repeat()`](https://raylibr.jeroenjanssens.com/reference/is_key_pressed_repeat.md),
[`is_key_released()`](https://raylibr.jeroenjanssens.com/reference/is_key_released.md),
[`is_key_up()`](https://raylibr.jeroenjanssens.com/reference/is_key_up.md),
[`is_model_animation_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_valid.md),
[`is_mouse_button_down()`](https://raylibr.jeroenjanssens.com/reference/is_mouse_button_down.md),
[`is_mouse_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_mouse_button_pressed.md),
[`is_mouse_button_released()`](https://raylibr.jeroenjanssens.com/reference/is_mouse_button_released.md),
[`is_mouse_button_up()`](https://raylibr.jeroenjanssens.com/reference/is_mouse_button_up.md),
[`is_music_stream_playing()`](https://raylibr.jeroenjanssens.com/reference/is_music_stream_playing.md),
[`is_music_valid()`](https://raylibr.jeroenjanssens.com/reference/is_music_valid.md),
[`is_path_file()`](https://raylibr.jeroenjanssens.com/reference/is_path_file.md),
[`is_render_texture_valid()`](https://raylibr.jeroenjanssens.com/reference/is_render_texture_valid.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`is_sound_playing()`](https://raylibr.jeroenjanssens.com/reference/is_sound_playing.md),
[`is_sound_valid()`](https://raylibr.jeroenjanssens.com/reference/is_sound_valid.md),
[`is_texture_valid()`](https://raylibr.jeroenjanssens.com/reference/is_texture_valid.md),
[`is_wave_valid()`](https://raylibr.jeroenjanssens.com/reference/is_wave_valid.md),
[`is_window_focused()`](https://raylibr.jeroenjanssens.com/reference/is_window_focused.md),
[`is_window_fullscreen()`](https://raylibr.jeroenjanssens.com/reference/is_window_fullscreen.md),
[`is_window_hidden()`](https://raylibr.jeroenjanssens.com/reference/is_window_hidden.md),
[`is_window_maximized()`](https://raylibr.jeroenjanssens.com/reference/is_window_maximized.md),
[`is_window_minimized()`](https://raylibr.jeroenjanssens.com/reference/is_window_minimized.md),
[`is_window_ready()`](https://raylibr.jeroenjanssens.com/reference/is_window_ready.md),
[`is_window_resized()`](https://raylibr.jeroenjanssens.com/reference/is_window_resized.md),
[`is_window_state()`](https://raylibr.jeroenjanssens.com/reference/is_window_state.md),
[`text_is_equal()`](https://raylibr.jeroenjanssens.com/reference/text_is_equal.md)

## Examples

``` r
if (FALSE) {
is_material_valid(load_material_default())
}
```
