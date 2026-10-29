# raylibr: R Wrapper for 'Raylib'

Wraps 'Raylib' (<https://www.raylib.com/>), a simple and easy-to-use C
library for videogames programming. Provides R functions for 2D/3D
rendering, audio, input handling, and GUI via 'raygui'.

## Resource management

Raylib resources such as textures, models, sounds, fonts, and shaders
allocate GPU or audio memory that R's garbage collector cannot
automatically release. Always call the corresponding `unload_*()`
function (e.g.,
[`unload_texture()`](https://jeroenjanssens.github.io/raylibr/reference/unload_texture.md),
[`unload_model()`](https://jeroenjanssens.github.io/raylibr/reference/unload_model.md))
before calling
[`close_window()`](https://jeroenjanssens.github.io/raylibr/reference/close_window.md).
Letting resource objects go out of scope without unloading them will
leak GPU/audio memory.

## See also

Useful links:

- <https://github.com/jeroenjanssens/raylibr>

- <https://jeroenjanssens.github.io/raylibr/>

- Report bugs at <https://github.com/jeroenjanssens/raylibr/issues>

## Author

**Maintainer**: Jeroen Janssens <jeroen@jeroenjanssens.com>
([ORCID](https://orcid.org/0000-0002-5878-8924))
