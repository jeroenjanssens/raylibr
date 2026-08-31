# Vector3 Reflect

Vector3 Reflect

## Usage

``` r
vector3_reflect(v, normal)
```

## Arguments

- v:

  A numeric vector of length 3.

- normal:

  A numeric vector of length 3.

## Value

A numeric vector of length 3

## See also

Other vector3 functions:
[`vector3_add()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_add.md),
[`vector3_add_value()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_add_value.md),
[`vector3_angle()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_angle.md),
[`vector3_barycenter()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_barycenter.md),
[`vector3_clamp()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_clamp.md),
[`vector3_clamp_value()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_clamp_value.md),
[`vector3_cross_product()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_cross_product.md),
[`vector3_cubic_hermite()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_cubic_hermite.md),
[`vector3_distance()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_distance.md),
[`vector3_distance_sqr()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_distance_sqr.md),
[`vector3_divide()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_divide.md),
[`vector3_dot_product()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_dot_product.md),
[`vector3_equals()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_equals.md),
[`vector3_invert()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_invert.md),
[`vector3_length()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_length.md),
[`vector3_length_sqr()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_length_sqr.md),
[`vector3_lerp()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_lerp.md),
[`vector3_max()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_max.md),
[`vector3_min()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_min.md),
[`vector3_move_towards()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_move_towards.md),
[`vector3_multiply()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_multiply.md),
[`vector3_negate()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_negate.md),
[`vector3_normalize()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_normalize.md),
[`vector3_one()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_one.md),
[`vector3_ortho_normalize()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_ortho_normalize.md),
[`vector3_perpendicular()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_perpendicular.md),
[`vector3_project()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_project.md),
[`vector3_refract()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_refract.md),
[`vector3_reject()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_reject.md),
[`vector3_rotate_by_axis_angle()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_rotate_by_axis_angle.md),
[`vector3_rotate_by_quaternion()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_rotate_by_quaternion.md),
[`vector3_scale()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_scale.md),
[`vector3_subtract()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_subtract.md),
[`vector3_subtract_value()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_subtract_value.md),
[`vector3_transform()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_transform.md),
[`vector3_unproject()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_unproject.md),
[`vector3_zero()`](https://jeroenjanssens.github.io/raylibr/reference/vector3_zero.md)

## Examples

``` r
vector3_reflect(c(0, 0, 0), c(0, 0, 0))
#> x y z 
#> 0 0 0 
```
