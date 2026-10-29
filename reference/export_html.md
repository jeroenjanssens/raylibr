# Export R script as webR HTML

Generate an HTML file that runs a raylibr R script in the browser using
webR. Input features (mouse, keyboard, audio) are auto-detected from the
R code.

## Usage

``` r
export_html(
  script,
  output = NULL,
  title = NULL,
  width = NULL,
  height = NULL,
  background = "#000",
  cursor = NULL
)
```

## Arguments

- script:

  Path to an R script file.

- output:

  Path for the output HTML file. Defaults to replacing the `.R`
  extension with `.html`.

- title:

  Page title. Auto-detected from
  [`init_window()`](https://jeroenjanssens.github.io/raylibr/reference/init_window.md)
  if not specified.

- width:

  Canvas width in pixels. Auto-detected from
  [`init_window()`](https://jeroenjanssens.github.io/raylibr/reference/init_window.md)
  if not specified.

- height:

  Canvas height in pixels. Auto-detected from
  [`init_window()`](https://jeroenjanssens.github.io/raylibr/reference/init_window.md)
  if not specified.

- background:

  CSS background color for the page.

- cursor:

  CSS cursor style for the canvas (e.g., `"crosshair"`, `"default"`).
  When `NULL` (the default), no cursor rule is emitted.

## Value

The output file path (invisibly). Also copies required JavaScript helper
files (`coi-serviceworker.js`, `raylibr-host.js`, `raylibr-audio.js`) to
the output directory if they are not already present.

## Details

The generated HTML expects a `repo/` subdirectory containing the raylibr
webR package built with `inst/wasm/build-webr.sh`.

Input features are detected by scanning the R code:

- Mouse position:
  [`get_mouse_position()`](https://jeroenjanssens.github.io/raylibr/reference/get_mouse_position.md),
  etc.

- Mouse buttons:
  [`is_mouse_button_down()`](https://jeroenjanssens.github.io/raylibr/reference/is_mouse_button_down.md),
  etc.

- Keyboard (one-shot):
  [`get_key_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/get_key_pressed.md),
  [`is_key_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_pressed.md)

- Keyboard (held):
  [`is_key_down()`](https://jeroenjanssens.github.io/raylibr/reference/is_key_down.md)

- Text input:
  [`gui_text_box()`](https://jeroenjanssens.github.io/raylibr/reference/gui_text_box.md),
  [`get_char_pressed()`](https://jeroenjanssens.github.io/raylibr/reference/get_char_pressed.md)

- Audio:
  [`init_audio_device()`](https://jeroenjanssens.github.io/raylibr/reference/init_audio_device.md),
  [`load_sound()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound.md),
  etc.

Key mappings are built automatically from `key$...` references in the
script. The JavaScript keyboard handler includes a single-character
fallback so letter, digit, and punctuation keys work without explicit
map entries.

## Examples

``` r
if (FALSE) {
export_html("game.R")
export_html("game.R", "output/game.html", title = "My Game")
}
```
