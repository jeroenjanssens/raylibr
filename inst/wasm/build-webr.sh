#!/usr/bin/env bash
# Build raylibr WASM package for webR
# Requires: Emscripten SDK (~/emsdk), R, Rcpp
set -euo pipefail

RAYLIBR_DIR="$(cd "$(dirname "$0")/../.."; pwd)"
BUILD_DIR="${BUILD_DIR:-/tmp/webr-local-build}"
REPO_DIR="$RAYLIBR_DIR/pkgdown/assets/wasm/repo/bin/emscripten/contrib/4.6"

source ~/emsdk/emsdk_env.sh 2>/dev/null

R_INCLUDE="$(R RHOME)/include"
RCPP_INCLUDE="$(Rscript -e 'cat(system.file("include", package="Rcpp"))')"

mkdir -p "$BUILD_DIR/inst-include"

echo "=== Building Raylib (PLATFORM_WEB_EMSCRIPTEN) ==="
cd "$BUILD_DIR"
rm -rf raylib-6.0-minimal
tar -xf "$RAYLIBR_DIR/inst/raylib-6.0-minimal.tar.gz"
cd raylib-6.0-minimal/src

# Add -fPIC for SIDE_MODULE compatibility
sed -i.bak 's/^CFLAGS = -Wall/CFLAGS = -Wall -fPIC/' Makefile

# Patch Raylib sources for webR worker support (SharedArrayBuffer input, BroadcastChannel frames)
python3 "$RAYLIBR_DIR/inst/wasm/patch_raylib.py"

# Compile Raylib
for src in rcore rshapes rtextures rtext rmodels; do
    emcc -Wall -fPIC -D_GNU_SOURCE -DPLATFORM_WEB_EMSCRIPTEN -DGRAPHICS_API_OPENGL_ES2 \
        -Wno-missing-braces -std=gnu99 -Os -I. -c ${src}.c -o ${src}.o
done
emcc -Wall -fPIC -D_GNU_SOURCE -DPLATFORM_WEB_EMSCRIPTEN -DGRAPHICS_API_OPENGL_ES2 \
    -Wno-missing-braces -std=gnu99 -Os -I. -c raudio.c -o raudio.o

emar rcs "$BUILD_DIR/libraylib.web.a" rcore.o rshapes.o rtextures.o rtext.o rmodels.o raudio.o

# Copy headers
for h in raylib.h raymath.h rlgl.h rcamera.h; do
    cp "$BUILD_DIR/raylib-6.0-minimal/src/$h" "$BUILD_DIR/inst-include/"
done
cp "$RAYLIBR_DIR/inst/raygui.h" "$BUILD_DIR/inst-include/"

echo "=== Compiling raylibr C++ sources ==="
cd "$BUILD_DIR"
SRCS="audio core models raygui_impl raygui_funcs raymath_funcs rcolors RcppExports rlgl shapes structs text textures types web manual_wrappers"
for src in $SRCS; do
    em++ -std=gnu++17 -Oz -fPIC -fvisibility=hidden \
        -DPLATFORM_WEB_EMSCRIPTEN -DRCPP_DEMANGLER_ENABLED=0 -D__STRICT_ANSI__ -DNDEBUG \
        -I"$R_INCLUDE" -I"$RCPP_INCLUDE" -I"$BUILD_DIR/inst-include" \
        -c "$RAYLIBR_DIR/src/$src.cpp" -o "$BUILD_DIR/$src.o"
done

echo "=== Linking raylibr.so ==="
em++ -s SIDE_MODULE=1 -Oz \
    $BUILD_DIR/audio.o $BUILD_DIR/core.o $BUILD_DIR/models.o \
    $BUILD_DIR/raygui_impl.o $BUILD_DIR/raygui_funcs.o $BUILD_DIR/raymath_funcs.o \
    $BUILD_DIR/rcolors.o $BUILD_DIR/RcppExports.o $BUILD_DIR/rlgl.o \
    $BUILD_DIR/shapes.o $BUILD_DIR/structs.o $BUILD_DIR/text.o \
    $BUILD_DIR/textures.o $BUILD_DIR/types.o $BUILD_DIR/web.o \
    $BUILD_DIR/manual_wrappers.o $BUILD_DIR/libraylib.web.a \
    -o $BUILD_DIR/raylibr.so

echo "=== Packaging for webR ==="
R_LIB="$(Rscript -e 'cat(.libPaths()[1])')"
PKG_DIR="$BUILD_DIR/raylibr-pkg"
rm -rf "$PKG_DIR"
mkdir -p "$PKG_DIR/raylibr/libs" "$PKG_DIR/raylibr/R" "$PKG_DIR/raylibr/Meta"

cp "$BUILD_DIR/raylibr.so" "$PKG_DIR/raylibr/libs/raylibr.so"
cp "$RAYLIBR_DIR/NAMESPACE" "$PKG_DIR/raylibr/"
cp "$RAYLIBR_DIR/DESCRIPTION" "$PKG_DIR/raylibr/"
cp "$R_LIB/raylibr/R/raylibr" "$PKG_DIR/raylibr/R/"
cp "$R_LIB/raylibr/R/raylibr.rdb" "$PKG_DIR/raylibr/R/"
cp "$R_LIB/raylibr/R/raylibr.rdx" "$PKG_DIR/raylibr/R/"
cp -r "$R_LIB/raylibr/Meta" "$PKG_DIR/raylibr/"
[ -d "$R_LIB/raylibr/demo_resources" ] && cp -r "$R_LIB/raylibr/demo_resources" "$PKG_DIR/raylibr/"

cd "$PKG_DIR"
xattr -cr raylibr 2>/dev/null || true
COPYFILE_DISABLE=1 tar --no-xattrs --no-mac-metadata -czf raylibr_6.0.0.9001.tgz raylibr

mkdir -p "$REPO_DIR"
cp "$PKG_DIR/raylibr_6.0.0.9001.tgz" "$REPO_DIR/"
cd "$REPO_DIR"
Rscript -e 'tools::write_PACKAGES(".", type="source")'

echo "=== Done! Package at $REPO_DIR/raylibr_6.0.0.9001.tgz ==="
ls -la "$REPO_DIR/raylibr_6.0.0.9001.tgz"
