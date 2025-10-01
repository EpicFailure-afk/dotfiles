#!/bin/bash

# Script to spawn a new floating kitty terminal

WINDOW_CLASS="floating-kitty"
WINDOW_TITLE="kitty"

# Get cursor position
CURSOR_POS=$(hyprctl cursorpos)
CURSOR_X=$(echo $CURSOR_POS | cut -d',' -f1)
CURSOR_Y=$(echo $CURSOR_POS | cut -d',' -f2)

# Calculate window position (center the window at cursor)
WINDOW_WIDTH=800
WINDOW_HEIGHT=500
POS_X=$((CURSOR_X - WINDOW_WIDTH / 2))
POS_Y=$((CURSOR_Y - WINDOW_HEIGHT / 2))

# Ensure the window doesn't go off-screen
if [ $POS_X -lt 0 ]; then
    POS_X=0
fi
if [ $POS_Y -lt 0 ]; then
    POS_Y=0
fi

# Launch floating kitty at cursor position
kitty --class="$WINDOW_CLASS" --title="$WINDOW_TITLE" &
