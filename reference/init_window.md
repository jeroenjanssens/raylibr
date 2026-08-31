# Init Window

Initialize window and OpenGL context.

## Usage

``` r
init_window(width = 640L, height = 480L, title = "raylibr")
```

## Arguments

- width:

  An integer.

- height:

  An integer.

- title:

  A string.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void InitWindow(int width, int height, const char * title);

## See also

Other window functions:
[`close_window()`](https://jeroenjanssens.github.io/raylibr/reference/close_window.md),
[`maximize_window()`](https://jeroenjanssens.github.io/raylibr/reference/maximize_window.md),
[`minimize_window()`](https://jeroenjanssens.github.io/raylibr/reference/minimize_window.md),
[`restore_window()`](https://jeroenjanssens.github.io/raylibr/reference/restore_window.md)

Other init functions:
[`init_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/init_audio_device.md)

## Examples

``` r
if (FALSE) { # \dontrun{
init_window(800L, 450L, "My Window")
} # }
```
