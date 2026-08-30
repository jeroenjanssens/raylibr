# Run game loop

Portable game loop that works on both desktop and web (webR/Emscripten).
On desktop, runs a standard while loop. On web, registers a callback
with `emscripten_set_main_loop` so the browser event loop stays
responsive.

## Usage

``` r
run_game_loop(update_fn, init_fn = NULL, cleanup_fn = NULL)
```

## Arguments

- update_fn:

  A function called once per frame. Should contain
  [`begin_drawing()`](https://jeroenjanssens.github.io/raylibr/reference/begin_drawing.md)/[`end_drawing()`](https://jeroenjanssens.github.io/raylibr/reference/end_drawing.md)
  calls.

- init_fn:

  Optional function called once before the loop starts.

- cleanup_fn:

  Optional function called after the loop ends (e.g., to call
  [`close_window()`](https://jeroenjanssens.github.io/raylibr/reference/close_window.md)).
