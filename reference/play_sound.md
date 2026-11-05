# Play Sound

Play a sound.

## Usage

``` r
play_sound(sound)
```

## Arguments

- sound:

  A sound.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void PlaySound(Sound sound);

## See also

Other sound functions:
[`is_sound_playing()`](https://raylibr.jeroenjanssens.com/reference/is_sound_playing.md),
[`is_sound_valid()`](https://raylibr.jeroenjanssens.com/reference/is_sound_valid.md),
[`load_sound()`](https://raylibr.jeroenjanssens.com/reference/load_sound.md),
[`load_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/load_sound_alias.md),
[`load_sound_from_wave()`](https://raylibr.jeroenjanssens.com/reference/load_sound_from_wave.md),
[`pause_sound()`](https://raylibr.jeroenjanssens.com/reference/pause_sound.md),
[`resume_sound()`](https://raylibr.jeroenjanssens.com/reference/resume_sound.md),
[`set_sound_pan()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pan.md),
[`set_sound_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_sound_pitch.md),
[`set_sound_volume()`](https://raylibr.jeroenjanssens.com/reference/set_sound_volume.md),
[`stop_sound()`](https://raylibr.jeroenjanssens.com/reference/stop_sound.md),
[`unload_sound()`](https://raylibr.jeroenjanssens.com/reference/unload_sound.md),
[`unload_sound_alias()`](https://raylibr.jeroenjanssens.com/reference/unload_sound_alias.md)

Other play functions:
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`play_music_stream()`](https://raylibr.jeroenjanssens.com/reference/play_music_stream.md)

## Examples

``` r
if (FALSE) {
play_sound(load_sound("sound.wav"))
}
```
