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
