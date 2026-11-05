# Wave crop

Crop a wave to defined frames range. Modifies the wave in place.

## Usage

``` r
wave_crop(wave, init_frame, final_frame)
```

## Arguments

- wave:

  A wave.

- init_frame:

  An integer. Initial frame.

- final_frame:

  An integer. Final frame.

## See also

Other wave functions:
[`export_wave()`](https://raylibr.jeroenjanssens.com/reference/export_wave.md),
[`export_wave_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_wave_as_code.md),
[`is_wave_valid()`](https://raylibr.jeroenjanssens.com/reference/is_wave_valid.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md),
[`unload_wave()`](https://raylibr.jeroenjanssens.com/reference/unload_wave.md),
[`wave_format()`](https://raylibr.jeroenjanssens.com/reference/wave_format.md)

## Examples

``` r
if (FALSE) {
w <- load_wave("sound.wav")
wave_crop(w, 0L, 44100L)
}
```
