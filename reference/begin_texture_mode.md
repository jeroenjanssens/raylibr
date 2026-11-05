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

Other mode functions:
[`begin_blend_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_blend_mode.md),
[`begin_mode_2d()`](https://raylibr.jeroenjanssens.com/reference/begin_mode_2d.md),
[`begin_mode_3d()`](https://raylibr.jeroenjanssens.com/reference/begin_mode_3d.md),
[`begin_scissor_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_scissor_mode.md),
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`begin_vr_stereo_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_vr_stereo_mode.md),
[`end_blend_mode()`](https://raylibr.jeroenjanssens.com/reference/end_blend_mode.md),
[`end_mode_2d()`](https://raylibr.jeroenjanssens.com/reference/end_mode_2d.md),
[`end_mode_3d()`](https://raylibr.jeroenjanssens.com/reference/end_mode_3d.md),
[`end_scissor_mode()`](https://raylibr.jeroenjanssens.com/reference/end_scissor_mode.md),
[`end_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/end_shader_mode.md),
[`end_texture_mode()`](https://raylibr.jeroenjanssens.com/reference/end_texture_mode.md),
[`end_vr_stereo_mode()`](https://raylibr.jeroenjanssens.com/reference/end_vr_stereo_mode.md)

Other texture functions:
[`draw_texture()`](https://raylibr.jeroenjanssens.com/reference/draw_texture.md),
[`draw_texture_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_ex.md),
[`draw_texture_n_patch()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_n_patch.md),
[`draw_texture_pro()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_pro.md),
[`draw_texture_rec()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_rec.md),
[`draw_texture_v()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_v.md),
[`end_texture_mode()`](https://raylibr.jeroenjanssens.com/reference/end_texture_mode.md),
[`get_shapes_texture()`](https://raylibr.jeroenjanssens.com/reference/get_shapes_texture.md),
[`is_texture_valid()`](https://raylibr.jeroenjanssens.com/reference/is_texture_valid.md),
[`load_image_from_texture()`](https://raylibr.jeroenjanssens.com/reference/load_image_from_texture.md),
[`load_render_texture()`](https://raylibr.jeroenjanssens.com/reference/load_render_texture.md),
[`load_texture()`](https://raylibr.jeroenjanssens.com/reference/load_texture.md),
[`load_texture_from_image()`](https://raylibr.jeroenjanssens.com/reference/load_texture_from_image.md),
[`set_shader_value_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shader_value_texture.md),
[`set_shapes_texture()`](https://raylibr.jeroenjanssens.com/reference/set_shapes_texture.md),
[`set_texture_filter()`](https://raylibr.jeroenjanssens.com/reference/set_texture_filter.md),
[`set_texture_wrap()`](https://raylibr.jeroenjanssens.com/reference/set_texture_wrap.md),
[`texture()`](https://raylibr.jeroenjanssens.com/reference/texture.md),
[`unload_render_texture()`](https://raylibr.jeroenjanssens.com/reference/unload_render_texture.md),
[`unload_texture()`](https://raylibr.jeroenjanssens.com/reference/unload_texture.md)

Other begin functions:
[`begin_blend_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_blend_mode.md),
[`begin_drawing()`](https://raylibr.jeroenjanssens.com/reference/begin_drawing.md),
[`begin_mode_2d()`](https://raylibr.jeroenjanssens.com/reference/begin_mode_2d.md),
[`begin_mode_3d()`](https://raylibr.jeroenjanssens.com/reference/begin_mode_3d.md),
[`begin_scissor_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_scissor_mode.md),
[`begin_shader_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_shader_mode.md),
[`begin_vr_stereo_mode()`](https://raylibr.jeroenjanssens.com/reference/begin_vr_stereo_mode.md)

## Examples

``` r
if (FALSE) {
begin_texture_mode(load_render_texture(800, 450))
}
```
