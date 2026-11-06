# Check if running on web

Returns TRUE when running under Emscripten/webR, FALSE otherwise.

## Usage

``` r
is_web()
```

## Value

Logical

## See also

Other webR / Emscripten:
[`eval_js()`](https://raylibr.jeroenjanssens.com/reference/eval_js.md),
[`export_html()`](https://raylibr.jeroenjanssens.com/reference/export_html.md),
[`run_game_loop()`](https://raylibr.jeroenjanssens.com/reference/run_game_loop.md)

## Examples

``` r
is_web()
#> [1] FALSE
```
