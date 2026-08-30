# Decompose a matrix

Decompose a transformation matrix into its translation, rotation, and
scale components.

## Usage

``` r
matrix_decompose(mat)
```

## Arguments

- mat:

  A 4x4 numeric matrix.

## Value

A list with elements `translation` (numeric vector of length 3),
`rotation` (numeric vector of length 4, quaternion), and `scale`
(numeric vector of length 3).

## See also

Other matrix functions:
[`get_camera_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/get_camera_matrix.md),
[`matrix_add()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_add.md),
[`matrix_compose()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_compose.md),
[`matrix_determinant()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_determinant.md),
[`matrix_frustum()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_frustum.md),
[`matrix_identity()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_identity.md),
[`matrix_invert()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_invert.md),
[`matrix_look_at()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_look_at.md),
[`matrix_multiply()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_multiply.md),
[`matrix_multiply_value()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_multiply_value.md),
[`matrix_ortho()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_ortho.md),
[`matrix_perspective()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_perspective.md),
[`matrix_rotate()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate.md),
[`matrix_rotate_x()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_x.md),
[`matrix_rotate_xyz()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_xyz.md),
[`matrix_rotate_y()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_y.md),
[`matrix_rotate_z()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_z.md),
[`matrix_rotate_zyx()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_rotate_zyx.md),
[`matrix_scale()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_scale.md),
[`matrix_subtract()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_subtract.md),
[`matrix_trace()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_trace.md),
[`matrix_translate()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_translate.md),
[`matrix_transpose()`](https://jeroenjanssens.github.io/raylibr/reference/matrix_transpose.md),
[`set_shader_value_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value_matrix.md)
