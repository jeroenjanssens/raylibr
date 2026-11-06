# Raylib Transform

Create a new raylib_transform object.

## Usage

``` r
raylib_transform(translation, rotation, scale)
```

## Arguments

- translation:

  A numeric vector of length 3. Translation.

- rotation:

  A numeric vector of length 4. Rotation.

- scale:

  A numeric vector of length 3. Scale.

## Value

A raylib_transform

## Details

Raylib calls this struct `Transform`. In raylibr it is named
`raylib_transform()` (class `"raylib_transform"`) so that it doesn't
mask [`base::transform()`](https://rdrr.io/r/base/transform.html) or
clash with the `"transform"` objects from the scales package, which
ggplot2 uses for scale transformations.

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Transform {
        Vector3 translation;        // Translation
        Quaternion rotation;        // Rotation
        Vector3 scale;        // Scale
    } Transform;

## See also

Other Structs:
[`bounding_box()`](https://raylibr.jeroenjanssens.com/reference/bounding_box.md),
[`camera_2d()`](https://raylibr.jeroenjanssens.com/reference/camera_2d.md),
[`camera_3d()`](https://raylibr.jeroenjanssens.com/reference/camera_3d.md),
[`glyph_info()`](https://raylibr.jeroenjanssens.com/reference/glyph_info.md),
[`material_map()`](https://raylibr.jeroenjanssens.com/reference/material_map.md),
[`n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/n_patch_info.md),
[`ray()`](https://raylibr.jeroenjanssens.com/reference/ray.md),
[`ray_collision()`](https://raylibr.jeroenjanssens.com/reference/ray_collision.md),
[`rectangle()`](https://raylibr.jeroenjanssens.com/reference/rectangle.md),
[`render_texture()`](https://raylibr.jeroenjanssens.com/reference/render_texture.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md)

## Examples

``` r
ray <- raylib_transform(c(0, 0, 0), c(0, 0, 0, 1), c(1, 1, 1))
ray$translation
#> x y z 
#> 0 0 0 
ray$rotation
#> x y z w 
#> 0 0 0 1 
```
