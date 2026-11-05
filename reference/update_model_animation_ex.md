# Update Model Animation Ex

Update model animation pose, blending two animations.

## Usage

``` r
update_model_animation_ex(model, anim_a, frame_a, anim_b, frame_b, blend)
```

## Arguments

- model:

  A model.

- anim_a:

  A model_animation.

- frame_a:

  A number.

- anim_b:

  A model_animation.

- frame_b:

  A number.

- blend:

  A number.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UpdateModelAnimationEx(Model model, ModelAnimation animA, float frameA, ModelAnimation animB, float frameB, float blend);

## See also

Other ex functions:
[`draw_cylinder_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_ex.md),
[`draw_cylinder_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_cylinder_wires_ex.md),
[`draw_line_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_line_ex.md),
[`draw_model_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_ex.md),
[`draw_model_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires_ex.md),
[`draw_poly_lines_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_poly_lines_ex.md),
[`draw_rectangle_gradient_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_rectangle_gradient_ex.md),
[`draw_rectangle_lines_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_rectangle_lines_ex.md),
[`draw_rectangle_rounded_lines_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_rectangle_rounded_lines_ex.md),
[`draw_sphere_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_sphere_ex.md),
[`draw_text_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_text_ex.md),
[`draw_texture_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_texture_ex.md),
[`get_directory_file_count_ex()`](https://raylibr.jeroenjanssens.com/reference/get_directory_file_count_ex.md),
[`get_screen_to_world_ray_ex()`](https://raylibr.jeroenjanssens.com/reference/get_screen_to_world_ray_ex.md),
[`get_world_to_screen_ex()`](https://raylibr.jeroenjanssens.com/reference/get_world_to_screen_ex.md),
[`image_text_ex()`](https://raylibr.jeroenjanssens.com/reference/image_text_ex.md),
[`measure_text_ex()`](https://raylibr.jeroenjanssens.com/reference/measure_text_ex.md)

Other model functions:
[`draw_model()`](https://raylibr.jeroenjanssens.com/reference/draw_model.md),
[`draw_model_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_ex.md),
[`draw_model_wires()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires.md),
[`draw_model_wires_ex()`](https://raylibr.jeroenjanssens.com/reference/draw_model_wires_ex.md),
[`get_model_bounding_box()`](https://raylibr.jeroenjanssens.com/reference/get_model_bounding_box.md),
[`is_model_animation_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://raylibr.jeroenjanssens.com/reference/is_model_valid.md),
[`load_model()`](https://raylibr.jeroenjanssens.com/reference/load_model.md),
[`load_model_from_mesh()`](https://raylibr.jeroenjanssens.com/reference/load_model_from_mesh.md),
[`set_model_mesh_material()`](https://raylibr.jeroenjanssens.com/reference/set_model_mesh_material.md),
[`set_model_texture()`](https://raylibr.jeroenjanssens.com/reference/set_model_texture.md),
[`unload_model()`](https://raylibr.jeroenjanssens.com/reference/unload_model.md),
[`update_model_animation()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation.md)

Other update functions:
[`update_model_animation()`](https://raylibr.jeroenjanssens.com/reference/update_model_animation.md),
[`update_music_stream()`](https://raylibr.jeroenjanssens.com/reference/update_music_stream.md)

## Examples

``` r
if (FALSE) {
update_model_animation_ex(load_model("model.obj"), anim, 0.0, anim, 0.0, 0.0)
}
```
