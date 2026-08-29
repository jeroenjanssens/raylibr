library(raylibr)

test_that("gui_button returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_button(rectangle(10, 10, 80, 30), "Click")
  end_drawing()
  expect_true(is.integer(result) || is.numeric(result))
})

test_that("gui_label returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_label(rectangle(10, 10, 80, 30), "Text")
  end_drawing()
  expect_true(is.integer(result) || is.numeric(result))
})

test_that("gui_label_button returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_label_button(rectangle(10, 10, 80, 30), "Link")
  end_drawing()
  expect_true(is.integer(result) || is.numeric(result))
})

test_that("gui_window_box returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_window_box(rectangle(5, 5, 90, 90), "Window")
  end_drawing()
  expect_true(is.integer(result) || is.numeric(result))
})

test_that("gui_toggle returns list with result and active", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_toggle(rectangle(10, 10, 80, 30), "Toggle", FALSE)
  end_drawing()
  expect_true(is.list(result))
  expect_true("result" %in% names(result))
  expect_true("active" %in% names(result))
  expect_true(is.logical(result$active))
})

test_that("gui_check_box returns list with result and checked", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_check_box(rectangle(10, 10, 20, 20), "Check", TRUE)
  end_drawing()
  expect_true(is.list(result))
  expect_true("checked" %in% names(result))
  expect_true(is.logical(result$checked))
})

test_that("gui_slider returns list with result and value", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_slider(rectangle(10, 10, 80, 20), "Min", "Max", 0.5, 0.0, 1.0)
  end_drawing()
  expect_true(is.list(result))
  expect_true("result" %in% names(result))
  expect_true("value" %in% names(result))
  expect_true(is.numeric(result$value))
})

test_that("gui_slider_bar returns list with result and value", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_slider_bar(rectangle(10, 10, 80, 20), "Lo", "Hi", 25.0, 0.0, 100.0)
  end_drawing()
  expect_true(is.list(result))
  expect_true("value" %in% names(result))
})

test_that("gui_progress_bar returns list with result and value", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_progress_bar(rectangle(10, 10, 80, 20), "0%", "100%", 0.7, 0.0, 1.0)
  end_drawing()
  expect_true(is.list(result))
  expect_true("value" %in% names(result))
})

test_that("gui_combo_box returns list with result and active", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_combo_box(rectangle(10, 10, 80, 30), "One;Two;Three", 0L)
  end_drawing()
  expect_true(is.list(result))
  expect_true("active" %in% names(result))
})

test_that("gui_spinner returns list with result and value", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_spinner(rectangle(10, 10, 80, 30), "Spin", 5L, 0L, 10L, FALSE)
  end_drawing()
  expect_true(is.list(result))
  expect_true("value" %in% names(result))
})

test_that("gui_value_box returns list with result and value", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_value_box(rectangle(10, 10, 80, 30), "Val", 42L, 0L, 100L, FALSE)
  end_drawing()
  expect_true(is.list(result))
  expect_true("value" %in% names(result))
})

test_that("gui_text_box returns list with result and text", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_text_box(rectangle(10, 10, 80, 30), "hello", 64L, FALSE)
  end_drawing()
  expect_true(is.list(result))
  expect_true("text" %in% names(result))
  expect_true(is.character(result$text))
})

test_that("gui_color_picker returns list with result and color", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_color_picker(rectangle(10, 10, 80, 80), "Color", color(255, 0, 0, 255))
  end_drawing()
  expect_true(is.list(result))
  expect_true("color" %in% names(result))
})

test_that("gui_color_bar_alpha returns list with result and alpha", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_color_bar_alpha(rectangle(10, 10, 80, 20), "Alpha", 0.5)
  end_drawing()
  expect_true(is.list(result))
  expect_true("alpha" %in% names(result))
  expect_true(is.numeric(result$alpha))
})

test_that("gui_color_bar_hue returns list with result and value", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_color_bar_hue(rectangle(10, 10, 20, 80), "Hue", 180.0)
  end_drawing()
  expect_true(is.list(result))
  expect_true("value" %in% names(result))
})

test_that("gui_grid returns list with result and mouse_cell", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_grid(rectangle(10, 10, 80, 80), "Grid", 10.0, 2L, c(0, 0))
  end_drawing()
  expect_true(is.list(result))
  expect_true("mouse_cell" %in% names(result))
  expect_length(result$mouse_cell, 2)
})

test_that("gui_list_view returns list with result, scroll_index, and active", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_list_view(rectangle(10, 10, 80, 80), "A;B;C", 0L, 0L)
  end_drawing()
  expect_true(is.list(result))
  expect_true("scroll_index" %in% names(result))
  expect_true("active" %in% names(result))
})

test_that("gui_status_bar returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_status_bar(rectangle(0, 80, 100, 20), "Status")
  end_drawing()
  expect_true(is.integer(result) || is.numeric(result))
})

test_that("gui_dummy_rec returns integer", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_dummy_rec(rectangle(10, 10, 80, 80), "Dummy")
  end_drawing()
  expect_true(is.integer(result) || is.numeric(result))
})

test_that("gui_message_box returns list", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_message_box(rectangle(10, 10, 80, 80), "Title", "Message", "Ok;Cancel", 0L)
  end_drawing()
  expect_true(is.list(result))
  expect_true("result" %in% names(result))
  expect_true("btn_active" %in% names(result))
})

test_that("gui_scroll_panel returns list", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_scroll_panel(
    rectangle(10, 10, 80, 80), "Panel",
    rectangle(0, 0, 200, 200), c(0, 0), rectangle(0, 0, 0, 0))
  end_drawing()
  expect_true(is.list(result))
  expect_true("scroll" %in% names(result))
  expect_true("view" %in% names(result))
})

test_that("gui_draw_icon works without error", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  gui_draw_icon(gui_icon$cross, 10L, 10L, 2L, color(255, 0, 0, 255))
  end_drawing()
  expect_true(TRUE)
})

test_that("gui_color_picker_hsv returns list with color_hsv", {
  init_window(100, 100, "test")
  on.exit(close_window())

  begin_drawing()
  result <- gui_color_picker_hsv(rectangle(10, 10, 80, 80), "HSV", c(0.5, 0.5, 0.5))
  end_drawing()
  expect_true(is.list(result))
  expect_true("color_hsv" %in% names(result))
  expect_length(result$color_hsv, 3)
})
