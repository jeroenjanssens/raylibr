#!/usr/bin/env bash
# Build WASM demos for the pkgdown site.
# Prerequisites: emsdk installed and activated (source ~/emsdk/emsdk_env.sh)
#
# Usage: bash inst/wasm/build.sh
#
# Output goes to docs/wasm/

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR="/tmp/raylibr-wasm-build"
OUT_DIR="${SCRIPT_DIR}/../../docs/wasm"
RAYLIB_TAR="${SCRIPT_DIR}/../raylib-6.0-minimal.tar.gz"

# Check emcc
command -v emcc >/dev/null 2>&1 || { echo "emcc not found. Run: source ~/emsdk/emsdk_env.sh"; exit 1; }

# Build Raylib for web
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"
tar xf "$RAYLIB_TAR" -C "$BUILD_DIR"
(cd "$BUILD_DIR/raylib-6.0-minimal/src" && make PLATFORM=PLATFORM_WEB -j$(sysctl -n hw.ncpu 2>/dev/null || nproc) 2>&1 | tail -1)

RAYLIB_LIB="$BUILD_DIR/raylib-6.0-minimal/src/libraylib.web.a"
RAYLIB_INC="$BUILD_DIR/raylib-6.0-minimal/src"

# Compile demos
mkdir -p "$OUT_DIR"
DEMOS="hello balls snake mouse"
FLAGS="-I${RAYLIB_INC} ${RAYLIB_LIB} -s USE_GLFW=3 -s ASYNCIFY -s TOTAL_MEMORY=67108864 -s FORCE_FILESYSTEM=1 --shell-file ${SCRIPT_DIR}/shell.html -DPLATFORM_WEB -Os"

for demo in $DEMOS; do
    echo -n "Compiling ${demo}... "
    emcc "${SCRIPT_DIR}/${demo}.c" -o "${OUT_DIR}/${demo}.html" $FLAGS
    echo "OK ($(du -h "${OUT_DIR}/${demo}.wasm" | cut -f1))"
done

echo "Done. Output in ${OUT_DIR}/"
