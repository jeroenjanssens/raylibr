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

Other music functions:
[`get_music_time_length()`](https://jeroenjanssens.github.io/raylibr/reference/get_music_time_length.md),
[`get_music_time_played()`](https://jeroenjanssens.github.io/raylibr/reference/get_music_time_played.md),
[`is_music_stream_playing()`](https://jeroenjanssens.github.io/raylibr/reference/is_music_stream_playing.md),
[`is_music_valid()`](https://jeroenjanssens.github.io/raylibr/reference/is_music_valid.md),
[`load_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/load_music_stream.md),
[`pause_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/pause_music_stream.md),
[`play_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/play_music_stream.md),
[`resume_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/resume_music_stream.md),
[`set_music_pan()`](https://jeroenjanssens.github.io/raylibr/reference/set_music_pan.md),
[`set_music_pitch()`](https://jeroenjanssens.github.io/raylibr/reference/set_music_pitch.md),
[`set_music_volume()`](https://jeroenjanssens.github.io/raylibr/reference/set_music_volume.md),
[`stop_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/stop_music_stream.md),
[`unload_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/unload_music_stream.md),
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)

## Examples

``` r
if (FALSE) {
seek_music_stream(load_music_stream("music.mp3"), 0.0)
}
```
