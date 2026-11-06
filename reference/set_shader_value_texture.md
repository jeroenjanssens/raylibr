# Set Shader Value Texture

Set shader uniform value and bind the texture (sampler2d).

## Usage

``` r
set_shader_value_texture(shader, loc_index, texture)
```

## Arguments

- shader:

  A shader.

- loc_index:

  An integer.

- texture:

  A texture.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);

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
[`set_shader_value_matrix()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_matrix.md),
[`unload_shader()`](https://raylibr.jeroenjanssens.com/reference/unload_shader.md)

## Examples

``` r
if (FALSE) {
set_shader_value_texture(load_shader("", "shader.fs"), 0L, texture(0L, 64L, 64L, 1L, 7L))
}
```
