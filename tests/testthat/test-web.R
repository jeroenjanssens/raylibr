test_that("is_web returns FALSE on desktop", {
  expect_false(is_web())
})

test_that("run_game_loop exists and is a function", {
  expect_true(is.function(run_game_loop))
})

test_that("raylibr_resource rejects unknown resources", {
  old <- Sys.getenv("RAYLIBR_ASSETS")
  Sys.unsetenv("RAYLIBR_ASSETS")
  on.exit(Sys.setenv(RAYLIBR_ASSETS = old))
  expect_error(raylibr_resource("does-not-exist.png"), "is not a raylibr resource")
  expect_error(raylibr_resource(42), "must be a string")
})

test_that("raylibr_resource uses RAYLIBR_ASSETS when set", {
  dir <- tempfile()
  dir.create(dir)
  writeLines("x", file.path(dir, "space.png"))
  old <- Sys.getenv("RAYLIBR_ASSETS")
  Sys.setenv(RAYLIBR_ASSETS = dir)
  on.exit(Sys.setenv(RAYLIBR_ASSETS = old))
  expect_equal(raylibr_resource("space.png"), file.path(dir, "space.png"))
  expect_error(raylibr_resource("other.png"), "not found in RAYLIBR_ASSETS")
})

test_that("raylibr_resource downloads files and folders into the cache", {
  # Serve a fake asset directory over file:// instead of GitHub
  src <- tempfile()
  dir.create(file.path(src, "model"), recursive = TRUE)
  manifest <- readLines(system.file("assets.txt", package = "raylibr"))
  for (f in c("space.png", grep("^model/", manifest, value = TRUE))) writeLines(f, file.path(src, f))
  cache <- tempfile()
  old <- Sys.getenv(c("RAYLIBR_ASSETS", "R_USER_CACHE_DIR"))
  Sys.unsetenv("RAYLIBR_ASSETS")
  Sys.setenv(R_USER_CACHE_DIR = cache)
  old_opt <- options(raylibr.assets_url = paste0("file://", normalizePath(src), "/"))
  on.exit({ do.call(Sys.setenv, as.list(old)); options(old_opt); unlink(c(src, cache), recursive = TRUE) })

  expect_message(path <- raylibr_resource("space.png"), "Downloading 1")
  expect_equal(readLines(path), "space.png")
  expect_silent(raylibr_resource("space.png"))  # cached
  expect_message(dir <- raylibr_resource("model"), "Downloading")
  expect_setequal(list.files(dir), sub("^model/", "", grep("^model/", manifest, value = TRUE)))
})

test_that("assets.txt lists exactly the files in assets/", {
  assets <- test_path("..", "..", "assets")
  skip_if_not(dir.exists(assets), "Not in a source checkout")
  files <- sort(list.files(assets, recursive = TRUE))
  manifest <- readLines(system.file("assets.txt", package = "raylibr"))
  expect_equal(sort(manifest), files)
})
