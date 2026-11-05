# Load File Text

Load text data from file (read), returns a '\0' terminated string.

## Usage

``` r
load_file_text(file_name)
```

## Arguments

- file_name:

  A string.

## Value

A string

## Note

This function has been auto-generated from the following Raylib function
definition:

    char * LoadFileText(const char * fileName);

## See also

Other text functions:
[`draw_text()`](https://raylibr.jeroenjanssens.com/reference/draw_text.md),
[`draw_text_codepoint()`](https://raylibr.jeroenjanssens.com/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_text_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_text_pro.md),
[`file_text_find_index()`](https://raylibr.jeroenjanssens.com/reference/file_text_find_index.md),
[`file_text_replace()`](https://raylibr.jeroenjanssens.com/reference/file_text_replace.md),
[`gen_image_text()`](https://raylibr.jeroenjanssens.com/reference/gen_image_text.md),
[`get_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_text.md),
[`get_text_between()`](https://raylibr.jeroenjanssens.com/reference/get_text_between.md),
[`image_text()`](https://raylibr.jeroenjanssens.com/reference/image_text.md),
[`image_text_ex()`](https://raylibr.jeroenjanssens.com/reference/image_text_ex.md),
[`measure_text()`](https://raylibr.jeroenjanssens.com/reference/measure_text.md),
[`measure_text_ex()`](https://raylibr.jeroenjanssens.com/reference/measure_text_ex.md),
[`save_file_text()`](https://raylibr.jeroenjanssens.com/reference/save_file_text.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://raylibr.jeroenjanssens.com/reference/set_text_line_spacing.md)

Other file functions:
[`get_file_extension()`](https://raylibr.jeroenjanssens.com/reference/get_file_extension.md),
[`get_file_length()`](https://raylibr.jeroenjanssens.com/reference/get_file_length.md),
[`get_file_mod_time()`](https://raylibr.jeroenjanssens.com/reference/get_file_mod_time.md),
[`get_file_name()`](https://raylibr.jeroenjanssens.com/reference/get_file_name.md),
[`get_file_name_without_ext()`](https://raylibr.jeroenjanssens.com/reference/get_file_name_without_ext.md),
[`is_file_dropped()`](https://raylibr.jeroenjanssens.com/reference/is_file_dropped.md),
[`is_file_extension()`](https://raylibr.jeroenjanssens.com/reference/is_file_extension.md),
[`is_file_name_valid()`](https://raylibr.jeroenjanssens.com/reference/is_file_name_valid.md),
[`is_path_file()`](https://raylibr.jeroenjanssens.com/reference/is_path_file.md),
[`save_file_text()`](https://raylibr.jeroenjanssens.com/reference/save_file_text.md)

Other load functions:
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
[`load_font()`](https://raylibr.jeroenjanssens.com/reference/load_font.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`load_image()`](https://raylibr.jeroenjanssens.com/reference/load_image.md),
[`load_image_from_screen()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_texture.md),
[`load_image_raw()`](https://raylibr.jeroenjanssens.com/reference/load_image_raw.md),
[`load_material_default()`](https://raylibr.jeroenjanssens.com/reference/load_material_default.md),
[`load_model()`](https://raylibr.jeroenjanssens.com/reference/load_model.md),
[`load_model_from_mesh()`](https://raylibr.jeroenjanssens.com/reference/load_model_from_mesh.md),
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`load_render_texture()`](https://raylibr.jeroenjanssens.com/reference/load_render_texture.md),
[`load_shader()`](https://raylibr.jeroenjanssens.com/reference/load_shader.md),
[`load_shader_from_memory()`](https://raylibr.jeroenjanssens.com/reference/load_shader_from_memory.md),
[`load_sound()`](https://raylibr.jeroenjanssens.com/reference/load_sound.md),
[`load_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_texture()`](https://raylibr.jeroenjanssens.com/reference/load_texture.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`load_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/load_vr_stereo_config.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md)

## Examples

``` r
if (FALSE) {
load_file_text("file.png")
}
```
