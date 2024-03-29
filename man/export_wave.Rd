% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{export_wave}
\alias{export_wave}
\title{Export wave}
\usage{
export_wave(wave, file_name)
}
\arguments{
\item{wave}{A wave.}

\item{file_name}{A string.}
}
\value{
A logical
}
\description{
Export wave data to file, returns true on success.
}
\note{
This function has been auto-generated from the following Raylib function definition:

\if{html}{\out{<div class="sourceCode">}}\preformatted{bool ExportWave(Wave wave, const char *fileName);
}\if{html}{\out{</div>}}
}
\seealso{
\code{\link[=wave]{wave()}} for creating wave objects.

Other wave functions: 
\code{\link{export_wave_as_code}()},
\code{\link{load_sound_from_wave}()},
\code{\link{load_wave}()},
\code{\link{unload_wave}()}
}
\concept{wave functions}
