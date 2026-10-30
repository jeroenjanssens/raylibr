# Build inst/raylib-6.0-minimal.tar.gz from the official Raylib release.
#
# Keeps src/ and LICENSE, minus the parts raylibr never compiles: window
# backends other than GLFW (desktop) and Emscripten (webR), the RGFW
# library they use, the OpenGL 1.1 software renderer, and CMake/HTML files.
# Everything removed is only included under a platform or graphics API
# define that raylibr's builds don't set.
#
# Usage: Rscript data-raw/make_raylib_tarball.R

version <- "6.0"
name <- paste0("raylib-", version, "-minimal")
url <- sprintf("https://github.com/raysan5/raylib/archive/refs/tags/%s.tar.gz", version)

remove <- c(
  "src/external/RGFW",
  "src/external/rlsw.h",
  "src/platforms/rcore_android.c",
  "src/platforms/rcore_desktop_rgfw.c",
  "src/platforms/rcore_desktop_sdl.c",
  "src/platforms/rcore_desktop_win32.c",
  "src/platforms/rcore_drm.c",
  "src/platforms/rcore_memory.c",
  "src/platforms/rcore_template.c",
  "src/platforms/rcore_web.c",
  "src/CMakeLists.txt",
  "src/shell.html",
  "src/minshell.html"
)

tmp <- tempfile()
dir.create(tmp)
archive <- file.path(tmp, "raylib.tar.gz")
download.file(url, archive, mode = "wb", quiet = TRUE)
untar(archive, exdir = tmp)
upstream <- file.path(tmp, paste0("raylib-", version))

out <- file.path(tmp, name)
dir.create(file.path(out, "lib"), recursive = TRUE)
stopifnot(
  file.copy(file.path(upstream, "LICENSE"), out),
  file.copy(file.path(upstream, "src"), out, recursive = TRUE)
)

for (p in remove) {
  path <- file.path(out, p)
  if (!file.exists(path)) stop("Expected to remove ", p, " but it does not exist")
  unlink(path, recursive = TRUE)
}

dest <- normalizePath(file.path("inst", paste0(name, ".tar.gz")), mustWork = FALSE)
old <- setwd(tmp)
# COPYFILE_DISABLE keeps macOS metadata files out of the archive
Sys.setenv(COPYFILE_DISABLE = "1")
files <- sort(list.files(name, recursive = TRUE, all.files = TRUE, full.names = TRUE))
utils::tar(dest, files = c(file.path(name, "lib"), files), compression = "gzip", tar = "internal")
setwd(old)
unlink(tmp, recursive = TRUE)
cat(sprintf("Wrote %s (%.2f MB)\n", dest, file.size(dest) / 1e6))
