#!/usr/bin/env bash

CACHE_DIR="$HOME/.cache/song_art"
OUT_FILE="$CACHE_DIR/current.jpg"

mkdir -p "$CACHE_DIR"

art_url="$(playerctl metadata --format '{{mpris:artUrl}}')"
[[ -z "$art_url" ]] && exit 1

if [[ "$art_url" == file://* ]]; then
    cp -f "${art_url#file://}" "$OUT_FILE"
else
    curl -sSfL "$art_url" -o "$OUT_FILE" || exit 1
fi
