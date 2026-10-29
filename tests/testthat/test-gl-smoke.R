library(raylibr)

# Smoke test: verify that raylibr_screenshot() actually renders pixels.
# Runs wherever GL is available (RAYLIBR_GL=true or local desktop).
test_that("raylibr_screenshot renders a red rectangle", {
  skip_if_no_gl()

  img <- raylibr_screenshot(function() {
    draw_rectangle(50L, 50L, 100L, 100L, "red")
  })

  expect_true(is_image(img))

  # Sample inside the rectangle; on HiDPI the image is captured at 2x
  px <- get_image_color(img, 120L, 120L)
  expect_equal(px$r, 255L)
  expect_equal(px$g,   0L)
  expect_equal(px$b,   0L)
})
