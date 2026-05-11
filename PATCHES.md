# GroupMe 15.71.4 — Patch Set

Patched APK strips the Discover tab, all in-app WebView surfaces, the Profile
glow-up nudge, the Help Center menu row, Facebook/Spotify/Interests profile
sections, and all rich link previews in chat. Tappable URLs in chat still
open in the system browser; everything else still works.

## Inputs / outputs

| File | Role |
|------|------|
| `base.apk` | Unmodified GroupMe 15.71.4 (versionCode 261310204) — input |
| `base/` | Patched apktool decompile (`apktool d -r`, no resources) |
| `base-signed.apk` | Final aligned + debug-signed output |
| `groupme-patches.diff` | Unified diff against a clean decompile |
| `apply-patches.sh` | Driver: runs `patch -p1 -F 5`, falls back to python |
| `apply-patches.py` | Anchor-based fallback; one tuple per `Edit()` call |

## Rebuild from this repo

```bash
apktool b base -o base-patched.apk
zipalign -p -f 4 base-patched.apk base-aligned.apk
apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android \
  --key-pass pass:android --v1-signing-enabled true \
  --v2-signing-enabled true --v3-signing-enabled true \
  --out base-signed.apk base-aligned.apk
```

Install requires uninstalling the Microsoft-signed install first (signatures
differ): `pm uninstall com.groupme.android` then `pm install base-signed.apk`.

## Apply to a clean re-decompile of the same version

```bash
apktool d base.apk -o base -r
./apply-patches.sh base
```

## Apply to a future version

Re-decompile, then run `apply-patches.sh`. Hunks that no longer match because
of upstream changes will land in `apply-patches.py`'s "anchor not found"
report — fix the anchors and re-run.

---

## Patches by feature

### 1. Discover tab — every entry point sealed

| Goal | File | Edit |
|------|------|------|
| Bottom-nav click never loads the fragment | `HomeActivity.smali` | `loadDiscoverFragment` body replaced with `return-void` — kills bottom-bar click, campus-celebration overlay, intent-driven branch in `onCreate` |
| Icon never paints, even with ECS flag on | `HomeActivity.smali` | After `getCampusConnectTabEnabled` returns, force `v1 = 0x0` before `setVisible(Z)` |
| Empty-state "Join Groups" button no-op | `ConversationListEmptyStateView.smali` | Inject `return-void` after `if-eqz p2, :cond_5` so the discover `FragmentTransaction.replace` is unreachable |

Activity-level deeplinks `/discover/.*` and `/directory/.*` resolve via
`DirectoryActivity` → `HomeActivity.loadDiscoverFragment` → no-op, so they
land on the chats tab.

### 2. WebView lockdown — all hosts dead

Every `onCreate` becomes `super.onCreate(...)` → `Activity.finish()` →
`return-void`. Every Fragment's `onCreateView` returns `null`. Patches stay
class-resident (no `NoClassDefFoundError` from incidental references).

| Surface | File |
|---------|------|
| BasicWebviewActivity (privacy/terms shell) | `settings/BasicWebviewActivity.smali` |
| NpsSurveyActivity | `support/NpsSurveyActivity.smali` |
| ReportAbuseActivity | `support/ReportAbuseActivity.smali` |
| VisualSearchWebActivity (Microsoft) | `mediacanvas/visualsearch/VisualSearchWebActivity.smali` |
| Facebook CustomTabActivity | `com/facebook/CustomTabActivity.smali` |
| Facebook CustomTabMainActivity | `com/facebook/CustomTabMainActivity.smali` |
| HelpAndFeedbackActivity | `support/HelpAndFeedbackActivity.smali` |
| CampusActivity (Campus tab host) | `group/directory/CampusActivity.smali` |
| Microsoft Office Feedback MainActivity | `microsoft/office/feedback/inapp/MainActivity.smali` |
| CampusDealsFragment | `group/directory/CampusDealsFragment.smali` |
| HelpFeedbackFragment | `support/HelpFeedbackFragment.smali` |
| FeedbackFragment | `support/FeedbackFragment.smali` |
| WebInterfaceFragment (Microsoft Office) | `microsoft/office/feedback/inapp/WebInterfaceFragment.smali` |
| VisualSearchFragment | `microsoft/mediacanvas/visualsearch/VisualSearchFragment.smali` |
| VisualSearchBottomSheetFragment | `microsoft/mediacanvas/visualsearch/VisualSearchBottomSheetFragment.smali` |

