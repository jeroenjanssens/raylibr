// Local implementations of C stdlib functions whose signatures (involving i64)
// mismatch between Emscripten SIDE_MODULE and webR's main module.
// Compiled into the SIDE_MODULE so these symbols resolve locally.

#include <stdlib.h>
#include <time.h>
#include <emscripten.h>

long long atoll(const char *s) {
    return (long long)strtol(s, NULL, 10);
}

time_t time(time_t *t) {
    time_t now = (time_t)(emscripten_get_now() / 1000.0);
    if (t) *t = now;
    return now;
}

div_t div(int numer, int denom) {
    div_t r;
    r.quot = numer / denom;
    r.rem = numer % denom;
    return r;
}
