# Set shader value

Set shader uniform value.

## Usage

``` r
set_shader_value(shader, loc_index, value)
```

## Arguments

- shader:

  A shader.

- loc_index:

  An integer.

- value:

  A number or numerical vector of length 2, 3, or 4.

## See also

Other shader functions:
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`unload_shader()`](https://jeroenjanssens.github.io/raylibr/reference/unload_shader.md)

## Examples

``` r
if (FALSE) { # \dontrun{
shader <- load_shader("", "shader.fs")
loc <- get_shader_location(shader, "myUniform")
set_shader_value(shader, loc, 1.0)
set_shader_value(shader, loc, c(1.0, 0.0))
} # }
```
