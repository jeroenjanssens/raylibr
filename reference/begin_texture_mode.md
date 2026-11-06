# Begin Texture Mode

Begin drawing to render texture.

## Usage

``` r
begin_texture_mode(target)
```

## Arguments

- target:

  A render texture.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void BeginTextureMode(RenderTexture2D target);

## See also

Other Rendering modes:
[`begin_blend_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_blend_mode.md),
[`begin_scissor_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_scissor_mode.md),
[`begin_vr_stereo_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_vr_stereo_mode.md),
[`end_blend_mode()`](https://raylibr.jeroenjanssens.com/reference/end_blend_mode.md),
[`end_scissor_mode()`](https://raylibr.jeroenjanssens.com/reference/end_scissor_mode.md),
[`end_texture_mode()`](https://raylibr.jeroenjanssens.com/reference/end_texture_mode.md),
[`end_vr_stereo_mode()`](https://raylibr.jeroenjanssens.com/reference/end_vr_stereo_mode.md),
[`load_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/load_vr_stereo_config.md),
[`unload_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/unload_vr_stereo_config.md)

## Examples

``` r
if (FALSE) {
begin_texture_mode(load_render_texture(800, 450))
}
```
