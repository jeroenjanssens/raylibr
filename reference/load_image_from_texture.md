# Load Image From Texture

Load image from GPU texture data.

## Usage

``` r
load_image_from_texture(texture)
```

## Arguments

- texture:

  A texture.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image LoadImageFromTexture(Texture2D texture);

## See also

Other texture functions:
[`begin_texture_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_texture_mode.md),
[`draw_texture()`](https://raylibr.jeroenjanssens.com/reference/draw_texture.md),
[`draw_texture_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_ex.md),
[`draw_texture_n_patch()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_n_patch.md),
[`draw_texture_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_pro.md),
[`draw_texture_rec()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_rec.md),
[`draw_texture_v()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_v.md),
[`end_texture_mode()`](https://raylibr.jeroenjanssens.com/reference/end_texture_mode.md),
[`get_shapes_texture()`](https://raylibr.jeroenjanssens.com/reference/get_shapes_texture.md),
[`is_texture_valid()`](https://raylibr.jeroenjanssens.com/reference/is_texture_valid.md),
[`load_render_texture()`](https://raylibr.jeroenjanssens.com/reference/load_render_texture.md),
[`load_texture()`](https://raylibr.jeroenjanssens.com/reference/load_texture.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shapes_texture.md),
[`set_texture_filter()`](https://raylibr.jeroenjanssens.com/reference/set_texture_filter.md),
[`set_texture_wrap()`](https://raylibr.jeroenjanssens.com/reference/set_texture_wrap.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md),
[`unload_render_texture()`](https://raylibr.jeroenjanssens.com/reference/unload_render_texture.md),
[`unload_texture()`](https://raylibr.jeroenjanssens.com/reference/unload_texture.md)

Other image functions:
[`export_image()`](https://raylibr.jeroenjanssens.com/reference/export_image.md),
[`export_image_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_image_as_code.md),
[`gen_image_cellular()`](https://raylibr.jeroenjanssens.com/reference/gen_image_cellular.md),
[`gen_image_checked()`](https://raylibr.jeroenjanssens.com/reference/gen_image_checked.md),
[`gen_image_color()`](https://raylibr.jeroenjanssens.com/reference/gen_image_color.md),
[`gen_image_gradient_linear()`](https://raylibr.jeroenjanssens.com/reference/gen_image_gradient_linear.md),
[`gen_image_gradient_radial()`](https://raylibr.jeroenjanssens.com/reference/gen_image_gradient_radial.md),
[`gen_image_gradient_square()`](https://raylibr.jeroenjanssens.com/reference/gen_image_gradient_square.md),
[`gen_image_perlin_noise()`](https://raylibr.jeroenjanssens.com/reference/gen_image_perlin_noise.md),
[`gen_image_text()`](https://raylibr.jeroenjanssens.com/reference/gen_image_text.md),
[`gen_image_white_noise()`](https://raylibr.jeroenjanssens.com/reference/gen_image_white_noise.md),
[`get_clipboard_image()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_image.md),
[`get_image_alpha_border()`](https://raylibr.jeroenjanssens.com/reference/get_image_alpha_border.md),
[`get_image_color()`](https://raylibr.jeroenjanssens.com/reference/get_image_color.md),
[`image_draw_line_ex()`](https://raylibr.jeroenjanssens.com/reference/image_draw_line_ex.md),
[`image_draw_triangle()`](https://raylibr.jeroenjanssens.com/reference/image_draw_triangle.md),
[`image_from_image()`](https://raylibr.jeroenjanssens.com/reference/image_from_image.md),
[`is_image_valid()`](https://raylibr.jeroenjanssens.com/reference/is_image_valid.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`load_image()`](https://raylibr.jeroenjanssens.com/reference/load_image.md),
[`load_image_from_screen()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_screen.md),
[`load_image_raw()`](https://raylibr.jeroenjanssens.com/reference/load_image_raw.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`unload_image()`](https://raylibr.jeroenjanssens.com/reference/unload_image.md)

Other load functions:
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
[`load_file_text()`](https://raylibr.jeroenjanssens.com/reference/load_file_text.md),
[`load_font()`](https://raylibr.jeroenjanssens.com/reference/load_font.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`load_image()`](https://raylibr.jeroenjanssens.com/reference/load_image.md),
[`load_image_from_screen()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_screen.md),
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
load_image_from_texture(texture(0L, 64L, 64L, 1L, 7L))
}
```
