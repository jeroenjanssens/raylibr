library(raylibr)

test_that("vector4_zero and vector4_one", {
  z <- vector4_zero()
  expect_equal(unname(z), c(0, 0, 0, 0))
  o <- vector4_one()
  expect_equal(unname(o), c(1, 1, 1, 1))
})

test_that("vector4 arithmetic", {
  a <- c(1, 2, 3, 4)
  b <- c(5, 6, 7, 8)
  expect_equal(unname(vector4_add(a, b)), c(6, 8, 10, 12))
  expect_equal(unname(vector4_subtract(a, b)), c(-4, -4, -4, -4))
  expect_equal(unname(vector4_scale(a, 2)), c(2, 4, 6, 8))
  expect_equal(unname(vector4_multiply(a, b)), c(5, 12, 21, 32))
  expect_equal(unname(vector4_negate(a)), c(-1, -2, -3, -4))
})

test_that("vector4_length", {
  expect_equal(vector4_length(c(0, 0, 3, 4)), 5)
  expect_equal(vector4_length_sqr(c(0, 0, 3, 4)), 25)
})

test_that("vector4_normalize", {
  n <- vector4_normalize(c(1, 2, 3, 4))
  expect_equal(vector4_length(n), 1, tolerance = 0.001)
})

test_that("vector4_lerp", {
  r <- vector4_lerp(c(0, 0, 0, 0), c(10, 20, 30, 40), 0.5)
  expect_equal(unname(r), c(5, 10, 15, 20))
})

test_that("vector4_min and vector4_max", {
  expect_equal(unname(vector4_min(c(1, 5, 3, 7), c(3, 2, 4, 6))), c(1, 2, 3, 6))
  expect_equal(unname(vector4_max(c(1, 5, 3, 7), c(3, 2, 4, 6))), c(3, 5, 4, 7))
})

test_that("vector4_equals", {
  expect_equal(vector4_equals(c(1, 2, 3, 4), c(1, 2, 3, 4)), 1L)
  expect_equal(vector4_equals(c(1, 2, 3, 4), c(5, 6, 7, 8)), 0L)
})

test_that("vector4_invert", {
  r <- vector4_invert(c(2, 4, 5, 10))
  expect_equal(unname(r), c(0.5, 0.25, 0.2, 0.1))
})

test_that("vector4_move_towards", {
  r <- vector4_move_towards(c(0, 0, 0, 0), c(10, 0, 0, 0), 3)
  expect_equal(unname(r)[1], 3, tolerance = 0.001)
})
