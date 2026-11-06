# Get Gamepad Name

Get gamepad internal name id.

## Usage

``` r
get_gamepad_name(gamepad)
```

## Arguments

- gamepad:

  An integer.

## Value

A string

## Note

This function has been auto-generated from the following Raylib function
definition:

    const char * GetGamepadName(int gamepad);

## See also

Other Input — Gamepad:
[`get_gamepad_axis_count()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_axis_count.md),
[`get_gamepad_axis_movement()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_axis_movement.md),
[`get_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_button_pressed.md),
[`is_gamepad_available()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_available.md),
[`is_gamepad_button_down()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_down.md),
[`is_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_pressed.md),
[`is_gamepad_button_released()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_released.md),
[`is_gamepad_button_up()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_up.md),
[`set_gamepad_mappings()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_mappings.md),
[`set_gamepad_vibration()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_vibration.md)

## Examples

``` r
get_gamepad_name(0L)
#> [1] ""
```
