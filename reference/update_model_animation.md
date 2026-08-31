# Update Model Animation

Update model animation pose (vertex buffers and bone matrices).

## Usage

``` r
update_model_animation(model, anim, frame)
```

## Arguments

- model:

  A model.

- anim:

  A model_animation.

- frame:

  A number.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void UpdateModelAnimation(Model model, ModelAnimation anim, float frame);

## See also

Other update functions:
[`update_model_animation_ex()`](https://jeroenjanssens.github.io/raylibr/reference/update_model_animation_ex.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

## Examples

``` r
if (FALSE) { # \dontrun{
update_model_animation(load_model("model.obj"), anim, 0.0)
} # }
```
