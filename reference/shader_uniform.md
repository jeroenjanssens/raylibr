# Shader Uniform

Enum values for `shader_uniform`.

## Usage

``` r
shader_uniform
```

## Format

An object of class `list` of length 13.

## Details

|             |       |
|-------------|-------|
| Name        | Value |
| `float`     | 0     |
| `vec2`      | 1     |
| `vec3`      | 2     |
| `vec4`      | 3     |
| `int`       | 4     |
| `ivec2`     | 5     |
| `ivec3`     | 6     |
| `ivec4`     | 7     |
| `uint`      | 8     |
| `uivec2`    | 9     |
| `uivec3`    | 10    |
| `uivec4`    | 11    |
| `sampler2d` | 12    |

## See also

Other Enums & constants:
[`camera_mode`](https://raylibr.jeroenjanssens.com/reference/camera_mode.md),
[`camera_projection`](https://raylibr.jeroenjanssens.com/reference/camera_projection.md),
[`flag`](https://raylibr.jeroenjanssens.com/reference/flag.md),
[`key`](https://raylibr.jeroenjanssens.com/reference/key.md),
[`log_level`](https://raylibr.jeroenjanssens.com/reference/log_level.md),
[`material_map_index`](https://raylibr.jeroenjanssens.com/reference/material_map_index.md),
[`mouse_button`](https://raylibr.jeroenjanssens.com/reference/mouse_button.md),
[`mouse_cursor`](https://raylibr.jeroenjanssens.com/reference/mouse_cursor.md)

## Examples

``` r
shader_uniform$float
#> [1] 0
shader_uniform$ivec3
#> [1] 6
shader_uniform$sampler2d
#> [1] 12
```
