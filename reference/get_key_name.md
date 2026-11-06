# Get Key Name

Get name of a QWERTY key on the current keyboard layout (eg returns
string 'q' for KEY_A on an AZERTY keyboard).

## Usage

``` r
get_key_name(key)
```

## Arguments

- key:

  An integer.

## Value

A string

## Note

This function has been auto-generated from the following Raylib function
definition:

    const char * GetKeyName(int key);

## See also

Other Input — Keyboard:
[`get_char_pressed()`](https://raylibr.jeroenjanssens.com/reference/get_char_pressed.md),
[`get_key_pressed()`](https://raylibr.jeroenjanssens.com/reference/get_key_pressed.md),
[`is_key_down()`](https://raylibr.jeroenjanssens.com/reference/is_key_down.md),
[`is_key_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_key_pressed.md),
[`is_key_pressed_repeat()`](https://raylibr.jeroenjanssens.com/reference/is_key_pressed_repeat.md),
[`is_key_released()`](https://raylibr.jeroenjanssens.com/reference/is_key_released.md),
[`is_key_up()`](https://raylibr.jeroenjanssens.com/reference/is_key_up.md)

## Examples

``` r
get_key_name(0L)
#> NULL
```
