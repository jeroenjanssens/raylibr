% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{unload_texture}
\alias{unload_texture}
\title{Unload texture}
\usage{
unload_texture(texture)
}
\arguments{
\item{texture}{A texture.}
}
\description{
Unload texture from GPU memory (VRAM).
}
\note{
This function has been auto-generated from the following Raylib function definition:

\if{html}{\out{<div class="sourceCode">}}\preformatted{void UnloadTexture(Texture2D texture);
}\if{html}{\out{</div>}}
}
\seealso{
\code{\link[=texture]{texture()}} for creating texture objects.

Other texture functions: 
\code{\link{begin_texture_mode}()},
\code{\link{draw_cube_texture_rec}()},
\code{\link{draw_cube_texture}()},
\code{\link{draw_texture_ex}()},
\code{\link{draw_texture_npatch}()},
\code{\link{draw_texture_poly}()},
\code{\link{draw_texture_pro}()},
\code{\link{draw_texture_quad}()},
\code{\link{draw_texture_rec}()},
\code{\link{draw_texture_tiled}()},
\code{\link{draw_texture_v}()},
\code{\link{draw_texture}()},
\code{\link{end_texture_mode}()},
\code{\link{gen_texture_mipmaps}()},
\code{\link{load_image_from_texture}()},
\code{\link{load_render_texture}()},
\code{\link{load_texture_from_image}()},
\code{\link{load_texture}()},
\code{\link{set_shader_value_texture}()},
\code{\link{set_shapes_texture}()},
\code{\link{set_texture_filter}()},
\code{\link{set_texture_wrap}()},
\code{\link{texture}()},
\code{\link{unload_render_texture}()}
}
\concept{texture functions}
