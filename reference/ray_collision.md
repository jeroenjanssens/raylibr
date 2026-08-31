# Ray Collision

Create a new ray_collision object.

## Usage

``` r
ray_collision(hit, distance, point, normal)
```

## Arguments

- hit:

  A logical. Did the ray hit something?.

- distance:

  A number. Distance to the nearest hit.

- point:

  A numeric vector of length 3. Point of the nearest hit.

- normal:

  A numeric vector of length 3. Surface normal of hit.

## Value

A ray_collision

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct RayCollision {
        bool hit;        // Did the ray hit something?
        float distance;        // Distance to the nearest hit
        Vector3 point;        // Point of the nearest hit
        Vector3 normal;        // Surface normal of hit
    } RayCollision;

## Examples

``` r
ray <- ray_collision(TRUE, 1.0, c(0, 0, 0), c(0, 0, 0))
ray$hit
#> [1] TRUE
ray$distance
#> [1] 1
```
