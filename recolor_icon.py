#!/usr/bin/env python3
"""Recolor the launcher icon background gradient to solid black.

Replaces three gradient stops (#3c16d3, #1271ff, #2cf2ff) in res/l_b.xml
with #000000 by hex-editing the compiled AXML. All three slots get
overwritten so the gradient renders flat.

Usage: ./recolor_icon.py <base-dir>
"""
import struct
import sys

base = sys.argv[1] if len(sys.argv) > 1 else "base"
TARGET = f"{base}/res/l_b.xml"

def to_le(color_hex):
    return struct.pack("<I", int(color_hex.lstrip("#"), 16))

OLD_COLORS = [
    to_le("ff3c16d3"),
    to_le("ff1271ff"),
    to_le("ff2cf2ff"),
]
NEW_COLOR = to_le("ff000000")

data = open(TARGET, "rb").read()
for old in OLD_COLORS:
    data = data.replace(old, NEW_COLOR)
open(TARGET, "wb").write(data)
print(f"recolor_icon: {TARGET} -> #000000")
