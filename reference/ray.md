# Ray

Create a new ray object.

## Usage

``` r
ray(position, direction)
```

## Arguments

- position:

  A numeric vector of length 3. Ray position (origin).

- direction:

  A numeric vector of length 3. Ray direction (normalized).

## Value

A ray

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Ray {
        Vector3 position;        // Ray position (origin)
        Vector3 direction;        // Ray direction (normalized)
    } Ray;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/n_patch_info.md),
[`ray_collision()`](https://raylibr.jeroenjanssens.com/reference/ray_collision.md),
[`raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/raylib_transform.md),
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
ray <- ray(c(0, 5, 0), c(0, 0, 0))
ray$position
#> x y z 
#> 0 5 0 
ray$direction
#> x y z 
#> 0 0 0 
```
