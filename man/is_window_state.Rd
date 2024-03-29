% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{is_window_state}
\alias{is_window_state}
\title{Is window state}
\usage{
is_window_state(flag)
}
\arguments{
\item{flag}{A non-negative integer.}
}
\value{
A logical
}
\description{
Check if one specific window flag is enabled.
}
\note{
This function has been auto-generated from the following Raylib function definition:

\if{html}{\out{<div class="sourceCode">}}\preformatted{bool IsWindowState(unsigned int flag);
}\if{html}{\out{</div>}}
}
\seealso{
Other window functions: 
\code{\link{clear_window_state}()},
\code{\link{close_window}()},
\code{\link{get_window_position}()},
\code{\link{get_window_scale_dpi}()},
\code{\link{init_window}()},
\code{\link{is_window_focused}()},
\code{\link{is_window_fullscreen}()},
\code{\link{is_window_hidden}()},
\code{\link{is_window_maximized}()},
\code{\link{is_window_minimized}()},
\code{\link{is_window_ready}()},
\code{\link{is_window_resized}()},
\code{\link{maximize_window}()},
\code{\link{minimize_window}()},
\code{\link{restore_window}()},
\code{\link{set_window_icon}()},
\code{\link{set_window_min_size}()},
\code{\link{set_window_monitor}()},
\code{\link{set_window_position}()},
\code{\link{set_window_size}()},
\code{\link{set_window_state}()},
\code{\link{set_window_title}()},
\code{\link{window_should_close}()}
}
\concept{window functions}
