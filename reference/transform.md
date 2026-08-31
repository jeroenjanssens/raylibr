# Transform

Create a new transform object.

## Usage

``` r
transform(translation, rotation, scale)
```

## Arguments

- translation:

  A numeric vector of length 3. Translation.

- rotation:

  A numeric vector of length 4. Rotation.

- scale:

  A numeric vector of length 3. Scale.

## Value

A transform

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
tra <- transform(c(0, 0, 0), c(0, 0, 0, 1), c(1, 1, 1))
tra$translation
#> x y z 
#> 0 0 0 
tra$rotation
#> x y z w 
#> 0 0 0 1 
```
