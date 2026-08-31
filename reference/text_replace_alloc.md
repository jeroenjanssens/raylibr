# Text Replace Alloc

Replace text string with new string, memory must be MemFree().

## Usage

``` r
text_replace_alloc(text, search, replacement)
```

## Arguments

- text:

  A string.

- search:

  A string.

- replacement:

  A string.

## Value

A string

## Note

This function has been auto-generated from the following Raylib function
definition:

    char * TextReplaceAlloc(const char * text, const char * search, const char * replacement);

## See also

Other alloc functions:
[`text_insert_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_insert_alloc.md),
[`text_replace_between_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace_between_alloc.md)

Other replace functions:
[`file_text_replace()`](https://jeroenjanssens.github.io/raylibr/reference/file_text_replace.md),
[`text_replace()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace.md),
[`text_replace_between()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace_between.md),
[`text_replace_between_alloc()`](https://jeroenjanssens.github.io/raylibr/reference/text_replace_between_alloc.md)

## Examples

``` r
if (FALSE) {
text_replace_alloc("Hello", "text", "text")
}
```
