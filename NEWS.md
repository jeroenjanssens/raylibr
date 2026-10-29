# raylibr (development version)

## Breaking changes

* `transform()` is now `raylib_transform()`, its objects have class
  `"raylib_transform"`, and `is_transform()` is now `is_raylib_transform()`.
  The old name masked `base::transform()` every time raylibr was attached,
  and the shared `"transform"` class made raylibr's methods take over the
  `"transform"` objects from the scales package, which broke ggplot2 plots
  that use scale transformations such as `scale_x_log10()`. The Raylib
  struct itself is still called `Transform`.
