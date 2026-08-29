library(raylibr)

test_that("gui_enable and gui_disable work", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_enable()
  gui_disable()
  gui_enable()
  expect_true(TRUE)
})

test_that("gui_lock and gui_unlock work", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_lock()
  expect_true(gui_is_locked())
  gui_unlock()
  expect_false(gui_is_locked())
})

test_that("gui_set_state and gui_get_state round-trip", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_set_state(gui_state$disabled)
  expect_equal(gui_get_state(), gui_state$disabled)
  gui_set_state(gui_state$normal)
  expect_equal(gui_get_state(), gui_state$normal)
})

test_that("gui_set_alpha works", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_set_alpha(0.5)
  gui_set_alpha(1.0)
  expect_true(TRUE)
})

test_that("gui_set_style and gui_get_style round-trip", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_load_style_default()
  original <- gui_get_style(gui_control$default, gui_default_property$text_size)
  gui_set_style(gui_control$default, gui_default_property$text_size, 20L)
  expect_equal(gui_get_style(gui_control$default, gui_default_property$text_size), 20L)
  gui_set_style(gui_control$default, gui_default_property$text_size, original)
})

test_that("gui_load_style_default works", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_load_style_default()
  expect_true(TRUE)
})

test_that("gui_set_font and gui_get_font work", {
  init_window(100, 100, "test")
  on.exit(close_window())

  font <- gui_get_font()
  expect_true(is_font(font))
  gui_set_font(font)
  expect_true(TRUE)
})

test_that("gui tooltip functions work", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_enable_tooltip()
  gui_set_tooltip("test tooltip")
  gui_disable_tooltip()
  expect_true(TRUE)
})

test_that("gui_set_icon_scale works", {
  init_window(100, 100, "test")
  on.exit(close_window())

  gui_set_icon_scale(2L)
  gui_set_icon_scale(1L)
  expect_true(TRUE)
})

test_that("gui_get_text_width returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  w <- gui_get_text_width("Hello")
  expect_true(is.integer(w) || is.numeric(w))
  expect_gt(w, 0)
})
