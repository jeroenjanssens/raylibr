library(raylibr)

test_that("audio device functions work", {
  init_audio_device()
  on.exit(close_audio_device())

  expect_true(is_audio_device_ready())

  set_master_volume(0.5)
  vol <- get_master_volume()
  expect_equal(vol, 0.5, tolerance = 0.01)

  set_master_volume(1.0)
  expect_equal(get_master_volume(), 1.0, tolerance = 0.01)
})
