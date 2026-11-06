# Get Shader Location Attrib

Get shader attribute location.

## Usage

``` r
get_shader_location_attrib(shader, attrib_name)
```

## Arguments

- shader:

  A shader.

- attrib_name:

  A string.

## Value

An integer

## Note

This function has been auto-generated from the following Raylib function
definition:

    int GetShaderLocationAttrib(Shader shader, const char * attribName);

## See also

Other Shaders:
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/end_shader_mode.md),
[`get_shader_location()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`load_shader()`](https://raylibr.jeroenjanssens.com/reference/load_shader.md),
[`load_shader_from_memory()`](https://raylibr.jeroenjanssens.com/reference/load_shader_from_memory.md),
[`set_shader_value()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value.md),
[`set_shader_value_matrix()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_matrix.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md)

## Examples

``` r
if (FALSE) {
get_shader_location_attrib(load_shader("", "shader.fs"), "text")
}
```
