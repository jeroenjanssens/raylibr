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
[`load_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/load_audio_stream.md),
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`pause_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_audio_stream.md),
[`pause_music_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_music_stream.md),
[`play_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/play_audio_stream.md),
[`play_music_stream()`](https://raylibr.jeroenjanssens.com/reference/play_music_stream.md),
[`resume_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_audio_stream.md),
[`resume_music_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_music_stream.md),
[`stop_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_audio_stream.md),
[`stop_music_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_music_stream.md),
[`unload_audio_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_audio_stream.md),
[`unload_music_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_music_stream.md),
[`update_music_stream()`](https://raylibr.jeroenjanssens.com/reference/update_music_stream.md)

Other music functions:
[`get_music_time_length()`](https://raylibr.jeroenjanssens.com/reference/get_music_time_length.md),
[`get_music_time_played()`](https://raylibr.jeroenjanssens.com/reference/get_music_time_played.md),
[`is_music_stream_playing()`](https://raylibr.jeroenjanssens.com/reference/is_music_stream_playing.md),
[`is_music_valid()`](https://raylibr.jeroenjanssens.com/reference/is_music_valid.md),
[`load_music_stream()`](https://raylibr.jeroenjanssens.com/reference/load_music_stream.md),
[`pause_music_stream()`](https://raylibr.jeroenjanssens.com/reference/pause_music_stream.md),
[`play_music_stream()`](https://raylibr.jeroenjanssens.com/reference/play_music_stream.md),
[`resume_music_stream()`](https://raylibr.jeroenjanssens.com/reference/resume_music_stream.md),
[`set_music_pan()`](https://raylibr.jeroenjanssens.com/reference/set_music_pan.md),
[`set_music_pitch()`](https://raylibr.jeroenjanssens.com/reference/set_music_pitch.md),
[`set_music_volume()`](https://raylibr.jeroenjanssens.com/reference/set_music_volume.md),
[`stop_music_stream()`](https://raylibr.jeroenjanssens.com/reference/stop_music_stream.md),
[`unload_music_stream()`](https://raylibr.jeroenjanssens.com/reference/unload_music_stream.md),
[`update_music_stream()`](https://raylibr.jeroenjanssens.com/reference/update_music_stream.md)

## Examples

``` r
if (FALSE) {
seek_music_stream(load_music_stream("music.mp3"), 0.0)
}
```
