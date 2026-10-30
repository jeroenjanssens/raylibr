library(raylibr)

# These would crash R without a window; they must raise an R error instead.
test_that("functions that need a window error when none is open", {
  skip_if(is_window_ready())
  msg <- "needs an open window"
  expect_error(draw_circle(10L, 10L, 5, "red"), msg)
  expect_error(draw_circle(c(10L, 20L), 10L, 5, "red"), msg)  # vectorized
  expect_error(draw_line_strip(matrix(c(0, 0, 10, 10), ncol = 2, byrow = TRUE), "red"), msg)
  expect_error(begin_drawing(), msg)
  expect_error(clear_background("black"), msg)
  expect_error(close_window(), msg)
  expect_error(set_window_title("x"), msg)
  expect_error(gui_button(rectangle(0, 0, 10, 10), "x"), msg)
  expect_error(rl_push_matrix(), msg)
  expect_error(image_text("x", 10L, "red"), msg)
})

test_that("the error names the R function", {
  skip_if(is_window_ready())
  expect_error(draw_circle(10L, 10L, 5, "red"), "`draw_circle()`", fixed = TRUE)
})

test_that("functions that don't need a window still work without one", {
  skip_if(is_window_ready())
  img <- gen_image_color(4L, 4L, "red")
  expect_true(is_image(img))
  expect_true(check_collision_recs(rectangle(0, 0, 10, 10), rectangle(5, 5, 10, 10)))
  expect_type(rl_get_version(), "integer")
  expect_type(rl_get_cull_distance_near(), "double")
  expect_no_error(gui_set_style(0L, 16L, 20L))
})
