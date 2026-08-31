# Color From Normalized

Get Color from normalized values \\0..1\\.

## Usage

``` r
color_from_normalized(normalized)
```

## Arguments

- normalized:

  A numeric vector of length 4.

## Value

A color

## Note

This function has been auto-generated from the following Raylib function
definition:

    Color ColorFromNormalized(Vector4 normalized);

## See also

Other from functions:
[`color_from_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/color_from_hsv.md),
[`image_from_channel()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_channel.md),
[`image_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_image.md)

## Examples

``` r
color_from_normalized(c(0, 0, 0, 1))
#> color(r = 0, g = 0, b = 0, a = 255) 
```
