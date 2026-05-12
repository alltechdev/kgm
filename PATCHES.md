# GroupMe 15.71.4 — Patch Set

Patched APK strips:

1. The **Discover tab** and every internal entry point that opens it.
2. Every in-app **WebView Activity / Fragment** (Help, NPS survey, Report Abuse, MS Visual Search, FB Custom Tabs, Campus Deals, MS Office Feedback).
3. All **rich link previews** in chat — URLs stay tappable as plain text and open in the system browser.
4. The **Facebook / Spotify / Interests** sections from the Profile screen.
5. The **Help Center** row and **Profile glow-up** nudge banner from the More tab.
6. The OneCamera crash when `getExternalFilesDir()` returns `null` — falls back to internal storage.
7. **Facebook / Google / Microsoft** sign-in tiles (dead on a re-signed APK anyway) — only email + phone OTP remain.
8. **Copilot** end-to-end — Ask Copilot, study-tool flashcards/quizzes, in-chat @mention, group "Message Copilot" permission row.
9. All **profile pictures / avatars** — every screen and every notification (large icon, Person icons, conversation shortcut icons).
10. The **pinned-groups carousel** above the chat list.
11. **Toolbar title** changed from "Chat" to "Messages" with `letterSpacing=0.02f` applied to every toolbar TextView child.
12. The **Add contact** and **Share profile** icons in the chat-list toolbar (only Search kept).
13. The **Share group** icon in the Group Members toolbar.
14. The **DMs** filter pill is now labeled **People** (text override at bind; internal id stays `dms` so the ECS allowlist still matches).
15. The **New Chat** screen is renamed to **New Message**, and the **Event Group** + **Vanishing Group** rows are removed. Remaining rows ("Create Group", "Create Announcement Group") keep their title only — icon and description are hidden.
16. The **bottom navigation bar** is collapsed to height 0 (kept `VISIBLE` so the FAB's CoordinatorLayout anchor still resolves at the bottom of the screen). The **More** tab is reachable via a **Settings** entry in a new 3-dot overflow in the chat-list toolbar — taps fire `setSelectedItemId(bottom_more)` so back-press transitions back through the existing nav listener.
17. The **filter pills row** is removed from the chat list and replaced by a **filter funnel** icon in the toolbar that pops a SubMenu with `All / Unread / People / Groups`. Each entry posts the matching `Filter` object to `ConversationViewModel.getChatsFilter()` via a new `ChatFilterAdapter.kgmSelectFilterById` helper — the same LiveData path the pill clicks used.
18. The compose **FAB** is replaced by a **New Message** action icon in the toolbar (taps `HomeActivity.launchNewChatActivity`). The FAB itself is suppressed in place — kept in the CoordinatorLayout so the `fab_menu_anchor` anchor still resolves, but its `LayoutParams` are zeroed and `GradientActionButton` overrides `setVisibility` / `show()` / `show(OnVisibilityChangedListener)` to keep `FAB.show()` from un-hiding it.
19. Chat list **contact / group names** rendered with `sans-serif-black` + `Paint.setFakeBoldText(true)` in the `ConversationListItemViewHolder` constructor for an extra-heavy weight without bundling a custom font.
20. **Top bar (toolbar + status bar) painted `#F0EDEF`** via a new `HomeActivity.kgmTintToolbar(Activity, Toolbar)`. `BaseActivity.enableEdgeToEdge()` makes the system status bar transparent, so the helper also paints the decor view (the color that actually shows through the bar), clears `FLAG_TRANSLUCENT_STATUS`, adds `FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS`, calls `Window.setStatusBarColor`, and ORs `SYSTEM_UI_FLAG_LIGHT_STATUS_BAR` so the status bar icons read dark on the light bg. The conversation list fragment root is then explicitly painted white in `onCreateView` so the `#F0EDEF` only shows through the transparent status bar (not the whole chat list body).
21. **More tab cleanup** — the "Add your bio" nudge banner (the row with the NEW pill) is forced GONE in `MoreOptionsListAdapter.getView`, and the "View profile" button + space at the bottom is hidden in `MoreTabFragment.viewProfile`.
22. **Lens "Selected file format is not supported" gate bypassed** — `FileUtils.isValidImageFile` in `com.microsoft.office.lenssdk.utils` returns `true` for any non-null URI so HEIC and other formats the original allowlist missed (jpeg/jpg/png/bmp/gif/webp/heif only) are accepted. Lens decodes them directly instead of popping the unsupported-format dialog.
23. **OneCamera's "photos" import button now shows both images and videos.** `CaptureFragment.launchGetContentActivityResultLauncher` ignores its `ImportConfig` argument and fires a manual `ACTION_GET_CONTENT` intent with `type=*/*` + `EXTRA_MIME_TYPES=["image/*", "video/*"]` + `EXTRA_ALLOW_MULTIPLE`. On Android 13+ that's the system photo picker with mixed media; on older Android it's the chooser. A new `CaptureFragment.onActivityResult` override (request code `0x6b47`) extracts URIs from `clipData` / `getData()` and feeds `captureViewModel.onContentReturnedForImportConfig` — the same internal callback the original launchers used, so preview/confirm/return is unchanged.
24. **Calendar and Events stripped app-wide.** Every Event/Calendar `Activity` (`EventCreateUpdateActivity`, `EventDetailActivity`, `UserCalendarActivity`) calls `finish()` immediately after `super.onCreate`, so any intent that targets them is a no-op flash. Every Event/Calendar `Fragment` with its own `onCreateView` is rewritten to `return null` (`AttachEventFragment`, `EventCreateUpdateFragment`, `EventDetailsFragment`, `EventsListFragment`, `JoinEventSuccessFragment`, `RecurringEventBottomSheetFragment`, `UserCalendarFragment`). The Calendar tile is skipped from the More tab. The Event tab is dropped from the chat "+" attachment pager (`ChatAttachmentPagerAdapter.getPagesDm` and `getPagesGroup`). The inline `JoinEventInlineContent.bindView` hides the inline card and zeros its `LayoutParams.height`, so received event cards in chat collapse. The dated `TopLevelEventGroupBadgeView` that decorates group avatars and list rows gets `setVisibility(I)` clamped to GONE and `onAttachedToWindow` zeros its `LayoutParams.width`/`height` so no list row reserves space for it. Long-press chat menu's `menu_share_event` and `menu_clone_event` items are forced hidden in `ChatFragment.createContextMenu` and removed at the top of `HighlightsBaseFragment.onCreateContextMenu`.
25. **Copilot settings entry removed.** `GlobalPreferences.canShowCopilot(Context)` returns `false` unconditionally, so every settings-fragment branch that gates the Copilot row, the row's on-click handler, and any other call site sees Copilot disabled — the row disappears from the settings list.
26. **Dark mode passes through.** Both new chrome-tinting helpers — `HomeActivity.kgmTintToolbar` and `ConversationListFragment.kgmTintRoot`-equivalent — gate themselves on `Configuration.uiMode & UI_MODE_NIGHT_MASK`. In dark mode the toolbar paint, status-bar color, decor-view paint, `LIGHT_STATUS_BAR` flag, and chat-list root paint to white are all skipped, so the system theme renders unmodified.
27. **Chat attachment tab strip removed.** `ChatAttachmentFragment.onViewCreated` runs a new static `kgmCollapseTabs(View)` on the `IconTabLayout` immediately after `findViewById(R.id.tab_layout)`. The helper sets the tab strip to `GONE` then walks up its parent chain, zeroing `LayoutParams.height` at each level whose `ViewGroup` has fewer than 3 children (i.e., thin wrappers that only hold the tab strip + a divider). The pill row and the empty band above the gallery both disappear.

Chat send/receive, group management, image attachments, contacts — all untouched.

## Inputs / outputs

| File | Role |
|------|------|
| `base.apk` | Unmodified GroupMe 15.71.4 (versionCode 261310204) — input |
| `base/` | Patched apktool decompile (`apktool d -r`, no resources) |
| `base-signed.apk` | Final aligned + debug-signed output |
| `groupme-patches.diff` | Unified diff against a clean decompile |
| `apply-patches.sh` | Driver: runs `patch -p1 -F 5` |

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

Re-decompile, then run `apply-patches.sh`. The `patch -p1 -F 5` invocation
will fuzz-match up to 5 lines; anything beyond that will print `.rej` hunks
that need to be merged manually.

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

## Build identifiers

| Field | Value |
|-------|-------|
| `package` | `com.groupme.android` |
| `versionName` | `15.71.4` |
| `versionCode` | `261310204` |
