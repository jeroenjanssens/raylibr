library(raylibr)

test_that("vector3_zero and vector3_one", {
  z <- vector3_zero()
  expect_equal(unname(z), c(0, 0, 0))
  o <- vector3_one()
  expect_equal(unname(o), c(1, 1, 1))
})

test_that("vector3 arithmetic", {
  a <- c(1, 2, 3)
  b <- c(4, 5, 6)
  expect_equal(unname(vector3_add(a, b)), c(5, 7, 9))
  expect_equal(unname(vector3_subtract(a, b)), c(-3, -3, -3))
  expect_equal(unname(vector3_scale(a, 2)), c(2, 4, 6))
  expect_equal(unname(vector3_multiply(a, b)), c(4, 10, 18))
  expect_equal(unname(vector3_negate(a)), c(-1, -2, -3))
})

test_that("vector3 length and distance", {
  expect_equal(vector3_length(c(0, 3, 4)), 5)
  expect_equal(vector3_length_sqr(c(0, 3, 4)), 25)
  expect_equal(vector3_distance(c(0, 0, 0), c(0, 3, 4)), 5)
})

test_that("vector3 dot and cross product", {
  expect_equal(vector3_dot_product(c(1, 0, 0), c(0, 1, 0)), 0)
  cp <- vector3_cross_product(c(1, 0, 0), c(0, 1, 0))
  expect_equal(unname(cp), c(0, 0, 1))
})

test_that("vector3_normalize", {
  n <- vector3_normalize(c(1, 2, 3))
  expect_equal(vector3_length(n), 1, tolerance = 0.001)
})

test_that("vector3_lerp", {
  r <- vector3_lerp(c(0, 0, 0), c(10, 20, 30), 0.5)
  expect_equal(unname(r), c(5, 10, 15))
})

test_that("vector3_move_towards", {
  r <- vector3_move_towards(c(0, 0, 0), c(10, 0, 0), 3)
  expect_equal(unname(r), c(3, 0, 0), tolerance = 0.001)
})

test_that("vector3_min and vector3_max", {
  expect_equal(unname(vector3_min(c(1, 5, 3), c(3, 2, 4))), c(1, 2, 3))
  expect_equal(unname(vector3_max(c(1, 5, 3), c(3, 2, 4))), c(3, 5, 4))
})

test_that("vector3_equals", {
  expect_equal(vector3_equals(c(1, 2, 3), c(1, 2, 3)), 1L)
  expect_equal(vector3_equals(c(1, 2, 3), c(4, 5, 6)), 0L)
})

test_that("vector3_perpendicular returns perpendicular vector", {
  p <- vector3_perpendicular(c(1, 0, 0))
  expect_equal(vector3_dot_product(c(1, 0, 0), p), 0, tolerance = 0.001)
})

test_that("vector3_reflect", {
  r <- vector3_reflect(c(1, -1, 0), c(0, 1, 0))
  expect_equal(unname(r), c(1, 1, 0), tolerance = 0.001)
})

test_that("vector3_invert", {
  r <- vector3_invert(c(2, 4, 5))
  expect_equal(unname(r), c(0.5, 0.25, 0.2))
})

test_that("vector3_ortho_normalize returns orthonormal vectors", {
  result <- vector3_ortho_normalize(c(1, 0, 0), c(1, 1, 0))
  expect_length(result$v1, 3)
  expect_length(result$v2, 3)
  expect_equal(vector3_length(result$v1), 1, tolerance = 0.001)
  expect_equal(vector3_length(result$v2), 1, tolerance = 0.001)
  expect_equal(vector3_dot_product(result$v1, result$v2), 0, tolerance = 0.001)
})

test_that("vector3_transform with identity", {
  m <- matrix_identity()
  r <- vector3_transform(c(1, 2, 3), m)
  expect_equal(unname(r), c(1, 2, 3), tolerance = 0.001)
})

test_that("vector3_clamp", {
  r <- vector3_clamp(c(5, -1, 3), c(0, 0, 0), c(3, 3, 3))
  expect_equal(unname(r), c(3, 0, 3))
})
