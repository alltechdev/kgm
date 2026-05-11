#!/usr/bin/env python3
"""
Anchor-based fallback for apply-patches.sh.

Walks each (file, old, new) tuple in EDITS and rewrites the file. The `old`
text is the exact anchor I used in the original Edit() calls — short enough
to be unique within the file, long enough to be specific. If GroupMe ships a
new version that doesn't shift these anchors, this script re-applies cleanly.

Each tuple is one Edit() operation. ProfileFragment.smali has many because
the visibility-hide and section-hide patches stack.

Usage:
  python3 apply-patches.py <decompiled_dir>
"""
from __future__ import annotations
import sys
from pathlib import Path

# (relative path, old anchor text, new replacement text)
EDITS: list[tuple[str, str, str]] = []


def _e(path: str, old: str, new: str) -> None:
    EDITS.append((path, old, new))


# -------------------------------------------------------------
# HomeActivity.smali — two edits
# -------------------------------------------------------------

# loadDiscoverFragment -> immediate return-void (kills 3 internal callers)
_e(
    "smali_classes5/com/groupme/android/HomeActivity.smali",
    """.method public final loadDiscoverFragment(Ljava/lang/String;Ljava/lang/String;Lcom/groupme/android/group/directory/OpenDirectoryEntryPoint;I)V
    .locals 9

    .line 1377
    iget-boolean v0, p0, Lcom/groupme/android/HomeActivity;->mSwitchingTabs:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0""",
    """.method public final loadDiscoverFragment(Ljava/lang/String;Ljava/lang/String;Lcom/groupme/android/group/directory/OpenDirectoryEntryPoint;I)V
    .locals 9

    return-void

    :cond_0""",
)

# Force bottom_discover menu item GONE regardless of ECS flag
_e(
    "smali_classes5/com/groupme/android/HomeActivity.smali",
    """    sget v1, Lcom/groupme/android/R$id;->bottom_discover:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 761
    invoke-static {}, Lcom/groupme/ecs/ECSManager;->get()Lcom/groupme/ecs/ECSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/groupme/ecs/ECSManager;->getCampusConnectTabEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;""",
    """    sget v1, Lcom/groupme/android/R$id;->bottom_discover:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 761
    invoke-static {}, Lcom/groupme/ecs/ECSManager;->get()Lcom/groupme/ecs/ECSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/groupme/ecs/ECSManager;->getCampusConnectTabEnabled()Z

    move-result v1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;""",
)

# -------------------------------------------------------------
# ConversationListEmptyStateView.smali — "Join Groups" empty-state click no-op
# -------------------------------------------------------------
_e(
    "smali_classes5/com/groupme/android/conversation/ConversationListEmptyStateView.smali",
    """    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 158
    new-instance p2, Landroid/os/Bundle;""",
    """    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 158
    new-instance p2, Landroid/os/Bundle;""",
)


# -------------------------------------------------------------
# Insta-finish onCreate (pattern: super.onCreate -> finish() -> return-void)
# -------------------------------------------------------------
def _insta_finish(path: str, super_invocation: str, next_line_directive: str, next_instr: str, label: str) -> None:
    """Insert finish() + return-void after invoke-super in onCreate."""
    head = f"""    {super_invocation}

    {next_line_directive}
    {next_instr}"""
    new = f"""    {super_invocation}

    invoke-virtual {{p0}}, Landroid/app/Activity;->finish()V

    return-void

    {next_line_directive}
    :{label}
    {next_instr}"""
    _e(path, head, new)


_insta_finish(
    "smali_classes6/com/groupme/android/settings/BasicWebviewActivity.smali",
    "invoke-super {p0, p1}, Lcom/groupme/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V",
    ".line 20",
    "sget p1, Lcom/groupme/android/R$layout;->activity_basic_webview:I",
    "gone_basicwebview",
)

_insta_finish(
    "smali_classes6/com/groupme/android/support/NpsSurveyActivity.smali",
    "invoke-super {p0, p1}, Lcom/groupme/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V",
    ".line 42",
    "sget p1, Lcom/groupme/android/R$layout;->activity_nps_survey:I",
    "gone_nps",
)

_insta_finish(
    "smali_classes6/com/groupme/android/support/ReportAbuseActivity.smali",
    "invoke-super {p0, p1}, Lcom/groupme/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V",
    ".line 62",
    "sget p1, Lcom/groupme/android/R$layout;->activity_report_abuse:I",
    "gone_reportabuse",
)

_insta_finish(
    "smali_classes7/com/microsoft/mediacanvas/visualsearch/VisualSearchWebActivity.smali",
    "invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V",
    ".line 22",
    "invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;",
    "gone_visualsearch",
)

