# Image From Image

Create an image from another image piece.

## Usage

``` r
image_from_image(image, rec)
```

## Arguments

- image:

  An image.

- rec:

  A rectangle.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image ImageFromImage(Image image, Rectangle rec);

## See also

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
[`is_image_valid()`](https://raylibr.jeroenjanssens.com/reference/is_image_valid.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`load_image()`](https://raylibr.jeroenjanssens.com/reference/load_image.md),
[`load_image_from_screen()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_texture.md),
[`load_image_raw()`](https://raylibr.jeroenjanssens.com/reference/load_image_raw.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`unload_image()`](https://raylibr.jeroenjanssens.com/reference/unload_image.md)

Other from functions:
[`color_from_hsv()`](https://raylibr.jeroenjanssens.com/reference/color_from_hsv.md),
[`color_from_normalized()`](https://raylibr.jeroenjanssens.com/reference/color_from_normalized.md),
[`image_from_channel()`](https://raylibr.jeroenjanssens.com/reference/image_from_channel.md)

## Examples

``` r
image_from_image(gen_image_color(200, 200, "blue"), rectangle(10, 10, 200, 100))

```
