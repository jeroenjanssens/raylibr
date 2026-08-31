# Get camera forward vector

Get camera forward vector

## Usage

``` r
get_camera_forward(camera)
```

## Arguments

- camera:

  A camera_3d.

## Value

A numeric vector of length 3.

## See also

Other camera functions:
[`camera_move_forward()`](https://jeroenjanssens.github.io/raylibr/reference/camera_move_forward.md),
[`camera_move_right()`](https://jeroenjanssens.github.io/raylibr/reference/camera_move_right.md),
[`camera_move_to_target()`](https://jeroenjanssens.github.io/raylibr/reference/camera_move_to_target.md),
[`camera_move_up()`](https://jeroenjanssens.github.io/raylibr/reference/camera_move_up.md),
[`camera_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/camera_pitch.md),
[`camera_roll()`](https://jeroenjanssens.github.io/raylibr/reference/camera_roll.md),
[`camera_yaw()`](https://jeroenjanssens.github.io/raylibr/reference/camera_yaw.md),
[`get_camera_projection_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_projection_matrix.md),
[`get_camera_right()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_right.md),
[`get_camera_up()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_up.md),
[`get_camera_view_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_view_matrix.md),
[`update_camera()`](https://jeroenjanssens.github.io/raylibr/reference/update_camera.md),
[`update_camera_pro()`](https://jeroenjanssens.github.io/raylibr/reference/update_camera_pro.md)

## Examples

``` r
if (FALSE) { # \dontrun{
cam <- camera_3d(c(0, 10, 10))
get_camera_forward(cam)
} # }
```
