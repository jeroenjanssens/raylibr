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

## Examples

``` r
if (FALSE) { # \dontrun{
shader_uniform$float
shader_uniform$ivec3
shader_uniform$sampler2d
} # }
```
