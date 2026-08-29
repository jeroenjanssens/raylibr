library(raylibr)

test_that("color_is_equal returns TRUE for identical colors", {
  expect_true(color_is_equal(color(255, 0, 0, 255), color(255, 0, 0, 255)))
})

test_that("color_is_equal returns FALSE for different colors", {
  expect_false(color_is_equal(color(255, 0, 0, 255), color(0, 255, 0, 255)))
  expect_false(color_is_equal(color(255, 0, 0, 255), color(255, 0, 0, 0)))
})

test_that("color_to_hsv returns a numeric vector of length 3", {
  hsv <- color_to_hsv(color(255, 0, 0, 255))
  expect_length(hsv, 3)
  expect_true(is.numeric(hsv))
  expect_equal(unname(hsv[1]), 0, tolerance = 0.01)   # red hue = 0
  expect_equal(unname(hsv[2]), 1, tolerance = 0.01)   # full saturation
  expect_equal(unname(hsv[3]), 1, tolerance = 0.01)   # full value
})

test_that("color_from_hsv returns a color object", {
  red <- color_from_hsv(0, 1, 1)
  expect_true(is_color(red))
  expect_equal(red$r, 255)
  expect_equal(red$g, 0)
  expect_equal(red$b, 0)
})

test_that("color_from_normalized converts normalized values to color", {
  red <- color_from_normalized(c(1, 0, 0, 1))
  expect_true(is_color(red))
  expect_equal(red$r, 255)
  expect_equal(red$g, 0)
  expect_equal(red$b, 0)
  expect_equal(red$a, 255)
})

test_that("color_brightness adjusts brightness", {
  gray <- color(128, 128, 128, 255)
  brighter <- color_brightness(gray, 0.5)
  expect_true(is_color(brighter))
  expect_true(brighter$r > gray$r)
})

test_that("color_contrast adjusts contrast", {
  gray <- color(128, 128, 128, 255)
  result <- color_contrast(gray, 0.5)
  expect_true(is_color(result))
})

test_that("color_lerp interpolates between two colors", {
  black <- color(0, 0, 0, 255)
  white <- color(255, 255, 255, 255)
  mid <- color_lerp(black, white, 0.5)
  expect_true(is_color(mid))
  expect_true(mid$r > 100 && mid$r < 200)
  expect_true(mid$g > 100 && mid$g < 200)
  expect_true(mid$b > 100 && mid$b < 200)
})

test_that("color_lerp at 0 returns first color", {
  black <- color(0, 0, 0, 255)
  white <- color(255, 255, 255, 255)
  result <- color_lerp(black, white, 0)
  expect_equal(result$r, black$r)
  expect_equal(result$g, black$g)
  expect_equal(result$b, black$b)
})

test_that("color_lerp at 1 returns second color", {
  black <- color(0, 0, 0, 255)
  white <- color(255, 255, 255, 255)
  result <- color_lerp(black, white, 1)
  expect_equal(result$r, white$r)
  expect_equal(result$g, white$g)
  expect_equal(result$b, white$b)
})
