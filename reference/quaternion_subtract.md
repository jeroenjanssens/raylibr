# Quaternion Subtract

Quaternion Subtract

## Usage

``` r
quaternion_subtract(q1, q2)
```

## Arguments

- q1:

  A numeric vector of length 4.

- q2:

  A numeric vector of length 4.

## Value

A numeric vector of length 4

## See also

Other quaternion functions:
[`quaternion_add()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_add.md),
[`quaternion_add_value()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_add_value.md),
[`quaternion_cubic_hermite_spline()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_cubic_hermite_spline.md),
[`quaternion_divide()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_divide.md),
[`quaternion_equals()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_equals.md),
[`quaternion_from_axis_angle()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_from_axis_angle.md),
[`quaternion_from_euler()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_from_euler.md),
[`quaternion_from_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_from_matrix.md),
[`quaternion_from_vector3_to_vector3()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_from_vector3_to_vector3.md),
[`quaternion_identity()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_identity.md),
[`quaternion_invert()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_invert.md),
[`quaternion_length()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_length.md),
[`quaternion_lerp()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_lerp.md),
[`quaternion_multiply()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_multiply.md),
[`quaternion_nlerp()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_nlerp.md),
[`quaternion_normalize()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_normalize.md),
[`quaternion_scale()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_scale.md),
[`quaternion_slerp()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_slerp.md),
[`quaternion_subtract_value()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_subtract_value.md),
[`quaternion_to_axis_angle()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_to_axis_angle.md),
[`quaternion_to_euler()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_to_euler.md),
[`quaternion_to_matrix()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_to_matrix.md),
[`quaternion_transform()`](https://jeroenjanssens.github.io/raylibr/reference/quaternion_transform.md)

## Examples

``` r
quaternion_subtract(c(0, 0, 0, 1), c(0, 0, 0, 1))
#> x y z w 
#> 0 0 0 0 
```
