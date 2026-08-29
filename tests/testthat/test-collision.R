library(raylibr)

test_that("check_collision_recs detects overlapping rectangles", {
  expect_true(check_collision_recs(rectangle(0, 0, 10, 10), rectangle(5, 5, 10, 10)))
})

test_that("check_collision_recs returns FALSE for non-overlapping rectangles", {
  expect_false(check_collision_recs(rectangle(0, 0, 10, 10), rectangle(20, 20, 10, 10)))
})

test_that("check_collision_circles detects overlapping circles", {
  expect_true(check_collision_circles(c(0, 0), 5, c(3, 0), 5))
})

test_that("check_collision_circles returns FALSE for non-overlapping circles", {
  expect_false(check_collision_circles(c(0, 0), 5, c(20, 0), 5))
})

test_that("check_collision_circle_rec detects circle inside rectangle", {
  expect_true(check_collision_circle_rec(c(5, 5), 3, rectangle(0, 0, 10, 10)))
})

test_that("check_collision_circle_rec returns FALSE for distant circle", {
  expect_false(check_collision_circle_rec(c(50, 50), 1, rectangle(0, 0, 10, 10)))
})

test_that("check_collision_circle_line detects circle touching line", {
  expect_true(check_collision_circle_line(c(5, 5), 3, c(0, 0), c(10, 10)))
})

test_that("check_collision_circle_line returns FALSE for distant circle", {
  expect_false(check_collision_circle_line(c(50, 50), 1, c(0, 0), c(10, 10)))
})

test_that("check_collision_point_rec detects point inside rectangle", {
  expect_true(check_collision_point_rec(c(5, 5), rectangle(0, 0, 10, 10)))
})

test_that("check_collision_point_rec returns FALSE for point outside", {
  expect_false(check_collision_point_rec(c(15, 15), rectangle(0, 0, 10, 10)))
})

test_that("check_collision_point_circle detects point inside circle", {
  expect_true(check_collision_point_circle(c(1, 1), c(0, 0), 5))
})

test_that("check_collision_point_circle returns FALSE for point outside", {
  expect_false(check_collision_point_circle(c(10, 10), c(0, 0), 5))
})

test_that("check_collision_point_triangle detects point inside triangle", {
  expect_true(check_collision_point_triangle(c(5, 5), c(0, 0), c(10, 0), c(5, 10)))
})

test_that("get_collision_rec returns the overlapping rectangle", {
  rec <- get_collision_rec(rectangle(0, 0, 10, 10), rectangle(5, 5, 10, 10))
  expect_true(is_rectangle(rec))
  expect_equal(rec$x, 5, tolerance = 0.01)
  expect_equal(rec$y, 5, tolerance = 0.01)
  expect_equal(rec$width, 5, tolerance = 0.01)
  expect_equal(rec$height, 5, tolerance = 0.01)
})

test_that("check_collision_spheres detects overlapping spheres", {
  expect_true(check_collision_spheres(c(0, 0, 0), 5, c(3, 0, 0), 5))
})

test_that("check_collision_spheres returns FALSE for distant spheres", {
  expect_false(check_collision_spheres(c(0, 0, 0), 5, c(20, 0, 0), 5))
})

test_that("check_collision_boxes detects overlapping bounding boxes", {
  b1 <- bounding_box(c(0, 0, 0), c(5, 5, 5))
  b2 <- bounding_box(c(3, 3, 3), c(8, 8, 8))
  expect_true(check_collision_boxes(b1, b2))
})

test_that("check_collision_boxes returns FALSE for non-overlapping boxes", {
  b1 <- bounding_box(c(0, 0, 0), c(5, 5, 5))
  b2 <- bounding_box(c(10, 10, 10), c(15, 15, 15))
  expect_false(check_collision_boxes(b1, b2))
})
