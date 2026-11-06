# Get Touch Position

Get touch position XY for a touch point index (relative to screen size).

## Usage

``` r
get_touch_position(index)
```

## Arguments

- index:

  An integer.

## Value

A numeric vector of length 2

## Note

This function has been auto-generated from the following Raylib function
definition:

    Vector2 GetTouchPosition(int index);

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
[`get_touch_x()`](https://raylibr.jeroenjanssens.com/reference/get_touch_x.md),
[`get_touch_y()`](https://raylibr.jeroenjanssens.com/reference/get_touch_y.md),
[`is_gesture_detected()`](https://raylibr.jeroenjanssens.com/reference/is_gesture_detected.md),
[`set_gestures_enabled()`](https://raylibr.jeroenjanssens.com/reference/set_gestures_enabled.md)

## Examples

``` r
get_touch_position(0L)
#> x y 
#> 0 0 
```
