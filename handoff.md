# raylibr handoff

Last updated: 2026-10-31. State of `main`: `d8997134` (in sync with
GitHub). Latest release: **v6.0.4** (tag on `33d27785`, GitHub release
published), prepared as raylibr’s **first CRAN submission**. Not yet
submitted.

Read `CLAUDE.md` first: it covers code generation, hand-maintained
files, building, testing, the website and demo assets.

------------------------------------------------------------------------

## 1. Open tasks

### 1.1 Finish the CRAN submission (in progress)

1.  **win-builder results.** The 6.0.4 tarball was uploaded to
    win-builder for R-devel and R-release on 2026-10-30. The results are
    emailed to the maintainer (<jeroen@jeroenjanssens.com>), not visible
    anywhere else. The first email has arrived; its contents have not
    been reviewed yet.
    - For each email: note R-devel vs R-release, the `Status:` line, and
      the full text of every NOTE/WARNING/ERROR. Expect one NOTE: “CRAN
      incoming feasibility … New submission”. Check it for “Possibly
      misspelled words” or URL problems.
    - The links in the email point to the full check and install logs,
      which win-builder deletes after a few days.
2.  **`cran-comments.md`**: replace the line starting with
    `TODO before submitting:` with the win-builder results. If they show
    a new NOTE, explain it there (or fix it).
3.  **Fix anything win-builder finds.** If code changes are needed,
    release **6.0.5** the same way as 6.0.4 (section 3.3), since v6.0.4
    is already tagged and published. Don’t move published tags.
4.  **Submit**: the maintainer runs `devtools::submit_cran()` from a
    checkout of `main` and clicks the confirmation email. This step is
    theirs.
5.  After CRAN’s response: answer reviewer comments, or tag the CRAN
    release state if CRAN asks for changes.

### 1.2 Known issues (not started)

- **Audio functions without an audio device (untested, may crash).**
  Sound, music and audio-stream functions likely crash R when
  [`init_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/init_audio_device.md)
  hasn’t been called, the same way drawing functions crashed without a
  window. A guard like the window guard (section 2.1) would fix it. Not
  investigated; needs testing with real sound objects.
- **Name overlaps (decision: keep).**
  - raylibr’s `key` enum hides data.table’s
    [`key()`](https://jeroenjanssens.github.io/raylibr/reference/key.md)
    if data.table is attached *before* raylibr; attached *after*,
    `key$space` breaks. `key(dt)` keeps working either way.
  - [`file_exists()`](https://jeroenjanssens.github.io/raylibr/reference/file_exists.md),
    [`file_copy()`](https://jeroenjanssens.github.io/raylibr/reference/file_copy.md),
    [`file_move()`](https://jeroenjanssens.github.io/raylibr/reference/file_move.md)
    and
    [`file_rename()`](https://jeroenjanssens.github.io/raylibr/reference/file_rename.md)
    overlap with fs/xfun. Maintainer decided to keep exporting all 27
    file helpers.
  - The `color` class clash with colorspace is fixed (section 2.4), so
    no renaming is needed.
- **452 help pages still have `@examplesIf FALSE`.** They’re functions
  that need a window, audio, files or GPU objects. Possible improvement:
  handwrite examples that wrap them in
  [`raylibr_screenshot()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_screenshot.md).
- **`-Wextra` warnings in raygui** (missing field initializers). R and
  CRAN don’t use `-Wextra`, so they are left as upstream wrote them.
- **“Array buffer allocation failed”** appeared in headless Chrome for
  the Hello World webR demo, which ran at about 337 FPS there. Most
  likely a headless artifact; the demo kept rendering. Recheck if users
  report it in a normal browser.
- **A local warning about R’s own header**: on this Mac, every install
  warns about `R_ext/Boolean.h ... -Wfixed-enum-extension`. It comes
  from R’s header vs. Apple clang 21, not raylibr, and doesn’t occur on
  CI or CRAN.

------------------------------------------------------------------------

