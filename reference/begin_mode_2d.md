# Begin Mode 2d

Begin 2D mode with custom camera (2D).

## Usage

``` r
begin_mode_2d(camera)
```

## Arguments

- camera:

  A camera_2d.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void BeginMode2D(Camera2D camera);

## See also

Other 2d functions:
[`end_mode_2d()`](https://jeroenjanssens.github.io/raylibr/reference/end_mode_2d.md),
[`get_camera_matrix_2d()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_matrix_2d.md),
[`get_screen_to_world_2d()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_to_world_2d.md),
[`get_world_to_screen_2d()`](https://jeroenjanssens.github.io/raylibr/reference/get_world_to_screen_2d.md)

Other begin functions:
[`begin_blend_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_blend_mode.md),
[`begin_drawing()`](https://jeroenjanssens.github.io/raylibr/reference/begin_drawing.md),
[`begin_mode_3d()`](https://jeroenjanssens.github.io/raylibr/reference/begin_mode_3d.md),
[`begin_scissor_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_scissor_mode.md),
[`begin_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_shader_mode.md),
[`begin_texture_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_texture_mode.md),
[`begin_vr_stereo_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_vr_stereo_mode.md)

## Examples

``` r
if (FALSE) { # \dontrun{
begin_mode_2d(camera_2d(c(400, 300), c(0, 0)))
} # }
```
