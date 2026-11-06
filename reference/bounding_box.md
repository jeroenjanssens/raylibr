# Bounding Box

Create a new bounding_box object.

## Usage

``` r
bounding_box(min, max)
```

## Arguments

- min:

  A numeric vector of length 3. Minimum vertex box-corner.

- max:

  A numeric vector of length 3. Maximum vertex box-corner.

## Value

A bounding_box

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct BoundingBox {
        Vector3 min;        // Minimum vertex box-corner
        Vector3 max;        // Maximum vertex box-corner
    } BoundingBox;

## See also

Other Structs:
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/n_patch_info.md),
[`ray()`](https://raylibr.jeroenjanssens.com/reference/ray.md),
[`ray_collision()`](https://raylibr.jeroenjanssens.com/reference/ray_collision.md),
[`raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/raylib_transform.md),
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
bou <- bounding_box(c(0, 0, 0), c(0, 0, 0))
bou$min
#> x y z 
#> 0 0 0 
bou$max
#> x y z 
#> 0 0 0 
```
