# Set Gamepad Vibration

Set gamepad vibration for both motors (duration in seconds).

## Usage

``` r
set_gamepad_vibration(gamepad, left_motor, right_motor, duration)
```

## Arguments

- gamepad:

  An integer.

- left_motor:

  A number.

- right_motor:

  A number.

- duration:

  A number.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void SetGamepadVibration(int gamepad, float leftMotor, float rightMotor, float duration);

## See also

Other Input — Gamepad:
[`get_gamepad_axis_count()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_axis_count.md),
[`get_gamepad_axis_movement()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_axis_movement.md),
[`get_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_button_pressed.md),
[`get_gamepad_name()`](https://raylibr.jeroenjanssens.com/reference/get_gamepad_name.md),
[`is_gamepad_available()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_available.md),
[`is_gamepad_button_down()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_down.md),
[`is_gamepad_button_pressed()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_pressed.md),
[`is_gamepad_button_released()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_released.md),
[`is_gamepad_button_up()`](https://raylibr.jeroenjanssens.com/reference/is_gamepad_button_up.md),
[`set_gamepad_mappings()`](https://raylibr.jeroenjanssens.com/reference/set_gamepad_mappings.md)

## Examples

``` r
if (FALSE) {
set_gamepad_vibration(0L, 0.0, 0.0, 0.0)
}
```
