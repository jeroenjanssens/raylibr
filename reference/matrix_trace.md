# Matrix Trace

Matrix Trace

## Usage

``` r
matrix_trace(mat)
```

## Arguments

- mat:

  A 4x4 numeric matrix.

## Value

A number

## See also

Other matrix functions:
[`get_camera_matrix()`](https://raylibr.jeroenjanssens.com/reference/get_camera_matrix.md),
[`matrix_add()`](https://raylibr.jeroenjanssens.com/reference/matrix_add.md),
[`matrix_compose()`](https://raylibr.jeroenjanssens.com/reference/matrix_compose.md),
[`matrix_decompose()`](https://raylibr.jeroenjanssens.com/reference/matrix_decompose.md),
[`matrix_determinant()`](https://raylibr.jeroenjanssens.com/reference/matrix_determinant.md),
[`matrix_frustum()`](https://raylibr.jeroenjanssens.com/reference/matrix_frustum.md),
[`matrix_identity()`](https://raylibr.jeroenjanssens.com/reference/matrix_identity.md),
[`matrix_invert()`](https://raylibr.jeroenjanssens.com/reference/matrix_invert.md),
[`matrix_look_at()`](https://raylibr.jeroenjanssens.com/reference/matrix_look_at.md),
[`matrix_multiply()`](https://raylibr.jeroenjanssens.com/reference/matrix_multiply.md),
[`matrix_multiply_value()`](https://raylibr.jeroenjanssens.com/reference/matrix_multiply_value.md),
[`matrix_ortho()`](https://raylibr.jeroenjanssens.com/reference/matrix_ortho.md),
[`matrix_perspective()`](https://raylibr.jeroenjanssens.com/reference/matrix_perspective.md),
[`matrix_rotate()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate.md),
[`matrix_rotate_x()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_x.md),
[`matrix_rotate_xyz()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_xyz.md),
[`matrix_rotate_y()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_y.md),
[`matrix_rotate_z()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_z.md),
[`matrix_rotate_zyx()`](https://raylibr.jeroenjanssens.com/reference/matrix_rotate_zyx.md),
[`matrix_scale()`](https://raylibr.jeroenjanssens.com/reference/matrix_scale.md),
[`matrix_subtract()`](https://raylibr.jeroenjanssens.com/reference/matrix_subtract.md),
[`matrix_translate()`](https://raylibr.jeroenjanssens.com/reference/matrix_translate.md),
[`matrix_transpose()`](https://raylibr.jeroenjanssens.com/reference/matrix_transpose.md),
[`set_shader_value_matrix()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_matrix.md)

## Examples

``` r
matrix_trace(diag(4))
#> [1] 4
```
