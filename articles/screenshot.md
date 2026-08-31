# Screenshot

You can use
[`raylibr_screenshot()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot.md)
to render a scene to an image. It creates a hidden 400x300 window, draws
on a black background, and returns the result. The image auto-displays
in knitr documents, just like ggplot2 plots.

``` r

library(raylibr)

raylibr_screenshot(function() {
  draw_circle(200L, 150L, 100.0, "yellow")
})
```

![raylibr image](file5bb06d4ec056.png)

raylibr image
