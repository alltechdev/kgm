#!/usr/bin/env bash
# Apply GroupMe 15.71.4 -> RetroGM patches to a fresh apktool decompile.
#
# Usage:
#   apktool d base.apk -o base -r
#   ./apply-patches.sh base
#
# Pre-reqs in PATH: patch, python3
set -euo pipefail

target="${1:-base}"
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
diff_file="$script_dir/groupme-patches.diff"

if [ ! -d "$target" ]; then
  echo "error: '$target' is not a directory (run apktool d base.apk -o $target -r first)" >&2
  exit 1
fi

if [ ! -f "$diff_file" ]; then
  echo "error: $diff_file missing" >&2
  exit 1
fi

# 1) Smali / text patches via unified diff (relative path-component strip = -p1
#    because the diff prefixes paths with base_clean/ and base/).
echo ">> applying groupme-patches.diff to $target/"
( cd "$target" && patch -p1 -F 5 --no-backup-if-mismatch --reject-file=- < "$diff_file" )

# 2) Binary edits the diff format can't carry. Each script takes the target
#    base dir as its only argument and hex-edits a compiled AXML or
#    resources.arsc in place.
echo ">> rebranding launcher: black background"
python3 "$script_dir/recolor_icon.py" "$target"
echo ">> rebranding launcher: shrink foreground glyph"
python3 "$script_dir/shrink_icon.py" "$target"
echo ">> rebranding launcher: recenter foreground glyph"
python3 "$script_dir/center_icon.py" "$target"
echo ">> rebranding app label to RetroGM"
python3 "$script_dir/rename_app.py" "$target"

echo ">> done"
