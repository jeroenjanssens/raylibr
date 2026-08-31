# Color Lerp

Get color lerp interpolation between two colors, factor \\0.0f..1.0f\\.

## Usage

``` r
color_lerp(color1, color2, factor)
```

## Arguments

- color1:

  A color.

- color2:

  A color.

- factor:

  A number.

## Value

A color

## Note

This function has been auto-generated from the following Raylib function
definition:

    Color ColorLerp(Color color1, Color color2, float factor);

## Examples

``` r
color_lerp("red", "red", 0.0)
#> color(r = 255, g = 0, b = 0, a = 255) 
```
