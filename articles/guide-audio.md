# Audio

raylibr supports sound effects and music playback through Raylib’s audio
system. The audio device is automatically initialized when you call
[`init_window()`](https://jeroenjanssens.github.io/raylibr/reference/init_window.md).

## Sound effects

Sounds are loaded entirely into memory – use them for short clips like
explosions, clicks, or notifications.

``` r

library(raylibr)

snd <- load_sound("explosion.wav")
play_sound(snd)
```

Control playback:

``` r

pause_sound(snd)
resume_sound(snd)
stop_sound(snd)
is_sound_playing(snd)  # TRUE/FALSE
```

Adjust volume (0.0 to 1.0), pitch (1.0 = normal), and stereo pan (0.0 =
left, 0.5 = center, 1.0 = right):

``` r

set_sound_volume(snd, 0.5)
set_sound_pitch(snd, 1.2)
set_sound_pan(snd, 0.0)
```

Free memory when done:

``` r

unload_sound(snd)
```

## Music streams

Music streams read audio data in small chunks, making them suitable for
longer tracks like background music. The key difference from sounds: you
must call
[`update_music_stream()`](https://jeroenjanssens.github.io/raylibr/reference/update_music_stream.md)
every frame to feed the audio buffer.

``` r

music <- load_music_stream("background.ogg")
play_music_stream(music)

# inside game loop:
update_music_stream(music)
```

A typical game loop with music:

``` r

run_game_loop(
  init_fn = function() {
    init_window(800L, 600L, "Music Demo")
    set_target_fps(60L)
    music <<- load_music_stream(raylibr_resource("music.ogg"))
    play_music_stream(music)
  },
  update_fn = function() {
    update_music_stream(music)

    played <- get_music_time_played(music)
    total <- get_music_time_length(music)

    begin_drawing()
    clear_background("black")
    draw_text(sprintf("%.1f / %.1f sec", played, total), 20L, 20L, 20L, "white")
    end_drawing()
  },
  cleanup_fn = function() {
    unload_music_stream(music)
    close_window()
  }
)
```

Control music playback:

``` r

pause_music_stream(music)
resume_music_stream(music)
stop_music_stream(music)
seek_music_stream(music, 30.0)  # jump to 30 seconds
set_music_volume(music, 0.8)
set_music_pitch(music, 1.0)
set_music_pan(music, 0.5)
```

## Master volume

Control the overall output volume:

``` r

set_master_volume(0.5)  # 50% volume
vol <- get_master_volume()
```

## Wave data

For low-level audio manipulation, load raw wave data:

``` r

wave <- load_wave("sound.wav")
wave_crop(wave, 1000L, 5000L)              # trim to frames 1000-5000
wave_format(wave, 44100L, 16L, 1L)         # resample to 44.1kHz, 16-bit, mono
export_wave(wave, "trimmed.wav")
snd <- load_sound_from_wave(wave)           # convert to playable sound
unload_wave(wave)
```

## Standalone audio

If you need audio without a window, initialize the audio device
directly:

``` r

init_audio_device()
snd <- load_sound("beep.wav")
play_sound(snd)
Sys.sleep(1)
unload_sound(snd)
close_audio_device()
```

## See also

For complete audio examples, see the
[Beatbox](https://jeroenjanssens.github.io/raylibr/articles/demo-beatbox.md)
demo (sound effects) and the [Waving
Cubes](https://jeroenjanssens.github.io/raylibr/articles/demo-cubes.md)
demo (music stream).
