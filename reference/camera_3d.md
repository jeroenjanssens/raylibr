# Camera 3d

Create a new camera_3d object.

## Usage

``` r
camera_3d(
  position,
  target = c(0, 0, 0),
  up = c(0, 1, 0),
  fovy = 70,
  projection = 0L
)
```

## Arguments

- position:

  A numeric vector of length 3. Camera position.

- target:

  A numeric vector of length 3. Camera target it looks-at.

- up:

  A numeric vector of length 3. Camera up vector (rotation over its
  axis).

- fovy:

  A number. Camera field-of-view aperture in Y (degrees) in perspective,
  used as near plane height in world units in orthographic.

- projection:

  An integer. Camera projection: CAMERA_PERSPECTIVE or
  CAMERA_ORTHOGRAPHIC.

## Value

A camera_3d

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct Camera3D {
        Vector3 position;        // Camera position
        Vector3 target;        // Camera target it looks-at
        Vector3 up;        // Camera up vector (rotation over its axis)
        float fovy;        // Camera field-of-view aperture in Y (degrees) in perspective, used as near plane height in world units in orthographic
        int projection;        // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
    } Camera3D;

## Examples

``` r
cam <- camera_3d(c(0, 5, 0))
cam$position
#> x y z 
#> 0 5 0 
cam$target
#> x y z 
#> 0 0 0 
```
