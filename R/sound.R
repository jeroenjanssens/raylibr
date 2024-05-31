# Do not edit by hand.

#' Sound
#'
#' Create a new sound object.
#'
#' @param stream An audio_stream. Audio stream.
#' @param frame_count A non-negative integer. Total number of frames (considering channels).
#'
#' @return A sound
#'
#' @note This class has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Sound {
#'     AudioStream stream;         // Audio stream
#'     unsigned int frameCount;    // Total number of frames (considering channels)
#' } Sound;
#' ```
#'
#' @rdname sound
#'
#' @family sound functions
#'
#' @export
sound <- function(stream, frame_count) {
  if (!is_audio_stream(stream)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(stream), '.'), call = NULL)
  if (!is_unsigned_int(frame_count)) abort(paste0('`frame_count` must be a non-negative integer, not ', friendly_typeof(frame_count), '.'), call = NULL)
  sound_(stream, frame_count)
}

sound_set <- function(o, field, value) {
  if (field == "stream") {
    if (!is_audio_stream(value)) abort(paste0('`stream` must be an audio_stream, not ', friendly_typeof(value), '.'), call = NULL)
    sound_set_stream_(o, value)
  } else if (field == "frame_count") {
    if (!is_unsigned_int(value)) abort(paste0('`frame_count` must be a non-negative integer, not ', friendly_typeof(value), '.'), call = NULL)
    sound_set_frame_count_(o, value)
  } else {
    abort(paste0("`sound` has no property ", field , "."), call = NULL)
  }
}

sound_get <- function(o, field) {
  if (field == "stream") {
    sound_get_stream_(o)
  } else if (field == "frame_count") {
    sound_get_frame_count_(o)
  } else {
    abort(paste0("`sound` has no property ", field , "."), call = NULL)
  }
}

#' @export
"$.raylibr_sound" <- function(o, field) {
  sound_get(o, field)
}

#' @export
"$<-.raylibr_sound" <- function(o, field, value) {
  sound_set(o, field, value)
}

#' @export
.DollarNames.raylibr_sound <- function(x, pattern) {
  c("stream", "frame_count")
}

#' @export
"[.raylibr_sound" <- `$.raylibr_sound`

#' @export
"[[.raylibr_sound" <- `$.raylibr_sound`

#' @export
"[<-.raylibr_sound" <- `$<-.raylibr_sound`

#' @export
"[[<-.raylibr_sound" <- `$<-.raylibr_sound`

#' @export
print.raylibr_sound <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.raylibr_sound <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("sound(", res, ")")
}

#' @export
is_sound <- function(x) {
  typeof(x) == "externalptr" && class(x) == "raylibr_sound"
}
