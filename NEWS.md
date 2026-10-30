# raylibr (development version)

## Bug fixes

* Functions that need an open window (drawing, `begin_*()`/`end_*()`,
  loading textures, shaders, fonts and models, raygui controls, and rlgl)
  now stop with an error such as "`draw_circle()` needs an open window"
  instead of crashing R when no window is open.

# raylibr 6.0.2

## Breaking changes

* `transform()` is now `raylib_transform()`, its objects have class
  `"raylib_transform"`, and `is_transform()` is now `is_raylib_transform()`.
  The old name masked `base::transform()` every time raylibr was attached,
  and the shared `"transform"` class made raylibr's methods take over the
  `"transform"` objects from the scales package, which broke ggplot2 plots
  that use scale transformations such as `scale_x_log10()`. The Raylib
  struct itself is still called `Transform`.

* `raylibr_screenshot()` and `raylibr_screenshot_3d()` now default to a
  640x480 window (was 400x300).

## New features

* `export_html()` turns a raylibr script into a standalone webR page that
  runs in the browser.

* New Tetris demo (`demo("tetris", package = "raylibr")`), also playable in
  the browser from the website.

## Improvements

* `raylibr_screenshot()` and `raylibr_screenshot_3d()` capture at full pixel
  density on HiDPI displays, so images in R Markdown and on the website are
  sharp. In knitr output they are shown at their logical size, centered and
  without a caption.

* The User Guide snippets show only the relevant drawing code, and the
  Shaders guide has examples of several post-processing shaders.

## Bug fixes

* `load_shader_from_memory()` with `""` for the vertex shader now uses
  Raylib's default vertex shader instead of silently falling back to the
  default shader, and `load_shader("", ...)` no longer logs a file-open
  warning.

* In HiDPI windows, drawing inside `begin_mode_2d()` now uses the correct
  scale.

* Window flags set by `set_config_flags()` (for example by
  `raylibr_screenshot()`, which opens a hidden window) no longer carry over
  to windows opened later in the same session.

* raygui text no longer disappears in screenshots taken after the first one
  in a session.

* The Images & Textures guide examples rendered as black images because
  textures were unloaded before the frame was drawn.