_insta_finish(
    "smali_classes3/com/facebook/CustomTabActivity.smali",
    "invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V",
    ".line 27",
    "new-instance p1, Landroid/content/Intent;\n\n    const-class v0, Lcom/facebook/CustomTabMainActivity;",
    "gone_fb_customtab",
)

_e(
    "smali_classes3/com/facebook/CustomTabMainActivity.smali",
    """    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object v0, Lcom/facebook/CustomTabActivity;->CUSTOM_TAB_REDIRECT_ACTION:Ljava/lang/String;""",
    """    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 34
    :gone_fb_customtabmain
    sget-object v0, Lcom/facebook/CustomTabActivity;->CUSTOM_TAB_REDIRECT_ACTION:Ljava/lang/String;""",
)

_insta_finish(
    "smali_classes6/com/groupme/android/support/HelpAndFeedbackActivity.smali",
    "invoke-super {p0, p1}, Lcom/groupme/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V",
    ".line 21",
    "sget v0, Lcom/groupme/android/R$layout;->simple_toolbar_activity:I",
    "gone_helpandfeedback",
)

_insta_finish(
    "smali_classes5/com/groupme/android/group/directory/CampusActivity.smali",
    "invoke-super {p0, p1}, Lcom/groupme/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V",
    ".line 38",
    "sget p1, Lcom/groupme/android/R$layout;->campus_toolbar_activity:I",
    "gone_campus",
)

_e(
    "smali_classes7/com/microsoft/office/feedback/inapp/MainActivity.smali",
    """    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object v0, Lcom/microsoft/office/feedback/inapp/InAppFeedback;->init:Lcom/microsoft/office/feedback/inapp/InAppFeedbackInit;""",
    """    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 60
    :gone_msfeedback
    sget-object v0, Lcom/microsoft/office/feedback/inapp/InAppFeedback;->init:Lcom/microsoft/office/feedback/inapp/InAppFeedbackInit;""",
)


# -------------------------------------------------------------
# Fragments — onCreateView returns null
# -------------------------------------------------------------
_e(
    "smali_classes5/com/groupme/android/group/directory/CampusDealsFragment.smali",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    sget p0, Lcom/groupme/android/R$layout;->fragment_campus_all_deals:I""",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1

    :gone_campusdeals
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    sget p0, Lcom/groupme/android/R$layout;->fragment_campus_all_deals:I""",
)

_e(
    "smali_classes6/com/groupme/android/support/HelpFeedbackFragment.smali",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 56
    sget p0, Lcom/groupme/android/R$layout;->fragment_help_and_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0""",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0

    :gone_helpfeedback
    .line 56
    sget p0, Lcom/groupme/android/R$layout;->fragment_help_and_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0""",
)

_e(
    "smali_classes6/com/groupme/android/support/FeedbackFragment.smali",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 76
    sget p0, Lcom/groupme/android/R$layout;->fragment_give_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;""",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0

    :gone_feedback
    .line 76
    sget p0, Lcom/groupme/android/R$layout;->fragment_give_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;""",
)

_e(
    "smali_classes7/com/microsoft/office/feedback/inapp/WebInterfaceFragment.smali",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/microsoft/office/feedback/inapp/WebInterfaceFragment;->feedbackInitOptions:Lcom/microsoft/feedback/types/FeedbackInitOptions;""",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p1, 0x0

    return-object p1

    :gone_webinterface
    .line 93
    iget-object v0, p0, Lcom/microsoft/office/feedback/inapp/WebInterfaceFragment;->feedbackInitOptions:Lcom/microsoft/feedback/types/FeedbackInitOptions;""",
)

_e(
    "smali_classes7/com/microsoft/mediacanvas/visualsearch/VisualSearchFragment.smali",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-direct {p0}, Lcom/microsoft/mediacanvas/visualsearch/VisualSearchFragment;->getTelemetryListener()Lcom/microsoft/mediacanvas/core/telemtry/listener/VisualSearchEventListener;""",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1

    :gone_vsfragment
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-direct {p0}, Lcom/microsoft/mediacanvas/visualsearch/VisualSearchFragment;->getTelemetryListener()Lcom/microsoft/mediacanvas/core/telemtry/listener/VisualSearchEventListener;""",
)

