# Export Mesh As Code

Export mesh as code file (.h) defining multiple arrays of vertex
attributes.

## Usage

``` r
export_mesh_as_code(mesh, file_name)
```

## Arguments

- mesh:

  A mesh.

- file_name:

  A string.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool ExportMeshAsCode(Mesh mesh, const char * fileName);

## See also

Other code functions:
[`export_font_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_font_as_code.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`export_wave_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave_as_code.md)

Other export functions:
[`export_font_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_font_as_code.md),
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`export_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh.md),
[`export_wave()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave.md),
[`export_wave_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave_as_code.md)

## Examples

``` r
if (FALSE) { # \dontrun{
export_mesh_as_code(gen_mesh_cube(1.0, 1.0, 1.0), "file.png")
} # }
```
