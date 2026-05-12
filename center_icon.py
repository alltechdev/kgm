#!/usr/bin/env python3
"""Shift the foreground glyph path by +18,+18 to recenter inside the
144x144 viewport set by shrink_icon.py.

The path has four absolute M/m commands that anchor sub-paths. Shifting
them by (+18, +18) translates the entire glyph because all the other
commands (h, v, c, etc.) are relative. Each replacement is same length
as the original so the AXML string-pool length-prefixes stay valid.
"""
import sys
base = sys.argv[1] if len(sys.argv) > 1 else "base"
TARGET = f"{base}/res/Qrq.xml"

REPLACEMENTS = [
    (b"m75.5,39.7", b"m93.5,57.7"),
    (b"M68.8,57.5", b"M86.8,75.5"),
    (b"M59.1,40v",  b"M77.1,58v"),
    (b"M52.5,43.3", b"M70.5,61.3"),
]

data = open(TARGET, "rb").read()
for old, new in REPLACEMENTS:
    assert len(old) == len(new), f"length mismatch: {old} vs {new}"
    if old not in data:
        # Could be UTF-16
        old_u16 = old.decode("ascii").encode("utf-16le")
        new_u16 = new.decode("ascii").encode("utf-16le")
        if old_u16 in data:
            data = data.replace(old_u16, new_u16)
            print(f"UTF-16 swap: {old.decode()} -> {new.decode()}")
        else:
            print(f"NOT FOUND: {old.decode()}")
    else:
        data = data.replace(old, new)
        print(f"UTF-8 swap:  {old.decode()} -> {new.decode()}")

open(TARGET, "wb").write(data)
