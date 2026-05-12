#!/usr/bin/env python3
"""Shrink the foreground glyph in the adaptive icon.

Approach: enlarge the foreground vector's viewport so the existing path
data (which uses coordinates ~29-80) renders at a smaller fraction of
the visible canvas. Path will appear at viewport-old / viewport-new of
its original size.

Original viewportWidth=108, viewportHeight=108 (stored as float 108.0).
We bump to 144 -> path at ~75% size (the path remains anchored to the
top-left ~30 unit region of the now-larger canvas; on most launcher
masks this still reads as roughly centered because the path itself is
near the middle of 108).
"""
import struct, sys
base = sys.argv[1] if len(sys.argv) > 1 else "base"
TARGET = f"{base}/res/Qrq.xml"

OLD = struct.pack('<f', 108.0)
NEW = struct.pack('<f', 144.0)

data = open(TARGET, 'rb').read()
n = data.count(OLD)
data = data.replace(OLD, NEW)
open(TARGET, 'wb').write(data)
print(f"replaced {n} occurrences of float 108.0 -> 144.0")
