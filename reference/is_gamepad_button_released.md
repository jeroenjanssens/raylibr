# Is Gamepad Button Released

Check if a gamepad button has been released once.

## Usage

``` r
is_gamepad_button_released(gamepad, button)
```

## Arguments

- gamepad:

  An integer.

- button:

  An integer.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool IsGamepadButtonReleased(int gamepad, int button);

## See also

Other Input — Gamepad:
[`get_gamepad_axis_count()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_axis_count.md),
[`get_gamepad_axis_movement()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_axis_movement.md),
[`get_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_button_pressed.md),
[`get_gamepad_name()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_name.md),
[`is_gamepad_available()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_available.md),
[`is_gamepad_button_down()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_down.md),
[`is_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_pressed.md),
[`is_gamepad_button_up()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_up.md),
[`set_gamepad_mappings()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_mappings.md),
[`set_gamepad_vibration()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_vibration.md)

## Examples

``` r
is_gamepad_button_released(0L, 0L)
#> [1] FALSE
```
