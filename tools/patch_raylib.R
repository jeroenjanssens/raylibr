# Patch the bundled Raylib source before it is compiled for desktop.
#
# Usage: Rscript tools/patch_raylib.R <path to raylib src directory>
#
# Each patch replaces an exact snippet of rcore.c. If a snippet is not found
# (e.g., after upgrading Raylib) the build stops, so the patch can be checked
# against the new source instead of being silently skipped.

args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 1L) stop("Usage: Rscript patch_raylib.R <raylib src dir>")
path <- file.path(args[1], "rcore.c")
src <- readChar(path, file.info(path)$size, useBytes = TRUE)

patches <- list(
  # BeginMode2D() resets the modelview matrix without re-applying the HiDPI
  # screen scale (EndMode2D() does re-apply it), so 2D camera drawing ends up
  # at the wrong scale in HiDPI windows.
  list(
    old = paste0(
      "    rlLoadIdentity();               // Reset current matrix (modelview)\n",
      "\n",
      "    // Apply 2d camera transformation to modelview\n",
      "    rlMultMatrixf(MatrixToFloat(GetCameraMatrix2D(camera)));\n"
    ),
    new = paste0(
      "    rlLoadIdentity();               // Reset current matrix (modelview)\n",
      "    if (rlGetActiveFramebuffer() == 0) rlMultMatrixf(MatrixToFloat(CORE.Window.screenScale)); // Apply screen scaling if required [raylibr]\n",
      "\n",
      "    // Apply 2d camera transformation to modelview\n",
      "    rlMultMatrixf(MatrixToFloat(GetCameraMatrix2D(camera)));\n"
    )
  ),
  # CloseWindow() keeps the flags set with SetConfigFlags(), so a window
  # opened later in the same R session inherits them (e.g., stays hidden).
  list(
    old = "    CORE.Window.ready = false;\n    TRACELOG(LOG_INFO, \"Window closed successfully\");\n",
    new = paste0(
      "    CORE.Window.ready = false;\n",
      "    CORE.Window.flags = 0;      // Don't carry config flags over to the next window [raylibr]\n",
      "    TRACELOG(LOG_INFO, \"Window closed successfully\");\n"
    )
  )
)

for (p in patches) {
  if (grepl(p$new, src, fixed = TRUE)) next  # Already applied
  pos <- regexpr(p$old, src, fixed = TRUE)
  if (pos == -1L) stop("raylibr: could not apply Raylib patch to rcore.c:\n", p$old)
  src <- paste0(
    substr(src, 1L, pos - 1L), p$new,
    substr(src, pos + attr(pos, "match.length"), nchar(src))
  )
}

writeChar(src, path, eos = NULL, useBytes = TRUE)
