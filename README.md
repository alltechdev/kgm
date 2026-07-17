# GroupMe 15.71.4 Patch Set

Patches for GroupMe Android **15.71.4** (`versionCode 261310204`).

## Branches

| Branch | Description |
|--------|-------------|
| `main` | **RetroGM** - full rebrand with black launcher icon, app renamed to RetroGM, Teams calling stripped, Copilot stripped, Calendar + Events stripped, UI cleanups |
| `gm-original` | **GroupMe (original branding)** - same functional patches (Copilot, Play Integrity bypass) but keeps original GroupMe name and icon |

## Releases

- [RetroGM 15.71.4-mod-4](https://github.com/alltechdev/kgm/releases/tag/v15.71.4-mod-4) - latest rebranded build
- [GroupMe 15.71.4-mod-3.1](https://github.com/alltechdev/kgm/releases/tag/v15.71.4-mod-3.1) - original branding with Play Integrity bypass

## Build

```bash
apktool d base.apk -o base -r
./apply-patches.sh base
apktool b base -o out.apk
zipalign -p -f 4 out.apk aligned.apk
apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android \
  --key-pass pass:android --out signed.apk aligned.apk
```

Pre-reqs: `apktool`, `patch`, `python3` (main branch only), `zipalign`, `apksigner`.

See [`PATCHES.md`](PATCHES.md) for what each patch does.
