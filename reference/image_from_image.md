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
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`get_clipboard_image()`](https://jeroenjanssens.github.io/raylibr/reference/get_clipboard_image.md),
[`image_draw_line_ex()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_line_ex.md),
[`image_draw_triangle()`](https://jeroenjanssens.github.io/raylibr/reference/image_draw_triangle.md),
[`load_font_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_font_from_image.md),
[`load_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_image.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`unload_image()`](https://jeroenjanssens.github.io/raylibr/reference/unload_image.md)

## Examples

``` r
if (FALSE) { # \dontrun{
image_from_image(gen_image_color(100, 100, "blue"), rectangle(10, 10, 200, 100))
} # }
```
