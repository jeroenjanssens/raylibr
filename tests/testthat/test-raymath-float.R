library(raylibr)

test_that("float_clamp clamps values", {
  expect_equal(float_clamp(5, 0, 10), 5)
  expect_equal(float_clamp(-1, 0, 10), 0)
  expect_equal(float_clamp(15, 0, 10), 10)
})

test_that("float_lerp interpolates", {
  expect_equal(float_lerp(0, 10, 0), 0)
  expect_equal(float_lerp(0, 10, 1), 10)
  expect_equal(float_lerp(0, 10, 0.5), 5)
})

test_that("float_normalize normalizes a value", {
  expect_equal(float_normalize(5, 0, 10), 0.5)
  expect_equal(float_normalize(0, 0, 10), 0)
  expect_equal(float_normalize(10, 0, 10), 1)
})

test_that("float_remap remaps values", {
  expect_equal(float_remap(5, 0, 10, 0, 100), 50)
  expect_equal(float_remap(0, 0, 10, 100, 200), 100)
})

test_that("float_wrap wraps values", {
  expect_equal(float_wrap(3, 0, 2), 1, tolerance = 0.01)
  expect_equal(float_wrap(-1, 0, 2), 1, tolerance = 0.01)
  expect_equal(float_wrap(1, 0, 2), 1, tolerance = 0.01)
})

test_that("float_equals compares floats", {
  expect_equal(float_equals(1.0, 1.0), 1L)
  expect_equal(float_equals(1.0, 2.0), 0L)
})
