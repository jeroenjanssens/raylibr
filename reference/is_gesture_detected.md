# Is Gesture Detected

Check if a gesture have been detected.

## Usage

``` r
is_gesture_detected(gesture)
```

## Arguments

- gesture:

  A non-negative integer.

## Value

A logical

## Note

This function has been auto-generated from the following Raylib function
definition:

    bool IsGestureDetected(unsigned int gesture);

## See also

Other Input — Touch & gestures:
[`get_gesture_detected()`](https://raylibr.jeroenjanssens.com/reference/get_gesture_detected.md),
[`get_gesture_drag_angle()`](https://raylibr.jeroenjanssens.com/reference/get_gesture_drag_angle.md),
[`get_gesture_drag_vector()`](https://raylibr.jeroenjanssens.com/reference/get_gesture_drag_vector.md),
[`get_gesture_hold_duration()`](https://raylibr.jeroenjanssens.com/reference/get_gesture_hold_duration.md),
[`get_gesture_pinch_angle()`](https://raylibr.jeroenjanssens.com/reference/get_gesture_pinch_angle.md),
[`get_gesture_pinch_vector()`](https://raylibr.jeroenjanssens.com/reference/get_gesture_pinch_vector.md),
[`get_touch_point_count()`](https://raylibr.jeroenjanssens.com/reference/get_touch_point_count.md),
[`get_touch_point_id()`](https://raylibr.jeroenjanssens.com/reference/get_touch_point_id.md),
[`get_touch_position()`](https://raylibr.jeroenjanssens.com/reference/get_touch_position.md),
[`get_touch_x()`](https://raylibr.jeroenjanssens.com/reference/get_touch_x.md),
[`get_touch_y()`](https://raylibr.jeroenjanssens.com/reference/get_touch_y.md),
[`set_gestures_enabled()`](https://raylibr.jeroenjanssens.com/reference/set_gestures_enabled.md)

## Examples

``` r
is_gesture_detected(0L)
#> [1] TRUE
```
