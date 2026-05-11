# kgm

Patches for GroupMe Android **15.71.4** (`versionCode 261310204`).

## Build

```bash
apktool d base.apk -o base -r
./apply-patches.sh base
apktool b base -o out.apk
zipalign -p -f 4 out.apk aligned.apk
apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android \
  --key-pass pass:android --out signed.apk aligned.apk
```

## Install

```bash
pm install signed.apk
```

Signed APK is on the [latest release](https://github.com/alltechdev/kgm/releases/latest) if you don't want to build.

See [`PATCHES.md`](PATCHES.md) for what each patch does.
