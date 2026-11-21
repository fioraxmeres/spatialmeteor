#!/usr/bin/env bash
set -e
REPO="fioraxmeres/spatialmeteor"
TAG="cosmic-canyon-cosmic-harbor"
LIB="phosphate-plank.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
