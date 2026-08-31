# Image From Channel

Create an image from a selected channel of another image (GRAYSCALE).

## Usage

``` r
image_from_channel(image, selected_channel)
```

## Arguments

- image:

  An image.

- selected_channel:

  An integer.

## Value

An image

## Note

This function has been auto-generated from the following Raylib function
definition:

    Image ImageFromChannel(Image image, int selectedChannel);

## See also

Other from functions:
[`color_from_hsv()`](https://jeroenjanssens.github.io/raylibr/reference/color_from_hsv.md),
[`color_from_normalized()`](https://jeroenjanssens.github.io/raylibr/reference/color_from_normalized.md),
[`image_from_image()`](https://jeroenjanssens.github.io/raylibr/reference/image_from_image.md)

## Examples

``` r
if (FALSE) {
image_from_channel(gen_image_color(100, 100, "blue"), 0L)
}
```
