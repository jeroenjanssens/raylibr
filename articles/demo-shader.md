# Stars

A tiled starfield texture is warped by a GLSL wave distortion fragment
shader, with frequency, amplitude, and speed parameters passed from R
each frame via
[`set_shader_value()`](https://jeroenjanssens.github.io/raylibr/reference/set_shader_value.md).
The demo shows the full shader workflow:
[`load_shader()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader.md),
[`get_shader_location()`](https://jeroenjanssens.github.io/raylibr/reference/get_shader_location.md),
per-frame uniform updates,
[`begin_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/begin_shader_mode.md)
/
[`end_shader_mode()`](https://jeroenjanssens.github.io/raylibr/reference/end_shader_mode.md),
and accessing struct fields via `t$width` to tile the texture
seamlessly.

## Try it

A tiled starfield warped by a GLSL wave distortion shader. Just sit back
and watch.

## Run

``` r

demo("shader", package = "raylibr")
```

## Source code

``` r

library(raylibr)

init_window(800, 450, "R & Raylib: Stars")

t <- load_texture(file.path(system.file(package = "raylibr"), "demo_resources", "space.png"))
s <- load_shader("", file.path(system.file(package = "raylibr"), "demo_resources", "wave.fs"))

loc_seconds <- get_shader_location(s, "secondes")
loc_freq_x <- get_shader_location(s, "freqX")
loc_freq_y <- get_shader_location(s, "freqY")
loc_amp_x <- get_shader_location(s, "ampX")
loc_amp_y <- get_shader_location(s, "ampY")
loc_speed_x <- get_shader_location(s, "speedX")
loc_speed_y <- get_shader_location(s, "speedY")

freq_x <- 25
freq_y <- 25
amp_x <- 5
amp_y <- 5
speed_x <- 8
speed_y <- 8

screen_size <- c(get_screen_width(), get_screen_height())
l <- get_shader_location(s, "size")
set_shader_value(s, l, screen_size)
set_shader_value(s, loc_freq_x, freq_x)
set_shader_value(s, loc_freq_y, freq_y)
set_shader_value(s, loc_amp_x, amp_x)
set_shader_value(s, loc_amp_y, amp_y)
set_shader_value(s, loc_speed_x, speed_x)
set_shader_value(s, loc_speed_y, speed_y)

seconds <- 0
set_target_fps(60)

while (!window_should_close()) {
  seconds <- seconds + get_frame_time()
  set_shader_value(s, loc_seconds, seconds)

  begin_drawing()
  clear_background("white")
  begin_shader_mode(s)
  draw_texture(t, 0, 0, "white")
  draw_texture(t, t$width, 0, "white")
  end_shader_mode()
  end_drawing()
}

unload_shader(s)

close_window()
```
