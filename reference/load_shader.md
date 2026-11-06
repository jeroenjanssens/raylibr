# Load Shader

Load shader from files and bind default locations.

## Usage

``` r
load_shader(vs_file_name = "", fs_file_name)
```

## Arguments

- vs_file_name:

  A string.

- fs_file_name:

  A string.

## Value

A shader

## Note

This function has been auto-generated from the following Raylib function
definition:

    Shader LoadShader(const char * vsFileName, const char * fsFileName);

## See also

Other Shaders:
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`end_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/end_shader_mode.md),
[`get_shader_location()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location.md),
[`get_shader_location_attrib()`](https://raylibr.jeroenjanssens.com/reference/get_shader_location_attrib.md),
[`is_shader_valid()`](https://raylibr.jeroenjanssens.com/reference/is_shader_valid.md),
[`load_shader_from_memory()`](https://raylibr.jeroenjanssens.com/reference/load_shader_from_memory.md),
[`set_shader_value()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value.md),
[`set_shader_value_matrix()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_matrix.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md)

## Examples

``` r
if (FALSE) {
load_shader("file.png", "file.png")
}
```
