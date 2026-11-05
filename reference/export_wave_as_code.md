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
[`export_font_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_font_as_code.md),
[`export_image_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_image_as_code.md),
[`export_mesh_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_mesh_as_code.md)

Other wave functions:
[`export_wave()`](https://raylibr.jeroenjanssens.com/reference/export_wave.md),
[`is_wave_valid()`](https://raylibr.jeroenjanssens.com/reference/is_wave_valid.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md),
[`unload_wave()`](https://raylibr.jeroenjanssens.com/reference/unload_wave.md),
[`wave_crop()`](https://raylibr.jeroenjanssens.com/reference/wave_crop.md),
[`wave_format()`](https://raylibr.jeroenjanssens.com/reference/wave_format.md)

Other export functions:
[`export_font_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_font_as_code.md),
[`export_image()`](https://raylibr.jeroenjanssens.com/reference/export_image.md),
[`export_image_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_image_as_code.md),
[`export_mesh()`](https://raylibr.jeroenjanssens.com/reference/export_mesh.md),
[`export_mesh_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_mesh_as_code.md),
[`export_wave()`](https://raylibr.jeroenjanssens.com/reference/export_wave.md)

## Examples

``` r
if (FALSE) {
export_wave_as_code(load_wave("sound.wav"), "file.png")
}
```
