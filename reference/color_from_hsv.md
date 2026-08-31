# Color From Hsv

Get a Color from HSV values, hue \\0..360\\, saturation/value \\0..1\\.

## Usage

``` r
color_from_hsv(hue, saturation, value)
```

## Arguments

- hue:

  A number.

- saturation:

  A number.

- value:

  A number.

## Value

A color

## Note

This function has been auto-generated from the following Raylib function
definition:

    Color ColorFromHSV(float hue, float saturation, float value);

## See also

Other hsv functions:
[`color_to_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/color_to_hsv.md)

Other from functions:
[`color_from_normalized()`](https://jeroenjanssens.github.io/raylibr/reference/color_from_normalized.md),
[`image_from_channel()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_channel.md),
[`image_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_image.md)

## Examples

``` r
color_from_hsv(0.0, 0.0, 0.0)
#> color(r = 0, g = 0, b = 0, a = 255) 
```
