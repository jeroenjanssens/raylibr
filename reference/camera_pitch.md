# Rotate camera around right axis (pitch)

Rotate camera around right axis (pitch)

## Usage

``` r
camera_pitch(camera, angle, lock_view, rotate_around_target, rotate_up)
```

## Arguments

- camera:

  A camera_3d.

- angle:

  A number. Rotation angle in radians.

- lock_view:

  A logical.

- rotate_around_target:

  A logical.

- rotate_up:

  A logical.

## See also

Other camera functions:
[`camera_move_forward()`](https://raylibr.jeroenjanssens.com/reference/camera_move_forward.md),
[`camera_move_right()`](https://raylibr.jeroenjanssens.com/reference/camera_move_right.md),
[`camera_move_to_target()`](https://raylibr.jeroenjanssens.com/reference/camera_move_to_target.md),
[`camera_move_up()`](https://raylibr.jeroenjanssens.com/reference/camera_move_up.md),
[`camera_roll()`](https://raylibr.jeroenjanssens.com/reference/camera_roll.md),
[`camera_yaw()`](https://raylibr.jeroenjanssens.com/reference/camera_yaw.md),
[`get_camera_forward()`](https://raylibr.jeroenjanssens.com/reference/get_camera_forward.md),
[`get_camera_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_matrix.md),
[`get_camera_matrix_2d()`](https://raylibr.jeroenjanssens.com/reference/get_camera_matrix_2d.md),
[`get_camera_projection_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_projection_matrix.md),
[`get_camera_right()`](https://raylibr.jeroenjanssens.com/reference/get_camera_right.md),
[`get_camera_up()`](https://raylibr.jeroenjanssens.com/reference/get_camera_up.md),
[`get_camera_view_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_view_matrix.md),
[`update_camera()`](https://raylibr.jeroenjanssens.com/reference/update_camera.md),
[`update_camera_pro()`](https://raylibr.jeroenjanssens.com/reference/update_camera_pro.md)

## Examples

``` r
cam <- camera_3d(c(0, 10, 10))
camera_pitch(cam, 0.1, TRUE, TRUE, FALSE)
```
