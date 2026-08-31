# Text Replace Between Alloc

Replace text between two specific strings, memory must be MemFree().

## Usage

``` r
text_replace_between_alloc(text, begin, end, replacement)
```

## Arguments

- text:

  A string.

- begin:

  A string.

- end:

  A string.

- replacement:

  A string.

## Value

A string

## Note

This function has been auto-generated from the following Raylib function
definition:

    char * TextReplaceBetweenAlloc(const char * text, const char * begin, const char * end, const char * replacement);

## See also

Other alloc functions:
[`text_insert_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_insert_alloc.md),
[`text_replace_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace_alloc.md)

## Examples

``` r
if (FALSE) { # \dontrun{
text_replace_between_alloc("Hello", "text", "text", "text")
} # }
```
