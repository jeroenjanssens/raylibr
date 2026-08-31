# Color To Hsv

Get HSV values for a Color, hue \\0..360\\, saturation/value \\0..1\\.

## Usage

``` r
color_to_hsv(color)
```

## Arguments

- color:

  A color.

## Value

A numeric vector of length 3

## Note

This function has been auto-generated from the following Raylib function
definition:

    Vector3 ColorToHSV(Color color);

## See also

Other hsv functions:
[`color_from_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/color_from_hsv.md)

Other to functions:
[`color_to_int()`](https://jeroenjanssens.github.io/raylibr/reference/color_to_int.md),
[`text_to_camel()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_camel.md),
[`text_to_float()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_float.md),
[`text_to_integer()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_integer.md),
[`text_to_lower()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_lower.md),
[`text_to_pascal()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_pascal.md),
[`text_to_snake()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_snake.md),
[`text_to_upper()`](https://jeroenjanssens.github.io/raylibr/reference/text_to_upper.md)

## Examples

``` r
color_to_hsv("red")
#> x y z 
#> 0 1 1 
```
