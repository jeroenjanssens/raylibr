# Test if object is a camera_2d

Test if object is a camera_2d

## Usage

``` r
is_camera_2d(x)
```

## Arguments

- x:

  An object to test.

## Value

A logical.

## See also

Other Type checking:
[`is_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/is_audio_stream.md),
[`is_bone_info()`](https://raylibr.jeroenjanssens.com/reference/is_bone_info.md),
[`is_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/is_bounding_box.md),
[`is_camera_3d()`](https://raylibr.jeroenjanssens.com/reference/is_camera_3d.md),
[`is_color()`](https://raylibr.jeroenjanssens.com/reference/is_color.md),
[`is_font()`](https://raylibr.jeroenjanssens.com/reference/is_font.md),
[`is_glyph_info()`](https://raylibr.jeroenjanssens.com/reference/is_glyph_info.md),
[`is_image()`](https://raylibr.jeroenjanssens.com/reference/is_image.md),
[`is_material()`](https://raylibr.jeroenjanssens.com/reference/is_material.md),
[`is_material_map()`](https://raylibr.jeroenjanssens.com/reference/is_material_map.md),
[`is_mesh()`](https://raylibr.jeroenjanssens.com/reference/is_mesh.md),
[`is_model()`](https://raylibr.jeroenjanssens.com/reference/is_model.md),
[`is_model_animation()`](https://raylibr.jeroenjanssens.com/reference/is_model_animation.md),
[`is_music()`](https://raylibr.jeroenjanssens.com/reference/is_music.md),
[`is_n_patch_info()`](https://raylibr.jeroenjanssens.com/reference/is_n_patch_info.md),
[`is_ray()`](https://raylibr.jeroenjanssens.com/reference/is_ray.md),
[`is_ray_collision()`](https://raylibr.jeroenjanssens.com/reference/is_ray_collision.md),
[`is_raylib_matrix()`](https://raylibr.jeroenjanssens.com/reference/is_raylib_matrix.md),
[`is_raylib_transform()`](https://raylibr.jeroenjanssens.com/reference/is_raylib_transform.md),
[`is_rectangle()`](https://raylibr.jeroenjanssens.com/reference/is_rectangle.md),
[`is_render_texture()`](https://raylibr.jeroenjanssens.com/reference/is_render_texture.md),
[`is_shader()`](https://raylibr.jeroenjanssens.com/reference/is_shader.md),
[`is_sound()`](https://raylibr.jeroenjanssens.com/reference/is_sound.md),
[`is_texture()`](https://raylibr.jeroenjanssens.com/reference/is_texture.md),
[`is_vector_2()`](https://raylibr.jeroenjanssens.com/reference/is_vector_2.md),
[`is_vector_3()`](https://raylibr.jeroenjanssens.com/reference/is_vector_3.md),
[`is_vector_4()`](https://raylibr.jeroenjanssens.com/reference/is_vector_4.md),
[`is_vr_device_info()`](https://raylibr.jeroenjanssens.com/reference/is_vr_device_info.md),
[`is_vr_stereo_config()`](https://raylibr.jeroenjanssens.com/reference/is_vr_stereo_config.md),
[`is_wave()`](https://raylibr.jeroenjanssens.com/reference/is_wave.md)

## Examples

``` r
is_camera_2d("not a camera_2d")
#> [1] FALSE
```
