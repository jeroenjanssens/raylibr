# Gen Mesh Plane

Generate plane mesh (with subdivisions).

## Usage

``` r
gen_mesh_plane(width, length, res_x, res_z)
```

## Arguments

- width:

  A number.

- length:

  A number.

- res_x:

  An integer.

- res_z:

  An integer.

## Value

A mesh

## Note

This function has been auto-generated from the following Raylib function
definition:

    Mesh GenMeshPlane(float width, float length, int resX, int resZ);

## See also

Other plane functions:
[`draw_plane()`](https://jeroenjanssens.github.io/raylibr/reference/draw_plane.md)

## Examples

``` r
if (FALSE) { # \dontrun{
gen_mesh_plane(200.0, 100.0, 0L, 0L)
} # }
```
