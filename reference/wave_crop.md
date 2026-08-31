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
[`export_wave()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave.md),
[`export_wave_as_code()`](https://jeroenjanssens.github.io/raylibr/reference/export_wave_as_code.md),
[`is_wave_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_wave_valid.md),
[`load_sound_from_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_sound_from_wave.md),
[`load_wave()`](https://jeroenjanssens.github.io/raylibr/reference/load_wave.md),
[`unload_wave()`](https://jeroenjanssens.github.io/raylibr/reference/unload_wave.md),
[`wave_format()`](https://jeroenjanssens.github.io/raylibr/reference/wave_format.md)

## Examples

``` r
if (FALSE) {
w <- load_wave("sound.wav")
wave_crop(w, 0L, 44100L)
}
```
