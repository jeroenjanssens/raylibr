# Quaternion Subtract Value

Quaternion Subtract Value

## Usage

``` r
quaternion_subtract_value(q, sub)
```

## Arguments

- q:

  A numeric vector of length 4.

- sub:

  A number.

## Value

A numeric vector of length 4

## See also

Other raymath — Quaternion:
[`quaternion_add()`](https://raylibr.jeroenjanssens.com/reference/quaternion_add.md),
[`quaternion_add_value()`](https://raylibr.jeroenjanssens.com/reference/quaternion_add_value.md),
[`quaternion_cubic_hermite_spline()`](https://raylibr.jeroenjanssens.com/reference/quaternion_cubic_hermite_spline.md),
[`quaternion_divide()`](https://raylibr.jeroenjanssens.com/reference/quaternion_divide.md),
[`quaternion_equals()`](https://raylibr.jeroenjanssens.com/reference/quaternion_equals.md),
[`quaternion_from_axis_angle()`](https://raylibr.jeroenjanssens.com/reference/quaternion_from_axis_angle.md),
[`quaternion_from_euler()`](https://raylibr.jeroenjanssens.com/reference/quaternion_from_euler.md),
[`quaternion_from_matrix()`](https://raylibr.jeroenjanssens.com/reference/quaternion_from_matrix.md),
[`quaternion_from_vector3_to_vector3()`](https://raylibr.jeroenjanssens.com/reference/quaternion_from_vector3_to_vector3.md),
[`quaternion_identity()`](https://raylibr.jeroenjanssens.com/reference/quaternion_identity.md),
[`quaternion_invert()`](https://raylibr.jeroenjanssens.com/reference/quaternion_invert.md),
[`quaternion_length()`](https://raylibr.jeroenjanssens.com/reference/quaternion_length.md),
[`quaternion_lerp()`](https://raylibr.jeroenjanssens.com/reference/quaternion_lerp.md),
[`quaternion_multiply()`](https://raylibr.jeroenjanssens.com/reference/quaternion_multiply.md),
[`quaternion_nlerp()`](https://raylibr.jeroenjanssens.com/reference/quaternion_nlerp.md),
[`quaternion_normalize()`](https://raylibr.jeroenjanssens.com/reference/quaternion_normalize.md),
[`quaternion_scale()`](https://raylibr.jeroenjanssens.com/reference/quaternion_scale.md),
[`quaternion_slerp()`](https://raylibr.jeroenjanssens.com/reference/quaternion_slerp.md),
[`quaternion_subtract()`](https://raylibr.jeroenjanssens.com/reference/quaternion_subtract.md),
[`quaternion_to_axis_angle()`](https://raylibr.jeroenjanssens.com/reference/quaternion_to_axis_angle.md),
[`quaternion_to_euler()`](https://raylibr.jeroenjanssens.com/reference/quaternion_to_euler.md),
[`quaternion_to_matrix()`](https://raylibr.jeroenjanssens.com/reference/quaternion_to_matrix.md),
[`quaternion_transform()`](https://raylibr.jeroenjanssens.com/reference/quaternion_transform.md)

## Examples

``` r
quaternion_subtract_value(c(0, 0, 0, 1), 0.0)
#> x y z w 
#> 0 0 0 1 
```
