library(raylibr)

test_that("gui_state enum exists and has correct values", {
  expect_true(is.list(gui_state))
  expect_equal(gui_state$normal, 0L)
  expect_equal(gui_state$focused, 1L)
  expect_equal(gui_state$pressed, 2L)
  expect_equal(gui_state$disabled, 3L)
})

test_that("gui_result enum exists", {
  expect_true(is.list(gui_result))
  expect_equal(gui_result$none, 0L)
  expect_equal(gui_result$pressed, 1L)
  expect_equal(gui_result$changed, 2L)
})

test_that("gui_text_alignment enum exists", {
  expect_true(is.list(gui_text_alignment))
  expect_equal(gui_text_alignment$left, 0L)
  expect_equal(gui_text_alignment$center, 1L)
  expect_equal(gui_text_alignment$right, 2L)
})

test_that("gui_text_wrap_mode enum exists", {
  expect_true(is.list(gui_text_wrap_mode))
  expect_equal(gui_text_wrap_mode$none, 0L)
  expect_equal(gui_text_wrap_mode$char, 1L)
  expect_equal(gui_text_wrap_mode$word, 2L)
})

test_that("gui_control enum exists and has expected entries", {
  expect_true(is.list(gui_control))
  expect_equal(gui_control$default, 0L)
  expect_equal(gui_control$button, 2L)
  expect_equal(gui_control$slider, 4L)
  expect_equal(gui_control$colorpicker, 13L)
  expect_equal(gui_control$statusbar, 15L)
  expect_equal(length(gui_control), 16)
})

test_that("gui_icon enum exists and has 257 entries", {
  expect_true(is.list(gui_icon))
  expect_equal(gui_icon$none, 0L)
  expect_equal(gui_icon$folder_file_open, 1L)
  expect_equal(gui_icon$cross, 113L)
  expect_gte(length(gui_icon), 250)
})

test_that("gui_control_property enum exists", {
  expect_true(is.list(gui_control_property))
  expect_equal(gui_control_property$border_color_normal, 0L)
  expect_equal(gui_control_property$text_alignment, 14L)
})

test_that("gui_default_property enum exists", {
  expect_true(is.list(gui_default_property))
  expect_equal(gui_default_property$text_size, 16L)
})

test_that("per-control property enums exist", {
  expect_true(is.list(gui_slider_property))
  expect_true(is.list(gui_check_box_property))
  expect_true(is.list(gui_list_view_property))
  expect_true(is.list(gui_color_picker_property))
})
