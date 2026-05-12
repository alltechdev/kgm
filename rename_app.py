#!/usr/bin/env python3
"""Rename app from "GroupMe" to "RetroGM" by hex-editing resources.arsc.

Both names are 7 chars, so we can do a same-length swap without touching
length-prefixes anywhere. Strings in resources.arsc are typically stored
as either UTF-8 or UTF-16LE, so we replace both byte forms.
"""
import sys

base = sys.argv[1] if len(sys.argv) > 1 else "base"
TARGET = f"{base}/resources.arsc"

OLD = "GroupMe"
NEW = "RetroGM"
assert len(OLD) == len(NEW)

with open(TARGET, "rb") as fh:
    data = fh.read()

# Replace UTF-8 form
old_u8 = OLD.encode("utf-8")
new_u8 = NEW.encode("utf-8")
count_u8 = data.count(old_u8)
data = data.replace(old_u8, new_u8)

# Replace UTF-16LE form
old_u16 = OLD.encode("utf-16le")
new_u16 = NEW.encode("utf-16le")
count_u16 = data.count(old_u16)
data = data.replace(old_u16, new_u16)

with open(TARGET, "wb") as fh:
    fh.write(data)

print(f"UTF-8 hits replaced:  {count_u8}")
print(f"UTF-16 hits replaced: {count_u16}")
