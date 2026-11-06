# Set Shader Value Matrix

Set shader uniform value (matrix 4x4).

## Usage

``` r
set_shader_value_matrix(shader, loc_index, mat)
```

## Arguments

- shader:

  A shader.

- loc_index:

  An integer.

- mat:

  A 4x4 numeric matrix.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);

## See also

Other Shaders:
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/end_shader_mode.md),
[`get_shader_location()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`load_shader()`](https://raylibr.jeroenjanssens.com/reference/load_shader.md),
[`load_shader_from_memory()`](https://raylibr.jeroenjanssens.com/reference/load_shader_from_memory.md),
[`set_shader_value()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md)

## Examples

``` r
if (FALSE) {
set_shader_value_matrix(load_shader("", "shader.fs"), 0L, diag(4))
}
```
