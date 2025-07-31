#!/bin/bash
# wallpick-kitty-final.sh

selected=$(find ~/Pictures -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) \
    | fzf --preview 'kitty +kitten icat --clear && kitty +kitten icat {}' --preview-window=right:60%:wrap)

if [ -n "$selected" ]; then
    caelestia wallpaper -f "$selected"
    echo "✅ Wallpaper set to: $selected"
else
    echo "❌ Cancelled."
fi