## 2. What changed in this session (2026-10-28 to 10-31)

31 commits since v6.0.2, released as 6.0.3 and 6.0.4. Details are in
NEWS.md; the important design decisions:

### 2.1 Window guard

Functions that need an OpenGL context or a GLFW window used to crash R
(segfault or GLFW assertion) without a window. Now they stop with
“[`draw_circle()`](https://jeroenjanssens.github.io/raylibr/reference/draw_circle.md)
needs an open window. Call
[`init_window()`](https://jeroenjanssens.github.io/raylibr/reference/init_window.md)
first.” - `needs_window()` in `data-raw/generate.R` holds the name
rules. The generated wrappers call `raylibr_require_window()` (in
`src/raylibr.h`). 21 hand-written wrappers in `src/manual_wrappers.cpp`
call it too. - The rules were checked by calling every wrapped function
without a window in a fresh R process: all 204 that crashed are covered.
Exempt pure rlgl getters: `rlGetVersion`, `rlGetPixelFormatName`,
`rlGetCullDistanceNear/Far`. - Cost: one flag read (about 1 ns; a draw
call from R is about 16 µs).

### 2.2 CRAN preparation

- **Tests:** `skip_if_no_gl()` (`tests/testthat/helper-gl.R`). Window
  tests run with `RAYLIBR_GL=true` (CI), skip on CRAN, CI and Linux
  without a display, and otherwise run
  ([`testthat::test_local()`](https://testthat.r-lib.org/reference/test_package.html)
  on a desktop).
- **Examples:** `has_display()` (R/extra.R) is `TRUE` only with
  `RAYLIBR_GL=true`, or in an interactive session with a display. So R
  CMD check never opens windows unless asked to.
- **Examples that run anywhere:** `runs_without_window()` in the
  generator. 369 run unconditionally. They were checked CRAN-style and
  with an integer-division sanitizer build.
- **Demo assets** moved from `inst/demo_resources/` to `assets/`, which
  is excluded from the package.
  [`raylibr_resource()`](https://jeroenjanssens.github.io/raylibr/reference/raylibr_resource.md)
  downloads them on first use into
  `tools::R_user_dir("raylibr", "cache")`. It tries the `v<version>` tag
  first, then `main` (development versions with four version components
  use `main`). With `RAYLIBR_ASSETS` set it reads that folder instead.
  `inst/assets.txt` lists every asset (a test checks this), and a folder
  name downloads the whole folder. The webR build bundles `assets/`.
  Tarball went from 6.8 MB to 2.7 MB.
- **Bundled Raylib:** `data-raw/make_raylib_tarball.R` rebuilds
  `inst/raylib-6.0-minimal.tar.gz` from the official 6.0 release, minus
  unused backends (RGFW, SDL, DRM, Android, Win32, memory) and the
  software renderer. The original bundled `src/` was identical to the
  release.
- **Credits:** 17 copyright holders in `Authors@R` (role `cph`), and
  every file in `src/external` is listed in `inst/COPYRIGHTS`.
- **Logging:** `src/log.cpp` routes Raylib’s log through `REprintf()`
  (set up in `.onLoad()`), at warning level by default. Messages from
  other threads (the audio thread) are dropped on desktop. webR compiles
  without the thread check.
- **Compiler settings:** Raylib’s Makefile now gets R’s `CC`, `AR`,
  `CFLAGS` and `CPICFLAGS` (`RAYLIB_MAKE_ARGS` in `src/Makevars.in` and
  `.win`). “GNU make” is in `SystemRequirements`.
- **Linux headers:** `configure` checks for the X11 extension and OpenGL
  headers and stops with a list of missing headers and package names.
  `SystemRequirements` lists them.
- **raygui patches** (`inst/raygui.h`, all marked `raylibr:`): the
  `fread()`/`fgets()` results are checked; `GuiFontIconBaking()` is only
  compiled with `RAYGUI_FONT_ICONS_BAKING`; a negative glyph count is
  treated as zero, also in the allocation sizes. The diagnostic pragma
  in `src/raygui_impl.cpp` is gone.
- **Raylib patches** (`tools/patch_raylib.R`, applied at install and in
  the webR build): HiDPI scale in `BeginMode2D()`, and `CloseWindow()`
  resets window flags.

### 2.3 Other fixes

- [`transform()`](https://rdrr.io/r/base/transform.html) was renamed to
  [`raylib_transform()`](https://jeroenjanssens.github.io/raylibr/reference/raylib_transform.md)
  (class `"raylib_transform"`). It hid
  [`base::transform()`](https://rdrr.io/r/base/transform.html) and broke
  ggplot2 scales. **Only Transform was renamed**: the maintainer
  rejected renaming all classes.
- [`gen_image_checked()`](https://jeroenjanssens.github.io/raylibr/reference/gen_image_checked.md)
  requires positive check sizes. Zero crashed R with SIGFPE on x86 (ARM
  returns 0, so macOS didn’t show it).
- [`gui_scroll_panel()`](https://jeroenjanssens.github.io/raylibr/reference/gui_scroll_panel.md)
  returns a real rectangle for `view`.
- [`is_color()`](https://jeroenjanssens.github.io/raylibr/reference/is_color.md)
  returns `TRUE`/`FALSE` for every input.
- raygui resets its font in
  [`init_window()`](https://jeroenjanssens.github.io/raylibr/reference/init_window.md).
  It kept the first window’s freed font, so text vanished, sizes were
  garbage, and R could crash.
- `load_shader*("")` passes NULL to Raylib.

### 2.4 S3 methods leave other packages’ objects alone

Generated struct methods (`$`, `[[`, `print`, `as.character`, …) call
[`NextMethod()`](https://rdrr.io/r/base/UseMethod.html) unless the
object is an external pointer. This fixed colorspace’s S4 `color`
objects without renaming the class.

------------------------------------------------------------------------

## 3. How to work on this repo

### 3.1 Conventions

- **Commits:** author is Jeroen Janssens. **Never add Co-Authored-By or
  any AI attribution.**
- **Python:** use `uv`, never `pip`.
- Commit on `main` (the maintainer’s workflow) and push after local
  checks pass. Ask before outward-facing actions: tags, releases, CRAN,
  emails.
- **roxygen2 must be 7.3.3** (matches `RoxygenNote`). The local default
  is 8.x, which rewrites every Rd file. Install 7.3.3 into a temp
  library:
  `remotes::install_version("roxygen2", "7.3.3", lib = "/tmp/rox733")`,
  then run with
  `R_LIBS=/tmp/rox733 Rscript -e 'roxygen2::roxygenise()'`. If a run
  shows `\link[=...]` changes or `Config/roxygen2/version` in
  DESCRIPTION, version 8 ran: revert `man/`, NAMESPACE and DESCRIPTION.
- **Regenerating code:** `Rscript data-raw/generate.R`, then
  [`Rcpp::compileAttributes()`](https://rdrr.io/pkg/Rcpp/man/compileAttributes.html),
  then roxygen 7.3.3. Afterwards there should be no other changes,
  because the Codegen check workflow verifies this.
- **Stale builds:** “library ‘raylib’ not found” means
  `src/raylib_built` is stale. Delete it (and `src/*.o`) and reinstall.
  If an interrupted install left `00LOCK-raylibr` in the library folder,
  remove it.

### 3.2 Testing

- `RAYLIBR_GL=true Rscript -e 'testthat::test_local()'` runs all tests
  (about 1113).
- **CRAN-like test run:** unset `NOT_CRAN`, `CI` and `RAYLIBR_GL`, then
  `testthat::test_dir("tests/testthat", package = "raylibr", load_package = "installed")`.
  Window and audio tests must skip.
- **Local CRAN check:** build from a clean export (`git archive HEAD`),
  then
  `env -u RAYLIBR_GL -u RAYLIBR_ASSETS -u CI -u NOT_CRAN R_USER_CACHE_DIR=/tmp/x/cache R CMD check --as-cran --no-manual <tarball>`.
- **Site build:** `RAYLIBR_GL=true RAYLIBR_ASSETS=$PWD/assets`. Build
  articles one at a time with
  [`pkgdown::build_article()`](https://pkgdown.r-lib.org/reference/build_articles.html);
  a batch build hung once, before the raygui font fix.
- **Integer division by zero** (traps on x86, not on ARM): build with
  `-fsanitize=integer-divide-by-zero -fno-sanitize-recover=all` added to
  `CFLAGS`, `CXXFLAGS`, `CXX17FLAGS` and `LDFLAGS`. Use
  `R_MAKEVARS_USER=<file> R CMD INSTALL --library=<tmp lib>`, then run
  the examples ([`tools::Rd2ex`](https://rdrr.io/r/tools/Rd2HTML.html)
  per Rd file) against it. Raylib uses R’s flags, so it’s covered too.
- **gcc/LTO warnings:** Docker works here. R-hub’s containers (e.g.
  `ghcr.io/r-hub/containers/gcc-asan:latest`, `--platform linux/amd64`)
  can compile and link single files with their R flags. Some warnings
  only appear at the LTO link step.
- **webR demos:** headless Chrome via `puppeteer-core` in a temp folder,
  using `/Applications/Google Chrome.app`. Capture `pageerror` and
  console output, and take screenshots. A
  `SharedArrayBuffer is not defined` error on the first load is normal:
  the service worker reloads the page with the right headers.
- **Missing webR symbols:** list the function imports of
  `raylibr/libs/raylibr.so` from the deployed package with Node
  (`WebAssembly.Module.imports`). No raylibr function should be
  imported. “resolved is not a function” in the browser means a missing
  symbol.

### 3.3 Releasing

1.  Bump `Version` in DESCRIPTION, and turn “development version” in
    NEWS.md into the version.
2.  Local CRAN check, plus `checkbashisms configure cleanup` (installed
    with Homebrew).
3.  Push, then wait for CI (check, codegen, pkgdown, webR) and R-hub:
    `gh workflow run rhub.yaml --ref main -f config="linux,macos-arm64,windows,gcc16,clang23,clang-ubsan,gcc-asan,lto,nosuggests"`.
    The dispatch sometimes returns HTTP 500; retry after 30 s.
4.  `git tag -a vX.Y.Z -m "raylibr X.Y.Z" <commit>`, push the tag, then
    `gh release create vX.Y.Z --notes-file <NEWS section> --verify-tag`.
5.  **win-builder**: FTP is blocked here, so
    `devtools::check_win_devel()` fails. Upload through the HTTPS form
    at `https://win-builder.r-project.org/upload.aspx` with curl: GET
    the page for `__VIEWSTATE`, `__VIEWSTATEGENERATOR` and
    `__EVENTVALIDATION`, then POST multipart with
    `FileUpload2`/`Button2` (R-devel) or `FileUpload1`/`Button1`
    (R-release). Success shows the uploaded file’s name and size.
    “Access to the path … is denied” means it’s already queued.
6.  Update `cran-comments.md` and submit (maintainer).

### 3.4 CI notes

- `check.yaml`: Windows installs Mesa llvmpipe into R’s `bin`, and Linux
  uses Xvfb; both set `RAYLIBR_GL=true`. macOS skips window tests.
- `pkgdown.yaml` and `webr.yaml` both push to `gh-pages`, and retry once
  after 30 s if their pushes collide. `pages.yaml` (added by the
  maintainer) publishes `gh-pages`.
- `codegen.yaml` pins roxygen2 7.3.3 and installs the X11/GL headers.
- `rhub.yaml` installs the X11/GL headers in its Linux jobs (step added
  by hand to the generated file).
- `git push` and the GitHub API occasionally fail for a moment here;
  retry.
