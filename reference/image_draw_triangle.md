# Image draw triangle

Draw triangle within an image. Modifies the image in place.

## Usage

``` r
image_draw_triangle(dst, v1, v2, v3, color)
```

## Arguments

- dst:

  An image.

- v1:

  A numeric vector of length 2.

- v2:

  A numeric vector of length 2.

- v3:

  A numeric vector of length 2.

- color:

  A color.

## See also

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
[`gen_image_text()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_text.md),
[`gen_image_white_noise()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_white_noise.md),
[`get_clipboard_image()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_image.md),
[`get_image_alpha_border()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_alpha_border.md),
[`get_image_color()`](https://jeroenjanssens.github.io/raylibr/reference/get_image_color.md),
[`image_draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_line_ex.md),
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
img <- gen_image_color(200, 200, "white")
image_draw_triangle(img, c(100, 10), c(10, 190), c(190, 190), "blue")
}
```
