# Glyph Info

Create a new glyph_info object.

## Usage

``` r
glyph_info(value, offset_x, offset_y, advance_x, image)
```

## Arguments

- value:

  An integer. Character value (Unicode).

- offset_x:

  An integer. Character offset X when drawing.

- offset_y:

  An integer. Character offset Y when drawing.

- advance_x:

  An integer. Character advance position X.

- image:

  An image. Character image data.

## Value

A glyph_info

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct GlyphInfo {
        int value;        // Character value (Unicode)
        int offsetX;        // Character offset X when drawing
        int offsetY;        // Character offset Y when drawing
        int advanceX;        // Character advance position X
        Image image;        // Character image data
    } GlyphInfo;