_e(
    "smali_classes7/com/microsoft/mediacanvas/visualsearch/VisualSearchBottomSheetFragment.smali",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-virtual {p0}, Lcom/microsoft/mediacanvas/visualsearch/VisualSearchBottomSheetFragment;->getTelemetryListener()Lcom/microsoft/mediacanvas/core/telemtry/listener/VisualSearchEventListener;""",
    """.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1

    :gone_vsbottomsheet
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-virtual {p0}, Lcom/microsoft/mediacanvas/visualsearch/VisualSearchBottomSheetFragment;->getTelemetryListener()Lcom/microsoft/mediacanvas/core/telemtry/listener/VisualSearchEventListener;""",
)


# -------------------------------------------------------------
# MoreTabFragment.smali — drop Help Center row + force glow-up GONE
# -------------------------------------------------------------
_e(
    "smali_classes4/com/groupme/android/more/MoreTabFragment.smali",
    """    .line 299
    iget-object v0, p0, Lcom/groupme/android/more/MoreTabFragment;->mMoreOptions:Ljava/util/ArrayList;

    new-instance v1, Lcom/groupme/android/more/MoreOptionsItem;

    sget-object v2, Lcom/groupme/android/more/MoreOptionsItem$MoreOptions;->HELP_FEEDBACK:Lcom/groupme/android/more/MoreOptionsItem$MoreOptions;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/groupme/android/more/MoreOptionsItem;-><init>(Lcom/groupme/android/more/MoreOptionsItem$MoreOptions;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300""",
    """    .line 300""",
)

_e(
    "smali_classes4/com/groupme/android/more/MoreTabFragment.smali",
    """    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 375
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V""",
    """    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 375
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V""",
)


# -------------------------------------------------------------
# ProfileFragment.smali — many leaf views forced GONE after iput; helpers no-op'd
# -------------------------------------------------------------
def _hide_after_iput(field_decl: str, next_line: str, next_instr: str) -> None:
    head = f"""    iput-object v0, p0, Lcom/groupme/android/profile/ProfileFragment;->{field_decl}

    {next_line}
    {next_instr}"""
    new = f"""    iput-object v0, p0, Lcom/groupme/android/profile/ProfileFragment;->{field_decl}

    const/16 v1, 0x8

    invoke-virtual {{v0, v1}}, Landroid/view/View;->setVisibility(I)V

    {next_line}
    {next_instr}"""
    _e("smali_classes6/com/groupme/android/profile/ProfileFragment.smali", head, new)


_hide_after_iput(
    "mFacebookButton:Landroid/widget/Button;",
    ".line 754",
    "sget v0, Lcom/groupme/android/R$id;->sharing_switch:I",
)
_hide_after_iput(
    "mInterestsNewNudge:Landroid/widget/ImageView;",
    ".line 765",
    "sget v0, Lcom/groupme/android/R$id;->interests_count:I",
)
_hide_after_iput(
    "mInterestCount:Landroid/widget/TextView;",
    ".line 766",
    "sget v0, Lcom/groupme/android/R$id;->add_more_interests:I",
)
_hide_after_iput(
    "mInterestAddMore:Landroid/widget/TextView;",
    ".line 767",
    "sget v0, Lcom/groupme/android/R$id;->layout_add_interests:I",
)
_hide_after_iput(
    "mInterestsCTALayout:Landroid/view/View;",
    ".line 768",
    "sget v0, Lcom/groupme/android/R$id;->cta_add_interests:I",
)
_hide_after_iput(
    "mInterestCTAButton:Landroid/widget/Button;",
    ".line 769",
    "sget v0, Lcom/groupme/android/R$id;->interests_recycler_view:I",
)
_hide_after_iput(
    "mInterestsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;",
    ".line 770",
    "new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;",
)
_hide_after_iput(
    "mSongHeaderContainer:Landroid/widget/RelativeLayout;",
    ".line 775",
    "sget v0, Lcom/groupme/android/R$id;->song_new_nudge:I",
)
_hide_after_iput(
    "mAnthemCTALayout:Landroid/widget/RelativeLayout;",
    ".line 777",
    "sget v0, Lcom/groupme/android/R$id;->spotify_preview_widget:I",
)
_hide_after_iput(
    "mSpotifyPreview:Lcom/groupme/android/widget/SpotifyPreview;",
    ".line 778",
    "new-instance v1, Lcom/groupme/android/profile/ProfileFragment$$ExternalSyntheticLambda3;",
)

# setInterestsVisibility -> no-op
_e(
    "smali_classes6/com/groupme/android/profile/ProfileFragment.smali",
    """.method public final setInterestsVisibility(Z)V
    .locals 4

    .line 1848
    iget-object v0, p0, Lcom/groupme/android/profile/ProfileFragment;->mInterestsNewNudge:Landroid/widget/ImageView;""",
    """.method public final setInterestsVisibility(Z)V
    .locals 4

    return-void

    .line 1848
    :gone_setinterestsvis
    iget-object v0, p0, Lcom/groupme/android/profile/ProfileFragment;->mInterestsNewNudge:Landroid/widget/ImageView;""",
)

# setSpotifyPreview -> no-op
_e(
    "smali_classes6/com/groupme/android/profile/ProfileFragment.smali",
    """.method public final setSpotifyPreview()V
    .locals 2

    .line 1870
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;""",
    """.method public final setSpotifyPreview()V
    .locals 2

    return-void

    .line 1870
    :gone_setspotify
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;""",
)

# Tail of onViewCreated -> hide 6 section containers/labels via findViewById
_e(
    "smali_classes6/com/groupme/android/profile/ProfileFragment.smali",
    """    .line 801
    invoke-virtual {p0}, Lcom/groupme/android/profile/ProfileFragment;->fetchDirectoryId()V

    return-void
.end method

.method public final openChangePhoneNumberFragment()V""",
    """    .line 801
    invoke-virtual {p0}, Lcom/groupme/android/profile/ProfileFragment;->fetchDirectoryId()V

    const/16 v3, 0x8

    sget v0, Lcom/groupme/android/R$id;->section_socials:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :hide_a_end

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_a_end
    sget v0, Lcom/groupme/android/R$id;->interests_header_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :hide_b_end

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_b_end
    sget v0, Lcom/groupme/android/R$id;->interests_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :hide_c_end

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_c_end
    sget v0, Lcom/groupme/android/R$id;->song_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :hide_d_end

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_d_end
    sget v0, Lcom/groupme/android/R$id;->my_anthem:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :hide_e_end

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_e_end
    sget v0, Lcom/groupme/android/R$id;->layout_add_anthem:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :hide_f_end

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :hide_f_end
    return-void
.end method

.method public final openChangePhoneNumberFragment()V""",
)


# -------------------------------------------------------------
# HtmlPreviewInlineContent.smali — bindView: hide container, return
# -------------------------------------------------------------
_e(
    "smali_classes5/com/groupme/android/chat/inline/HtmlPreviewInlineContent.smali",
    """.method public bindView(Landroid/view/View;Lcom/groupme/android/chat/inline/InlineData;Lcom/groupme/android/chat/inline/InlineContentModel;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;""",
    """.method public bindView(Landroid/view/View;Lcom/groupme/android/chat/inline/InlineData;Lcom/groupme/android/chat/inline/InlineContentModel;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/groupme/android/chat/inline/HtmlPreviewInlineContent;->setVisibility(Landroid/view/View;I)V

    return-void

    :gone_bindview
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;""",
)


# -------------------------------------------------------------
# InlineContentLoader.smali — processMessage: hide and return false
# -------------------------------------------------------------
_e(
    "smali_classes5/com/groupme/android/chat/inline/InlineContentLoader.smali",
    """.method public processMessage(Lcom/groupme/model/Message;Landroid/widget/TextView;Landroid/view/View;ZLcom/groupme/android/chat/holder/LikeableViewHolder;)Z
    .locals 13

    move-object/from16 v5, p3

    .line 85
    invoke-virtual {p1}, Lcom/groupme/model/Message;->getConversationId()Ljava/lang/String;""",
    """.method public processMessage(Lcom/groupme/model/Message;Landroid/widget/TextView;Landroid/view/View;ZLcom/groupme/android/chat/holder/LikeableViewHolder;)Z
    .locals 13

    move-object/from16 v5, p3

    invoke-virtual {p0, v5}, Lcom/groupme/android/chat/inline/InlineContentLoader;->hideInlineContent(Landroid/view/View;)V

    const/4 v0, 0x0

    return v0

    :gone_processmsg
    .line 85
    invoke-virtual {p1}, Lcom/groupme/model/Message;->getConversationId()Ljava/lang/String;""",
)


# -------------------------------------------------------------
def main() -> None:
    if len(sys.argv) != 2:
        print(f"usage: {sys.argv[0]} <decompiled_dir>", file=sys.stderr)
        sys.exit(2)

    root = Path(sys.argv[1]).resolve()
    if not root.is_dir():
        print(f"error: {root} is not a directory", file=sys.stderr)
        sys.exit(1)

    applied = 0
    already = 0
    missing = 0
    for rel, old, new in EDITS:
        path = root / rel
        if not path.is_file():
            print(f"  ⨯ missing: {rel}", file=sys.stderr)
            missing += 1
            continue
        text = path.read_text()
        if new in text and old not in text:
            print(f"  · already applied: {rel}")
            already += 1
            continue
        if old not in text:
            print(f"  ⨯ anchor not found: {rel}", file=sys.stderr)
            missing += 1
            continue
        path.write_text(text.replace(old, new, 1))
        print(f"  ✓ patched: {rel}")
        applied += 1

    total = len(EDITS)
    print(f"\n{applied} applied, {already} already-applied, {missing} missing  ({total} total)")
    sys.exit(0 if missing == 0 else 1)


if __name__ == "__main__":
    main()
