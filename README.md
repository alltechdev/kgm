# RetroGM

GroupMe Android **15.71.4** (`versionCode 261310204`) rebranded as **RetroGM** — black launcher icon, Microsoft Teams calling stripped, Copilot stripped, Calendar + Events stripped, plus a long list of UI cleanups documented in [`PATCHES.md`](PATCHES.md).

## Build

```bash
apktool d base.apk -o base -r
./apply-patches.sh base
apktool b base -o out.apk
zipalign -p -f 4 out.apk aligned.apk
apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android \
  --key-pass pass:android --out signed.apk aligned.apk
```

Pre-reqs: `apktool`, `patch`, `python3`, `zipalign`, `apksigner`.

Signed APK is on the [latest RetroGM pre-release](https://github.com/alltechdev/kgm/releases/tag/v0.1-pre) if you don't want to build.

See [`PATCHES.md`](PATCHES.md) for what each patch does.
