# Seek Music Stream

Seek music to a position (in seconds).

## Usage

``` r
seek_music_stream(music, position)
```

## Arguments

- music:

  A music.

- position:

  A number.

## Note

This function has been auto-generated from the following Raylib function
definition:

    void SeekMusicStream(Music music, float position);

## See also

Other stream functions:
[`load_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_audio_stream.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`pause_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_music_stream.md),
[`play_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_audio_stream.md),
[`play_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_music_stream.md),
[`resume_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_music_stream.md),
[`stop_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_audio_stream.md),
[`stop_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_music_stream.md),
[`unload_audio_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_audio_stream.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

## Examples

``` r
if (FALSE) { # \dontrun{
seek_music_stream(load_music_stream("music.mp3"), 0.0)
} # }
```
