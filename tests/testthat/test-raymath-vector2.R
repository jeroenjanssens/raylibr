library(raylibr)

test_that("vector2_zero and vector2_one", {
  z <- vector2_zero()
  expect_equal(unname(z), c(0, 0))
  o <- vector2_one()
  expect_equal(unname(o), c(1, 1))
})

test_that("vector2 arithmetic", {
  a <- c(1, 2)
  b <- c(3, 4)
  expect_equal(unname(vector2_add(a, b)), c(4, 6))
  expect_equal(unname(vector2_subtract(a, b)), c(-2, -2))
  expect_equal(unname(vector2_add_value(a, 10)), c(11, 12))
  expect_equal(unname(vector2_subtract_value(b, 1)), c(2, 3))
  expect_equal(unname(vector2_scale(a, 3)), c(3, 6))
  expect_equal(unname(vector2_multiply(a, b)), c(3, 8))
  expect_equal(unname(vector2_divide(b, a)), c(3, 2))
  expect_equal(unname(vector2_negate(a)), c(-1, -2))
})

test_that("vector2 length and distance", {
  expect_equal(vector2_length(c(3, 4)), 5)
  expect_equal(vector2_length_sqr(c(3, 4)), 25)
  expect_equal(vector2_distance(c(0, 0), c(3, 4)), 5)
  expect_equal(vector2_distance_sqr(c(0, 0), c(3, 4)), 25)
})

test_that("vector2 dot and cross product", {
  expect_equal(vector2_dot_product(c(1, 0), c(0, 1)), 0)
  expect_equal(vector2_dot_product(c(1, 0), c(1, 0)), 1)
  expect_equal(vector2_cross_product(c(1, 0), c(0, 1)), 1)
})

test_that("vector2_normalize", {
  n <- vector2_normalize(c(3, 4))
  expect_equal(vector2_length(n), 1, tolerance = 0.001)
})

test_that("vector2_lerp", {
  r <- vector2_lerp(c(0, 0), c(10, 10), 0.5)
  expect_equal(unname(r), c(5, 5))
})

test_that("vector2_rotate", {
  r <- vector2_rotate(c(1, 0), pi / 2)
  expect_equal(unname(r)[1], 0, tolerance = 0.001)
  expect_equal(unname(r)[2], 1, tolerance = 0.001)
})

test_that("vector2_move_towards", {
  r <- vector2_move_towards(c(0, 0), c(10, 0), 3)
  expect_equal(unname(r), c(3, 0), tolerance = 0.001)
})

test_that("vector2_clamp", {
  r <- vector2_clamp(c(5, -1), c(0, 0), c(3, 3))
  expect_equal(unname(r), c(3, 0))
})

test_that("vector2_equals", {
  expect_equal(vector2_equals(c(1, 2), c(1, 2)), 1L)
  expect_equal(vector2_equals(c(1, 2), c(3, 4)), 0L)
})

test_that("vector2_min and vector2_max", {
  expect_equal(unname(vector2_min(c(1, 5), c(3, 2))), c(1, 2))
  expect_equal(unname(vector2_max(c(1, 5), c(3, 2))), c(3, 5))
})

test_that("vector2_reflect", {
  r <- vector2_reflect(c(1, -1), c(0, 1))
  expect_equal(unname(r), c(1, 1), tolerance = 0.001)
})

test_that("vector2_transform with identity matrix", {
  m <- matrix_identity()
  r <- vector2_transform(c(3, 4), m)
  expect_equal(unname(r), c(3, 4), tolerance = 0.001)
})

test_that("vector2_invert", {
  r <- vector2_invert(c(2, 4))
  expect_equal(unname(r), c(0.5, 0.25))
})

test_that("vector2_angle", {
  a <- vector2_angle(c(1, 0), c(0, 1))
  expect_type(a, "double")
})
