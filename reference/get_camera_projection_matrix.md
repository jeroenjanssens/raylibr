# Get camera projection matrix

Get camera projection matrix

## Usage

``` r
get_camera_projection_matrix(camera, aspect)
```

## Arguments

- camera:

  A camera_3d.

- aspect:

  A number. Screen aspect ratio (width/height).

## Value

A 4x4 numeric matrix.

## See also

Other Camera:
[`begin_mode_2d()`](https://raylibr.jeroenjanssens.com/reference/begin_mode_2d.md),
[`begin_mode_3d()`](https://raylibr.jeroenjanssens.com/reference/begin_mode_3d.md),
[`camera_move_forward()`](https://raylibr.jeroenjanssens.com/reference/camera_move_forward.md),
[`camera_move_right()`](https://raylibr.jeroenjanssens.com/reference/camera_move_right.md),
[`camera_move_to_target()`](https://raylibr.jeroenjanssens.com/reference/camera_move_to_target.md),
[`camera_move_up()`](https://raylibr.jeroenjanssens.com/reference/camera_move_up.md),
[`camera_pitch()`](https://raylibr.jeroenjanssens.com/reference/camera_pitch.md),
[`camera_roll()`](https://raylibr.jeroenjanssens.com/reference/camera_roll.md),
[`camera_yaw()`](https://raylibr.jeroenjanssens.com/reference/camera_yaw.md),
[`end_mode_2d()`](https://raylibr.jeroenjanssens.com/reference/end_mode_2d.md),
[`end_mode_3d()`](https://raylibr.jeroenjanssens.com/reference/end_mode_3d.md),
[`get_camera_forward()`](https://raylibr.jeroenjanssens.com/reference/get_camera_forward.md),
[`get_camera_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_matrix.md),
[`get_camera_matrix_2d()`](https://raylibr.jeroenjanssens.com/reference/get_camera_matrix_2d.md),
[`get_camera_right()`](https://raylibr.jeroenjanssens.com/reference/get_camera_right.md),
[`get_camera_up()`](https://raylibr.jeroenjanssens.com/reference/get_camera_up.md),
[`get_camera_view_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_view_matrix.md),
[`get_screen_to_world_2d()`](https://raylibr.jeroenjanssens.com/reference/get_screen_to_world_2d.md),
[`get_screen_to_world_ray()`](https://raylibr.jeroenjanssens.com/reference/get_screen_to_world_ray.md),
[`get_screen_to_world_ray_ex()`](https://raylibr.jeroenjanssens.com/reference/get_screen_to_world_ray_ex.md),
[`get_world_to_screen()`](https://raylibr.jeroenjanssens.com/reference/get_world_to_screen.md),
[`get_world_to_screen_2d()`](https://raylibr.jeroenjanssens.com/reference/get_world_to_screen_2d.md),
[`get_world_to_screen_ex()`](https://raylibr.jeroenjanssens.com/reference/get_world_to_screen_ex.md),
[`update_camera()`](https://raylibr.jeroenjanssens.com/reference/update_camera.md),
[`update_camera_pro()`](https://raylibr.jeroenjanssens.com/reference/update_camera_pro.md)

## Examples

``` r
cam <- camera_3d(c(0, 10, 10))
get_camera_projection_matrix(cam, 800 / 450)
#>           [,1]     [,2]      [,3]       [,4]
#> [1,] 0.8033332 0.000000  0.000000  0.0000000
#> [2,] 0.0000000 1.428148  0.000000  0.0000000
#> [3,] 0.0000000 0.000000 -1.000025 -0.1000013
#> [4,] 0.0000000 0.000000 -1.000000  0.0000000
```
