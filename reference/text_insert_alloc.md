# Text Insert Alloc

Insert text in a defined byte position, memory must be MemFree().

## Usage

``` r
text_insert_alloc(text, insert, position)
```

## Arguments

- text:

  A string.

- insert:

  A string.

- position:

  An integer.

## Value

A string

## Note

This function has been auto-generated from the following Raylib function
definition:

    char * TextInsertAlloc(const char * text, const char * insert, int position);

## See also

Other alloc functions:
[`text_replace_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace_alloc.md),
[`text_replace_between_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace_between_alloc.md)
