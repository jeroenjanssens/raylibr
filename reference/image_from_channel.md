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

## Examples

``` r
if (FALSE) { # \dontrun{
image_from_channel(gen_image_color(100, 100, "blue"), 0L)
} # }
```