### 3. Rich link previews killed

The dispatcher that picks an `InlineContent` matcher for a URL is gutted —
no preview card ever renders. URLs are visible as tappable text only.

| File | Edit |
|------|------|
| `chat/inline/InlineContentLoader.smali` | `processMessage` immediately calls `this.hideInlineContent(view)` and returns `false`. Bypasses all matcher dispatch, all bindView calls, all network fetches for previews. |
| `chat/inline/HtmlPreviewInlineContent.smali` | Belt-and-braces: `bindView` early-returns after `setVisibility(view, GONE)`. Covers the parent class for `TwitterInlineContent` and `YoutubePlayerInlineContent`. |

Non-WebView inline content (Instagram/Imgur image cards, group invite cards,
album/event cards) is *also* hidden via the dispatcher patch — every
registered matcher has its `setVisibility(view, GONE)` called.

### 4. Profile screen — Facebook / Spotify / Interests removed

The runtime visibility setters had to be no-op'd because they re-show the
sections after view binding:

| File | Edit |
|------|------|
| `profile/ProfileFragment.smali` | After each of the 10 `iput-object` lines that bind `mFacebookButton`, `mInterestsNewNudge`, `mInterestCount`, `mInterestAddMore`, `mInterestsCTALayout`, `mInterestCTAButton`, `mInterestsRecyclerView`, `mSongHeaderContainer`, `mAnthemCTALayout`, `mSpotifyPreview`: inject `const/16 v1, 0x8; invoke-virtual {v0, v1}, View;->setVisibility(I)V` |
| `profile/ProfileFragment.smali` | `setInterestsVisibility(Z)V` → `return-void` at top |
| `profile/ProfileFragment.smali` | `setSpotifyPreview()V` → `return-void` at top |
| `profile/ProfileFragment.smali` | Tail of `onViewCreated` injects null-safe `findViewById(...).setVisibility(GONE)` for `section_socials`, `interests_header_container`, `interests_label`, `song_label`, `my_anthem`, `layout_add_anthem` |

Section labels and dividers go too — not just the inner controls.

### 5. More tab cleanup

| Item removed | File | Edit |
|---|---|---|
| "Help Center" row | `more/MoreTabFragment.smali` | The block adding `MoreOptionsItem(HELP_FEEDBACK, ctx)` to `mMoreOptions` is deleted |
| "Profile glow-up" nudge banner | `more/MoreTabFragment.smali` | The VISIBLE branch (`const/4 v2, 0x0`) before `setVisibility` is rewritten to `const/16 v2, 0x8`, so the banner is GONE regardless of dismiss state or profile completeness |

### 6. OneCamera (camera icon) external-storage fallback

