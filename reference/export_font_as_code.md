# Export Font As Code

Export font as code file, returns true on success.

## Usage

``` r
export_font_as_code(font, file_name)
```

## Arguments

- font:

  A font.

- file_name:

  A string.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool ExportFontAsCode(Font font, const char * fileName);

## See also

Other code functions:
[`export_image_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_image_as_code.md),
[`export_mesh_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_mesh_as_code.md),
[`export_wave_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_wave_as_code.md)

Other font functions:
[`get_font_default()`](https://raylibr.jeroenjanssens.com/reference/get_font_default.md),
[`is_font_valid()`](https://raylibr.jeroenjanssens.com/reference/is_font_valid.md),
[`load_font()`](https://raylibr.jeroenjanssens.com/reference/load_font.md),
[`load_font_ex()`](https://raylibr.jeroenjanssens.com/reference/load_font_ex.md),
[`load_font_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_font_from_image.md),
[`unload_font()`](https://raylibr.jeroenjanssens.com/reference/unload_font.md)

Other export functions:
[`export_image()`](https://raylibr.jeroenjanssens.com/reference/export_image.md),
[`export_image_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_image_as_code.md),
[`export_mesh()`](https://raylibr.jeroenjanssens.com/reference/export_mesh.md),
[`export_mesh_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_mesh_as_code.md),
[`export_wave()`](https://raylibr.jeroenjanssens.com/reference/export_wave.md),
[`export_wave_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_wave_as_code.md)

## Examples

``` r
if (FALSE) {
export_font_as_code(get_font_default(), "file.png")
}
```
