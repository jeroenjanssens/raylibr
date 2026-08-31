# Set material texture

Set texture for a material map type. Modifies the material in place.

## Usage

``` r
set_material_texture(material, map_type, texture)
```

## Arguments

- material:

  A material.

- map_type:

  An integer. Material map type.

- texture:

  A texture.

## See also

Other material functions:
[`unload_material()`](https://jeroenjanssens.github.io/raylibr/reference/unload_material.md)

## Examples

``` r
if (FALSE) { # \dontrun{
mat <- load_material_default()
tex <- load_texture("texture.png")
set_material_texture(mat, material_map_index$albedo, tex)
} # }
```
