# Gen Mesh Cubicmap

Generate cubes-based map mesh from image data.

## Usage

``` r
gen_mesh_cubicmap(cubicmap, cube_size)
```

## Arguments

- cubicmap:

  An image.

- cube_size:

  A numeric vector of length 3.

## Value

A mesh

## Note

This function has been auto-generated from the following Raylib function
definition:

    Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);

## Examples

``` r
if (FALSE) { # \dontrun{
gen_mesh_cubicmap(gen_image_color(100, 100, "blue"), c(1, 1, 1))
} # }
```
