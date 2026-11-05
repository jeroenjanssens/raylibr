# Gen Image Text

Generate image: grayscale image from text data.

## Usage

``` r
gen_image_text(width, height, text)
```

## Arguments

- width:

  An integer.

- height:

  An integer.

- text:

  A string.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image GenImageText(int width, int height, const char * text);

## See also

Other text functions:
[`draw_text()`](https://raylibr.jeroenjanssens.com/reference/draw_text.md),
[`draw_text_codepoint()`](https://raylibr.jeroenjanssens.com/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_text_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_text_pro.md),
[`file_text_find_index()`](https://raylibr.jeroenjanssens.com/reference/file_text_find_index.md),
[`file_text_replace()`](https://raylibr.jeroenjanssens.com/reference/file_text_replace.md),
[`get_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_text.md),
[`get_text_between()`](https://raylibr.jeroenjanssens.com/reference/get_text_between.md),
[`image_text()`](https://raylibr.jeroenjanssens.com/reference/image_text.md),
[`image_text_ex()`](https://raylibr.jeroenjanssens.com/reference/image_text_ex.md),
[`load_file_text()`](https://raylibr.jeroenjanssens.com/reference/load_file_text.md),
[`measure_text()`](https://raylibr.jeroenjanssens.com/reference/measure_text.md),
[`measure_text_ex()`](https://raylibr.jeroenjanssens.com/reference/measure_text_ex.md),
[`save_file_text()`](https://raylibr.jeroenjanssens.com/reference/save_file_text.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://raylibr.jeroenjanssens.com/reference/set_text_line_spacing.md)

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
[`load_image_from_texture()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_texture.md),
[`load_image_raw()`](https://raylibr.jeroenjanssens.com/reference/load_image_raw.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`unload_image()`](https://raylibr.jeroenjanssens.com/reference/unload_image.md)

## Examples

``` r
if (FALSE) {
gen_image_text(800L, 450L, "Hello")
}
```
