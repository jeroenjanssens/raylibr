% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/camera_2d.R
\name{camera_2d}
\alias{camera_2d}
\title{Camera 2d}
\usage{
camera_2d(offset, target, rotation, zoom = 1)
}
\arguments{
\item{offset}{A numeric vector of length 2. Camera offset (displacement from target).}

\item{target}{A numeric vector of length 2. Camera target (rotation and zoom origin).}

\item{rotation}{A number. Camera rotation in degrees.}

\item{zoom}{A number. Camera zoom (scaling). Default: \code{1}.}
}
\value{
A camera_2d
}
\description{
Create a new camera_2d object.
}
\note{
This class has been auto-generated from the following Raylib struct definition:

\if{html}{\out{<div class="sourceCode">}}\preformatted{typedef struct Camera2D \{
    Vector2 offset;         // Camera offset (displacement from target)
    Vector2 target;         // Camera target (rotation and zoom origin)
    float rotation;         // Camera rotation in degrees
    float zoom;             // Camera zoom (scaling), should be 1.0f by default
\} Camera2D;
}\if{html}{\out{</div>}}
}
\concept{camera_2d functions}
