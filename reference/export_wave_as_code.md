# Export Wave As Code

Export wave sample data to code (.h), returns true on success.

## Usage

``` r
export_wave_as_code(wave, file_name)
```

## Arguments

- wave:

  A wave.

- file_name:

  A string.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool ExportWaveAsCode(Wave wave, const char * fileName);

## See also

Other code functions:
[`export_font_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_font_as_code.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`export_mesh_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh_as_code.md)

Other export functions:
[`export_font_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_font_as_code.md),
[`export_image()`](https://jeroenjanssens.github.io/raylibr/reference/export_image.md),
[`export_image_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_image_as_code.md),
[`export_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh.md),
[`export_mesh_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh_as_code.md),
[`export_wave()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave.md)

## Examples

``` r
if (FALSE) { # \dontrun{
export_wave_as_code(load_wave("sound.wav"), "file.png")
} # }
```
