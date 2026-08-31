# Load Font From Image

Load font from Image (XNA style).

## Usage

``` r
load_font_from_image(image, key, first_char)
```

## Arguments

- image:

  An image.

- key:

  A color.

- first_char:

  An integer.

## Value

A font

## Note

This function has been auto-generated from the following Raylib function
definition:

    Font LoadFontFromImage(Image image, Color key, int firstChar);

## See also

Other image functions:
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`get_clipboard_image()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_image.md),
[`image_draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_line_ex.md),
[`image_draw_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_triangle.md),
[`image_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_image.md),
[`load_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_image.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md)

Other load functions:
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`load_font()`](https://jeroenjanssens.github.io/raylibr/reference/load_font.md),
[`load_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_image.md),
[`load_image_from_screen()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_image_raw()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_raw.md),
[`load_material_default()`](https://jeroenjanssens.github.io/raylibr/reference/load_material_default.md),
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`load_model_from_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/load_model_from_mesh.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`load_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_render_texture.md),
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`load_shader_from_memory()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader_from_memory.md),
[`load_sound()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound.md),
[`load_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_from_wave.md),
[`load_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`load_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/load_vr_stereo_config.md),
[`load_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_wave.md)

## Examples

``` r
if (FALSE) { # \dontrun{
load_font_from_image(gen_image_color(100, 100, "blue"), "red", 0L)
} # }
```
