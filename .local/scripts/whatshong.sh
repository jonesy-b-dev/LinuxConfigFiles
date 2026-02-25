#!/usr/bin/env bash

# Grab metadata
info="$(playerctl metadata --format '{{artist}} - {{title}}')"
echo "$info"
