# Convert to color

Convert a value to a color object. Accepts R color names (strings), hex
integers, lists with r/g/b/a components, or existing color objects.

## Usage

``` r
as_color(x)
```

## Arguments

- x:

  A color name (string), hex integer, list, or color object.

## Value

A color object.

## Examples

``` r
if (FALSE) { # \dontrun{
as_color("red")
as_color(list(r = 255, g = 0, b = 0, a = 255))
} # }
```
