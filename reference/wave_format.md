# Wave format

Convert wave data to desired format. Modifies the wave in place.

## Usage

``` r
wave_format(wave, sample_rate, sample_size, channels)
```

## Arguments

- wave:

  A wave.

- sample_rate:

  An integer.

- sample_size:

  An integer.

- channels:

  An integer.

## See also

Other wave functions:
[`export_wave()`](https://raylibr.jeroenjanssens.com/reference/export_wave.md),
[`export_wave_as_code()`](https://raylibr.jeroenjanssens.com/reference/export_wave_as_code.md),
[`is_wave_valid()`](https://raylibr.jeroenjanssens.com/reference/is_wave_valid.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`load_wave()`](https://raylibr.jeroenjanssens.com/reference/load_wave.md),
[`unload_wave()`](https://raylibr.jeroenjanssens.com/reference/unload_wave.md),
[`wave_crop()`](https://raylibr.jeroenjanssens.com/reference/wave_crop.md)

## Examples

``` r
if (FALSE) {
w <- load_wave("sound.wav")
wave_format(w, 44100L, 16L, 1L)
}
```
