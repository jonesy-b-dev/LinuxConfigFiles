#!/bin/bash

MOUNTPOINT="/"
PREFIX=""

if mountpoint -q $MOUNTPOINT; then
    USAGE=$(df -h $MOUNTPOINT | awk 'NR==2 {print $5}')
    echo "%{F#fca103}$PREFIX%{F-} $USAGE"
else
    echo "$PREFIX not mounted"
fi
