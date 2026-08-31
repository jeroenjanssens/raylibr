# n Patch Info

Create a new n_patch_info object.

## Usage

``` r
n_patch_info(source, left, top, right, bottom, layout)
```

## Arguments

- source:

  A rectangle. Texture source rectangle.

- left:

  An integer. Left border offset.

- top:

  An integer. Top border offset.

- right:

  An integer. Right border offset.

- bottom:

  An integer. Bottom border offset.

- layout:

  An integer. Layout of the n-patch: 3x3, 1x3 or 3x1.

## Value

A n_patch_info

## Note

This class has been auto-generated from the following Raylib struct
definition:

    typedef struct NPatchInfo {
        Rectangle source;        // Texture source rectangle
        int left;        // Left border offset
        int top;        // Top border offset
        int right;        // Right border offset
        int bottom;        // Bottom border offset
        int layout;        // Layout of the n-patch: 3x3, 1x3 or 3x1
    } NPatchInfo;

## Examples

``` r
if (FALSE) { # \dontrun{
n_p <- n_patch_info(rectangle(10, 10, 200, 100), 0L, 0L, 0L, 0L, 0L)
n_p$source
n_p$left
} # }
```
