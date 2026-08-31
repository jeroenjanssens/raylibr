# Gen Mesh Heightmap

Generate heightmap mesh from image data.

## Usage

``` r
gen_mesh_heightmap(heightmap, size)
```

## Arguments

- heightmap:

  An image.

- size:

  A numeric vector of length 3.

## Value

A mesh

## Note

This function has been auto-generated from the following Raylib function
definition:

    Mesh GenMeshHeightmap(Image heightmap, Vector3 size);

## Examples

``` r
if (FALSE) { # \dontrun{
gen_mesh_heightmap(gen_image_color(100, 100, "blue"), c(1, 1, 1))
} # }
```
