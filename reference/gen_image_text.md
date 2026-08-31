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
[`draw_text()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text.md),
[`draw_text_codepoint()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_codepoint.md),
[`draw_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_ex.md),
[`draw_text_pro()`](https://jeroenjanssens.github.io/raylibr/reference/draw_text_pro.md),
[`file_text_find_index()`](https://jeroenjanssens.github.io/raylibr/reference/file_text_find_index.md),
[`file_text_replace()`](https://jeroenjanssens.github.io/raylibr/reference/file_text_replace.md),
[`get_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_text.md),
[`get_text_between()`](https://jeroenjanssens.github.io/raylibr/reference/get_text_between.md),
[`image_text()`](https://jeroenjanssens.github.io/raylibr/reference/image_text.md),
[`image_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/image_text_ex.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`measure_text()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text.md),
[`measure_text_ex()`](https://jeroenjanssens.github.io/raylibr/reference/measure_text_ex.md),
[`save_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/save_file_text.md),
[`set_clipboard_text()`](https://jeroenjanssens.github.io/raylibr/reference/set_clipboard_text.md),
[`set_text_line_spacing()`](https://jeroenjanssens.github.io/raylibr/reference/set_text_line_spacing.md)

Other image functions:
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`gen_image_cellular()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_cellular.md),
[`gen_image_checked()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_checked.md),
[`gen_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_color.md),
[`gen_image_gradient_linear()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_gradient_linear.md),
[`gen_image_gradient_radial()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_gradient_radial.md),
[`gen_image_gradient_square()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_gradient_square.md),
[`gen_image_perlin_noise()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_perlin_noise.md),
[`gen_image_white_noise()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_white_noise.md),
[`get_clipboard_image()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_image.md),
[`get_image_alpha_border()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_alpha_border.md),
[`get_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_color.md),
[`image_draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_line_ex.md),
[`image_draw_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_triangle.md),
[`image_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_image.md),
[`is_image_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_image_valid.md),
[`load_font_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_font_from_image.md),
[`load_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_image.md),
[`load_image_from_screen()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_image_raw()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_raw.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md)

## Examples

``` r
if (FALSE) {
gen_image_text(800L, 450L, "Hello")
}
```
