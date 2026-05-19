#!/usr/bin/env bash
# Refresh self-hosted variable fonts from upstream.
# Reads URLs from fonts.txt (lines starting with # are ignored).
set -euo pipefail

cd "$(dirname "$0")/.."
DEST="./assets/font-files"
mkdir -p "$DEST"

grep -vE '^\s*(#|$)' fonts.txt | while IFS= read -r url; do
    # Normalize JetBrains "[wght]" bracket filenames to the expected local name.
    case "$url" in
        *"JetBrainsMono[wght].woff2")     target="JetBrainsMonoVariable.woff2" ;;
        *"JetBrainsMono-Italic[wght].woff2") target="JetBrainsMonoVariable-Italic.woff2" ;;
        *) target="$(basename "$url")" ;;
    esac
    echo "Fetching $url -> $DEST/$target"
    curl -fsSL -o "$DEST/$target" "$url"
done

echo "Done. $(ls -1 "$DEST" | wc -l | tr -d ' ') font files in $DEST."