Upstream bug in the bundled flipgrid camera SDK: when
`Context.getExternalFilesDir(DIRECTORY_MOVIES)` returns `null` (e.g. after a
recent `pm uninstall` left `/storage/emulated/0/Android/data/<pkg>/` missing
and the OS didn't auto-recreate it), the SDK builds `new File(null,
"OneCameraClips")` → resolves to absolute `/OneCameraClips` → `mkdirs()`
throws `IllegalArgumentException` and `OneCameraActivity.onCreate` crashes
during `FragmentContainerView` inflate.

| File | Edit |
|------|------|
| `com/flipgrid/camera/easyintegration/helper/CameraSessionInteraction$DefaultImpls.smali` | In `getOneCameraStore`, bump locals to 3 to keep the Context in `v2`. After `getExternalFilesDir(...)` returns into `p0`, `if-nez p0, :cond_ext_ok` skips fallback; otherwise call `Context.getFilesDir()` and use that. Either way construct `new File(<dir>, "OneCameraClips")` and continue. |

Clips land at `files/OneCameraClips/` under the app's internal storage
whenever external is unavailable.

### 7. Sign-in tiles cleanup

Re-signing the APK changes its SHA-1, so OAuth-based sign-ins (Facebook,
Google, Microsoft) fail server-side because Microsoft's Firebase project
doesn't know our debug-key SHA-1. Hide those tiles to avoid dead-end taps.

| File | Edit |
|------|------|
| `welcome/create_account/CreateAccountPickerFragment.smali` | After each `findViewById` for `button_facebook`, `google_sign_in_button`, `create_account_separator`, `frame_msft_signin`: inject `setVisibility(GONE)` |
| `login/LoginFragment.smali` | Same pattern for `frame_msft_signin`, `button_facebook`, `google_sign_in_button` |

Email + phone-number flows are untouched.

### 8. Copilot stripped end-to-end

Microsoft integrated Copilot deeply (Ask Copilot bottom sheet, study-tool
flashcards/quizzes, in-chat @mention bot, group "Message Copilot"
permission row). Two layers of kills:

**Layer 1 — master ECS gates flipped:**

| File | Edit |
|------|------|
| `copilot/CopilotV2State.smali` | `isCopilotChatEnabled()` returns `false` immediately — cascades to `isCopilotChat`, `isAskCopilotEnabled`, `isAskCopilotPlusPlusEnabled`, `isAskCopilotPlusPlusConsentDialogEnabled`, `isAskCopilotSendToGroupEnabled`, `isCopilotChatConsentDialogEnabled`, `isChatListHeaderButtonEnabled`, `isConsentCancelButtonEnabled` (all of which route through it) |
| `copilot/CopilotV2State.smali` | `isCopilotGroupMentionSettingUIEnabled()` returns `false` immediately — the existing `GroupPreferences.updatePermissionSettings()` path then calls `removePreferenceSafe(mPermissionsCategory, mMsgCopilotPreference)`, which deletes the "Message Copilot / Everyone" row from group settings |

**Layer 2 — every Copilot Fragment/Activity neutered (belt-and-suspenders against any code path that bypasses the ECS gate):**

| Surface | Patch |
|---|---|
| `chat/CopilotConsentSheetFragment` | `onCreateView` → `null` |
| `copilot/askcopilot/AskCopilotFragment` | `onCreateView` → `null` |
| `copilot/askcopilot/AskCopilotBottomSheetFragment` | `onCreateView` → `null` |
| `copilot/askcopilot/AskCopilotConsentFragment` | `onCreateView` → `null` |
| `copilot/settings/CopilotSettingFragment` | `onCreateView` → `null` |
| `copilot/cards/leaderboard/ui/LeaderboardBottomSheetFragment` | `onCreateView` → `null` |
| `copilot/cards/share/ChatSelectorBottomSheetFragment` | `onCreateView` → `null` |
| `group/settings/GroupSettingsMessageCopilotFragment` | `onCreateView` → `null` |
| `copilot/settings/CopilotSettingActivity` | `onCreate` → `finish()` |
| `copilot/cards/QuizFullScreenActivity` | `onCreate` → `finish()` |
| `copilot/cards/FlashcardFullScreenActivity` | `onCreate` → `finish()` |

## What's untouched (intentional)

- **`ChatActivity` / `ChatFragment`** still renders messages. Killing them
  bricks the app. The inline WebView matchers it would dispatch are dead.
- **Image viewers / media canvas** (`ImagePickerPreviewFragment`,
  `MediaFragment`, `MiniProfileFragment`, `SpotifyPreview`,
  `ObservableWebView`) — only `SpotifyPreview` is user-visible and that's
  hidden on the profile screen.
- **Manifest deeplinks** for `/discover/.*` and `/directory/.*` were
  re-introduced when we re-decompiled with `-r` (no resources). They still
  hit `DirectoryActivity` → `HomeActivity.loadDiscoverFragment`, which is
  now a no-op, so the user lands on chats. Sealed in practice.
- **Twitter button** in profile — hidden as collateral when we hid
  `section_socials`. Twitter integration is mostly defunct anyway.

## Verification

After install:

```bash
su -c "am start -n com.groupme.android/com.groupme.android.settings.BasicWebviewActivity"
su -c "dumpsys activity activities | grep -E 'resumed|com.groupme'"
```

Expect: BasicWebviewActivity launches, but the top resumed activity stays as
whatever it was (typically Termux) — the activity finished before painting.

Build identifiers:

| Field | Value |
|-------|-------|
| `package` | `com.groupme.android` |
| `versionName` | `15.71.4` |
| `versionCode` | `261310204` |
| Signer (debug) | SHA-256 `3abf70a677f92ad971000a4f5023077c3d4a8cf7b5840e38ce1fe51e5fcf1582` |
