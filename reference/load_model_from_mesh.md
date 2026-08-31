# Load Model From Mesh

Load model from generated mesh (default material).

## Usage

``` r
load_model_from_mesh(mesh)
```

## Arguments

- mesh:

  A mesh.

## Value

A model

## Note

This function has been auto-generated from the following Raylib function
definition:

    Model LoadModelFromMesh(Mesh mesh);

## See also

Other mesh functions:
[`draw_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/draw_mesh.md),
[`export_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh.md),
[`export_mesh_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_mesh_as_code.md),
[`gen_mesh_cone()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cone.md),
[`gen_mesh_cube()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cube.md),
[`gen_mesh_cubicmap()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cubicmap.md),
[`gen_mesh_cylinder()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_cylinder.md),
[`gen_mesh_heightmap()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_heightmap.md),
[`gen_mesh_hemi_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_hemi_sphere.md),
[`gen_mesh_knot()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_knot.md),
[`gen_mesh_plane()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_plane.md),
[`gen_mesh_poly()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_poly.md),
[`gen_mesh_sphere()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_sphere.md),
[`gen_mesh_tangents()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_tangents.md),
[`gen_mesh_torus()`](https://jeroenjanssens.github.io/raylibr/reference/gen_mesh_torus.md),
[`get_mesh_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_mesh_bounding_box.md),
[`get_ray_collision_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/get_ray_collision_mesh.md),
[`unload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/unload_mesh.md),
[`upload_mesh()`](https://jeroenjanssens.github.io/raylibr/reference/upload_mesh.md)

Other model functions:
[`draw_model()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model.md),
[`draw_model_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_ex.md),
[`draw_model_wires()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires.md),
[`draw_model_wires_ex()`](https://jeroenjanssens.github.io/raylibr/reference/draw_model_wires_ex.md),
[`get_model_bounding_box()`](https://jeroenjanssens.github.io/raylibr/reference/get_model_bounding_box.md),
[`is_model_animation_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_model_animation_valid.md),
[`is_model_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_model_valid.md),
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`set_model_mesh_material()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_mesh_material.md),
[`set_model_texture()`](https://jeroenjanssens.github.io/raylibr/reference/set_model_texture.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md),
[`update_model_animation()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation.md),
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md)

Other load functions:
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`load_file_text()`](https://jeroenjanssens.github.io/raylibr/reference/load_file_text.md),
[`load_font()`](https://jeroenjanssens.github.io/raylibr/reference/load_font.md),
[`load_font_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_font_from_image.md),
[`load_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_image.md),
[`load_image_from_screen()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_screen.md),
[`load_image_from_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_from_texture.md),
[`load_image_raw()`](https://jeroenjanssens.github.io/raylibr/reference/load_image_raw.md),
[`load_material_default()`](https://jeroenjanssens.github.io/raylibr/reference/load_material_default.md),
[`load_model()`](https://jeroenjanssens.github.io/raylibr/reference/load_model.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`load_render_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_render_texture.md),
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`load_shader_from_memory()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader_from_memory.md),
[`load_sound()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound.md),
[`load_sound_alias()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_from_wave.md),
[`load_texture()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture.md),
[`load_texture_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/load_texture_from_image.md),
[`load_vr_stereo_config()`](https://jeroenjanssens.github.io/raylibr/reference/load_vr_stereo_config.md),
[`load_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_wave.md)

## Examples

``` r
if (FALSE) {
load_model_from_mesh(gen_mesh_cube(1.0, 1.0, 1.0))
}
```
