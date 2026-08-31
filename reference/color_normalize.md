# Color Normalize

Get Color normalized as float \\0..1\\.

## Usage

``` r
color_normalize(color)
```

## Arguments

- color:

  A color.

## Value

A numeric vector of length 4

## Note

This function has been auto-generated from the following Raylib function
definition:

    Vector4 ColorNormalize(Color color);

## Examples

``` r
color_normalize("red")
#> x y z w 
#> 1 0 0 1 
```
