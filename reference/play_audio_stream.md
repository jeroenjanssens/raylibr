# Play Audio Stream

Play audio stream.

## Usage

``` r
play_audio_stream(stream)
```

## Arguments

- stream:

  An audio_stream.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void PlayAudioStream(AudioStream stream);

## See also

Other stream functions:
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`pause_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_music_stream.md),
[`play_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_music_stream.md),
[`resume_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_music_stream.md),
[`seek_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/seek_music_stream.md),
[`stop_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_audio_stream.md),
[`stop_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_music_stream.md),
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

Other play functions:
[`play_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_music_stream.md),
[`play_sound()`](https://jeroenjanssens.github.io/raylibr/reference/play_sound.md)

## Examples

``` r
if (FALSE) { # \dontrun{
play_audio_stream(load_audio_stream(44100L, 16L, 1L))
} # }
```
