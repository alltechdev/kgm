#!/usr/bin/env bash
# Apply GroupMe 15.71.4 patches to a fresh apktool decompile.
#
# Usage:
#   ./apply-patches.sh <decompiled_dir>
#
# Strategy: prefer `patch` with fuzz so minor line shifts in adjacent versions
# don't break us; fall back to anchor-based python rewrite for patches that
# `patch` can't apply.
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

cd "$target"

# Strip the leading "base_clean/" and "base/" path components from the diff
# (-p1 strips one component) and apply with up to 5 lines of fuzz, ignoring
# whitespace differences.
echo ">> applying groupme-patches.diff to $target/"
if patch -p1 -F 5 --no-backup-if-mismatch --reject-file=- < "$diff_file"; then
  echo ">> all patches applied cleanly"
  exit 0
fi

echo ">> patch rejected some hunks; falling back to anchor-based rewrites" >&2
python3 "$script_dir/apply-patches.py" "$PWD"
