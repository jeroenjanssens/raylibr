# Do not edit by hand

#' Sound
#'
#' Create a new `sound` object.
#'
#' @param stream A audio_stream. Audio stream.
#' @param frame_count A non-negative integer. Total number of frames (considering channels).
#'
#' @note This object has been auto-generated from the following Raylib struct definition:
#'
#' ```
#' typedef struct Sound {
#'     AudioStream stream;         // Audio stream
#'     unsigned int frameCount;    // Total number of frames (considering channels)
#' } Sound;
#' ```

#' @rdname sound
#' @export
sound <- function(stream, frameCount) {
  sound_(stream, frame_count)
}

sound_set <- function(o, field, value) {
  do.call(paste0("sound_set_", field, "_"), args = list(o, value))
}

sound_get <- function(o, field) {
  do.call(paste0("sound_get_", field, "_"), args = list(o))
}

#' @export
"$.sound" <- function(o, field) {
  sound_get(o, field)
}

#' @export
"$<-.sound" <- function(o, field, value) {
  sound_set(o, field, value)
}

#' @importFrom utils .DollarNames
#' @export
.DollarNames.sound <- function(x, pattern) {
  c("stream", "frame_count")
}

#' @export
"[.sound" <- `$.sound`

#' @export
"[[.sound" <- `$.sound`

#' @export
"[<-.sound" <- `$<-.sound`

#' @export
"[[<-.sound" <- `$<-.sound`

#' @export
print.sound <- function(x, ...) {
  cat(as.character(x), "\n")
}

#' @export
as.character.sound <- function(x, ...) {
  fields <- .DollarNames(x)
  values <- vapply(fields, function(field) {
    val <- x[[field]]
    paste(as.character(val), collapse = ", ")
  }, character(1))
  res <- paste(fields, values, sep = " = ", collapse = ", ")
  paste0("sound(", res, ")")
}
