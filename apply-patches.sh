#!/usr/bin/env bash
# Apply GroupMe 15.71.4 patches to a fresh apktool decompile.
#
# Usage:
#   apktool d base.apk -o base -r
#   ./apply-patches.sh base
#
# Pre-reqs in PATH: patch
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

cd "$target"

# Strip the leading "base_clean/" and "base/" path components from the diff
# (-p1 strips one component) and apply with up to 5 lines of fuzz for resilience
# against minor line shifts in adjacent GroupMe versions.
echo ">> applying groupme-patches.diff to $target/"
patch -p1 -F 5 --no-backup-if-mismatch --reject-file=- < "$diff_file"
echo ">> done"
