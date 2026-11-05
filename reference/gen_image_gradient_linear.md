# Gen Image Gradient Linear

Generate image: linear gradient, direction in degrees \\0..360\\,
0=Vertical gradient.

## Usage

``` r
gen_image_gradient_linear(width, height, direction, start, end)
```

## Arguments

- width:

  An integer.

- height:

  An integer.

- direction:

  An integer.

- start:

  A color.

- end:

  A color.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image GenImageGradientLinear(int width, int height, int direction, Color start, Color end);

## See also

Other linear functions:
[`draw_spline_segment_linear()`](https://raylibr.jeroenjanssens.com/reference/draw_spline_segment_linear.md),
[`get_spline_point_linear()`](https://raylibr.jeroenjanssens.com/reference/get_spline_point_linear.md)

Other image functions:
[`export_image()`](https://raylibr.jeroenjanssens.com/reference/export_image.md),
[`export_image_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_image_as_code.md),
[`gen_image_cellular()`](https://raylibr.jeroenjanssens.com/reference/gen_image_cellular.md),
[`gen_image_checked()`](https://raylibr.jeroenjanssens.com/reference/gen_image_checked.md),
[`gen_image_color()`](https://raylibr.jeroenjanssens.com/reference/gen_image_color.md),
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
[`load_image_from_texture()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_texture.md),
[`load_image_raw()`](https://raylibr.jeroenjanssens.com/reference/load_image_raw.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`unload_image()`](https://raylibr.jeroenjanssens.com/reference/unload_image.md)

## Examples

``` r
gen_image_gradient_linear(800L, 450L, 0L, "red", "red")

```
