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
[`begin_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/end_shader_mode.md),
[`get_shader_location()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_shader_valid.md),
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`load_shader_from_memory()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader_from_memory.md),
[`set_shader_value_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_matrix.md),
[`set_shader_value_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_texture.md),
[`unload_shader()`](https://jeroenjanssens.github.io/raylibr/reference/unload_shader.md)

## Examples

``` r
if (FALSE) {
shader <- load_shader("", "shader.fs")
loc <- get_shader_location(shader, "myUniform")
set_shader_value(shader, loc, 1.0)
set_shader_value(shader, loc, c(1.0, 0.0))
}
```
