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
[`draw_spline_segment_linear()`](https://jeroenjanssens.github.io/raylibr/reference/draw_spline_segment_linear.md),
[`get_spline_point_linear()`](https://jeroenjanssens.github.io/raylibr/reference/get_spline_point_linear.md)

Other image functions:
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`gen_image_cellular()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_cellular.md),
[`gen_image_checked()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_checked.md),
[`gen_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_color.md),
[`gen_image_gradient_radial()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_gradient_radial.md),
[`gen_image_gradient_square()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_gradient_square.md),
[`gen_image_perlin_noise()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_perlin_noise.md),
[`gen_image_text()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_text.md),
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
gen_image_gradient_linear(800L, 450L, 0L, "red", "red")
}
```
