library(raylibr)

test_that("quaternion_identity", {
  q <- quaternion_identity()
  expect_equal(unname(q), c(0, 0, 0, 1))
})

test_that("quaternion_length and normalize", {
  q <- quaternion_identity()
  expect_equal(quaternion_length(q), 1)
  q2 <- c(1, 2, 3, 4)
  n <- quaternion_normalize(q2)
  expect_equal(quaternion_length(n), 1, tolerance = 0.001)
})

test_that("quaternion_multiply", {
  q <- quaternion_identity()
  r <- quaternion_multiply(q, q)
  expect_equal(unname(r), c(0, 0, 0, 1), tolerance = 0.001)
})

test_that("quaternion_invert", {
  q <- quaternion_identity()
  inv <- quaternion_invert(q)
  expect_equal(unname(inv), c(0, 0, 0, 1), tolerance = 0.001)
})

test_that("quaternion_lerp and quaternion_nlerp", {
  q1 <- quaternion_identity()
  q2 <- quaternion_from_euler(0, pi / 2, 0)
  r <- quaternion_lerp(q1, q2, 0)
  expect_equal(unname(r), unname(q1), tolerance = 0.001)
  r2 <- quaternion_nlerp(q1, q2, 0)
  expect_equal(quaternion_length(r2), 1, tolerance = 0.001)
})

test_that("quaternion_slerp", {
  q1 <- quaternion_identity()
  q2 <- quaternion_from_euler(0, pi / 2, 0)
  r <- quaternion_slerp(q1, q2, 0.5)
  expect_equal(quaternion_length(r), 1, tolerance = 0.001)
})

test_that("quaternion_from_euler and quaternion_to_euler round-trip", {
  q <- quaternion_from_euler(0.1, 0.2, 0.3)
  euler <- quaternion_to_euler(q)
  expect_length(euler, 3)
  expect_equal(unname(euler), c(0.1, 0.2, 0.3), tolerance = 0.01)
})

test_that("quaternion_from_matrix and quaternion_to_matrix round-trip", {
  q <- quaternion_from_euler(0, pi / 4, 0)
  m <- quaternion_to_matrix(q)
  expect_equal(dim(m), c(4, 4))
  q2 <- quaternion_from_matrix(m)
  expect_equal(quaternion_length(q2), 1, tolerance = 0.001)
})

test_that("quaternion_from_axis_angle and quaternion_to_axis_angle round-trip", {
  axis <- c(0, 1, 0)
  angle <- pi / 3
  q <- quaternion_from_axis_angle(axis, angle)
  result <- quaternion_to_axis_angle(q)
  expect_equal(unname(result$axis), axis, tolerance = 0.01)
  expect_equal(result$angle, angle, tolerance = 0.01)
})

test_that("quaternion_equals", {
  q <- quaternion_identity()
  expect_equal(quaternion_equals(q, q), 1L)
  expect_equal(quaternion_equals(q, c(1, 0, 0, 0)), 0L)
})

test_that("quaternion_transform", {
  q <- quaternion_identity()
  m <- matrix_identity()
  r <- quaternion_transform(q, m)
  expect_length(r, 4)
})

test_that("quaternion_add and quaternion_subtract", {
  a <- c(1, 0, 0, 0)
  b <- c(0, 1, 0, 0)
  s <- quaternion_add_value(a, 1)
  expect_length(s, 4)
  d <- quaternion_subtract_value(a, 1)
  expect_length(d, 4)
})
