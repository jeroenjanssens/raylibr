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

Other ray functions:
[`draw_ray()`](https://jeroenjanssens.github.io/raylibr/reference/draw_ray.md),
[`get_screen_to_world_ray()`](https://jeroenjanssens.github.io/raylibr/reference/get_screen_to_world_ray.md)
