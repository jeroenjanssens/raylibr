# Get the path to a demo resource

The demos use textures, fonts, sounds, shaders and a 3D model that are
not part of the installed package, to keep it small. The first time a
resource is needed it is downloaded from the raylibr GitHub repository
into a cache directory (see
[`tools::R_user_dir()`](https://rdrr.io/r/tools/userdir.html)), and
later calls use the cached copy.

## Usage

``` r
raylibr_resource(name)
```

## Arguments

- name:

  Path of a resource relative to the resource directory, e.g.
  `"space.png"` or `"model/grayscale.fs"`. A directory such as
  `"beatbox-samples"` gives all resources in it.

## Value

The full path to the resource file or directory.

## Details

Resources are looked up in this order:

1.  The package's `demo_resources` directory, which the webR build
    includes.

2.  The directory in the `RAYLIBR_ASSETS` environment variable, if set,
    e.g. the `assets` directory of a raylibr checkout.

3.  The cache, downloading the resource first if needed.

## See also

Other Utility:
[`get_clipboard_image()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_image.md),
[`get_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/get_clipboard_text.md),
[`get_random_value()`](https://raylibr.jeroenjanssens.com/reference/get_random_value.md),
[`open_url()`](https://raylibr.jeroenjanssens.com/reference/open_url.md),
[`raylib_version()`](https://raylibr.jeroenjanssens.com/reference/raylib_version.md),
[`raylibr_screenshot()`](https://raylibr.jeroenjanssens.com/reference/raylibr_screenshot.md),
[`raylibr_screenshot_3d()`](https://raylibr.jeroenjanssens.com/reference/raylibr_screenshot_3d.md),
[`set_clipboard_text()`](https://raylibr.jeroenjanssens.com/reference/set_clipboard_text.md),
[`set_config_flags()`](https://raylibr.jeroenjanssens.com/reference/set_config_flags.md),
[`set_exit_key()`](https://raylibr.jeroenjanssens.com/reference/set_exit_key.md),
[`set_random_seed()`](https://raylibr.jeroenjanssens.com/reference/set_random_seed.md),
[`set_trace_log_level()`](https://raylibr.jeroenjanssens.com/reference/set_trace_log_level.md),
[`take_screenshot()`](https://raylibr.jeroenjanssens.com/reference/take_screenshot.md),
[`wait_time()`](https://raylibr.jeroenjanssens.com/reference/wait_time.md)

## Examples

``` r
if (FALSE) { # interactive()
texture_file <- raylibr_resource("space.png")
shader_dir <- raylibr_resource("model")
list.files(shader_dir)
}
```
