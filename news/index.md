# Changelog

## raylibr (development version)

- On Linux, installation now checks for the X11 and OpenGL development
  headers the bundled raylib needs, and if any are missing stops with a
  message listing them and the packages to install. `SystemRequirements`
  lists the libraries.

## raylibr 6.0.3

### Changes

- The demo assets (textures, fonts, sounds, shaders and the 3D model)
  are no longer installed with the package, which keeps it under CRAN’s
  size limit.
  [`raylibr_resource()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_resource.md)
  downloads them on first use into a cache directory
  (`tools::R_user_dir("raylibr", "cache")`), or reads them from the
  directory in the `RAYLIBR_ASSETS` environment variable. Passing a
  directory, such as `raylibr_resource("model")`, gives all files in it.

- Raylib’s log messages now go through R’s console, like
  [`message()`](https://rdrr.io/r/base/message.html), instead of being
  printed directly to the terminal, and only warnings and errors are
  shown by default. Use `set_trace_log_level(log_level$info)` to see all
  messages.

- Examples and the guides’ code only open a window in interactive
  sessions or when the environment variable `RAYLIBR_GL` is `"true"`, so
  R CMD check on a machine without a display no longer tries to. Many
  more examples of functions that need no window now run.

- The bundled raylib is rebuilt from the official 6.0 release without
  the parts raylibr doesn’t use, and is compiled with R’s compiler and
  flags. All bundled libraries and their authors are now credited in
  `DESCRIPTION` and `inst/COPYRIGHTS`.

### Bug fixes

- [`gen_image_checked()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_checked.md)
  now requires `checks_x` and `checks_y` to be positive. Zero crashed R
  with a floating point exception (integer division by zero) on Intel
  and AMD processors.

- Functions that need an open window (drawing, `begin_*()`/`end_*()`,
  loading textures, shaders, fonts and models, raygui controls, and
  rlgl) now stop with an error such as
  “[`draw_circle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle.md)
  needs an open window” instead of crashing R when no window is open.

- raygui now uses the font of the current window. It kept the font of
  the first window opened in a session, whose data is freed when that
  window closes, so raygui text could disappear, text measurements could
  return garbage, and R could crash after opening several windows.

- [`gui_scroll_panel()`](https://jeroenjanssens.github.io/raylibr/reference/gui_scroll_panel.md)
  now returns `view` as a rectangle, so `view$x` works and `view` can be
  passed back in on the next frame. It was a plain numeric vector with
  class `"raylibr_rectangle"`. `scroll` and `view` are now checked like
  the other arguments.

- [`is_color()`](https://jeroenjanssens.github.io/raylibr/reference/is_color.md)
  now returns `TRUE` or `FALSE` for every input. It raised an error for
  lists with `r`, `g`, `b` and `a`, returned `NA` for `NA` and unnamed
  lists, and accepted fractional and out-of-range numbers such as `42.5`
  and `2^32` as packed RGBA values.

- raylibr’s methods for its struct classes (`$`, `[[`,
  [`print()`](https://rdrr.io/r/base/print.html), and so on) now leave
  objects from other packages alone when they share a class name. For
  example, printing colorspace colors failed with “Incompatible color
  provided” while raylibr was loaded.

## raylibr 6.0.2

### Breaking changes

- [`transform()`](https://rdrr.io/r/base/transform.html) is now
  [`raylib_transform()`](https://jeroenjanssens.github.io/raylibr/reference/raylib_transform.md),
  its objects have class `"raylib_transform"`, and `is_transform()` is
  now
  [`is_raylib_transform()`](https://jeroenjanssens.github.io/raylibr/reference/is_raylib_transform.md).
  The old name masked
  [`base::transform()`](https://rdrr.io/r/base/transform.html) every
  time raylibr was attached, and the shared `"transform"` class made
  raylibr’s methods take over the `"transform"` objects from the scales
  package, which broke ggplot2 plots that use scale transformations such
  as `scale_x_log10()`. The Raylib struct itself is still called
  `Transform`.

- [`raylibr_screenshot()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot.md)
  and
  [`raylibr_screenshot_3d()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot_3d.md)
  now default to a 640x480 window (was 400x300).

### New features

- [`export_html()`](https://jeroenjanssens.github.io/raylibr/reference/export_html.md)
  turns a raylibr script into a standalone webR page that runs in the
  browser.

- New Tetris demo (`demo("tetris", package = "raylibr")`), also playable
  in the browser from the website.

### Improvements

- [`raylibr_screenshot()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot.md)
  and
  [`raylibr_screenshot_3d()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot_3d.md)
  capture at full pixel density on HiDPI displays, so images in R
  Markdown and on the website are sharp. In knitr output they are shown
  at their logical size, centered and without a caption.

- The User Guide snippets show only the relevant drawing code, and the
  Shaders guide has examples of several post-processing shaders.

### Bug fixes

- [`load_shader_from_memory()`](https://jeroenjanssens.github.io/raylibr/reference/load_shader_from_memory.md)
  with `""` for the vertex shader now uses Raylib’s default vertex
  shader instead of silently falling back to the default shader, and
  `load_shader("", ...)` no longer logs a file-open warning.

- In HiDPI windows, drawing inside
  [`begin_mode_2d()`](https://jeroenjanssens.github.io/raylibr/reference/begin_mode_2d.md)
  now uses the correct scale.

- Window flags set by
  [`set_config_flags()`](https://jeroenjanssens.github.io/raylibr/reference/set_config_flags.md)
  (for example by
  [`raylibr_screenshot()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot.md),
  which opens a hidden window) no longer carry over to windows opened
  later in the same session.

- raygui text no longer disappears in screenshots taken after the first
  one in a session.

- The Images & Textures guide examples rendered as black images because
  textures were unloaded before the frame was drawn.
