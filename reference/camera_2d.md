# Camera 2d

Create a new camera_2d object.

## Usage

``` r
camera_2d(offset, target, rotation = 0, zoom = 1)
```

## Arguments

- offset:

  A numeric vector of length 2. Camera offset (screen space offset from
  window origin).

- target:

  A numeric vector of length 2. Camera target (world space target point
  that is mapped to screen space offset).

- rotation:

  A number. Camera rotation in degrees (pivots around target).

- zoom:

  A number. Camera zoom (scaling around target), must not be set to 0,
  set to 1.0f for no scale.

## Value

A camera_2d

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Camera2D {
        Vector2 offset;        // Camera offset (screen space offset from window origin)
        Vector2 target;        // Camera target (world space target point that is mapped to screen space offset)
        float rotation;        // Camera rotation in degrees (pivots around target)
        float zoom;        // Camera zoom (scaling around target), must not be set to 0, set to 1.0f for no scale
    } Camera2D;
