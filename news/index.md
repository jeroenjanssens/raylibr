# Changelog

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
