.class public Lcom/atd/groupme/sms/SmsInline;
.super Ljava/lang/Object;
.source "SmsInline.java"


# static fields
.field private static final FILTER_MENU_ID:I = 0x6b676d02

.field private static final PANEL_TAG:Ljava/lang/String; = "retrogm_sms_panel"

.field private static final TAG:Ljava/lang/String; = "RetroGM.SmsInline"

.field private static volatile sAutoOpened:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/atd/groupme/sms/SmsInline;->sAutoOpened:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeIfActive(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    .line 69
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    .line 71
    if-nez p0, :cond_b

    return v0

    .line 72
    :cond_b
    invoke-static {p0}, Lcom/atd/groupme/sms/SmsInline;->pickInsertionContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    .line 73
    if-nez p0, :cond_12

    return v0

    .line 74
    :cond_12
    const-string v1, "retrogm_sms_panel"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .line 75
    instance-of v1, p0, Lcom/atd/groupme/sms/SmsPanel;

    if-nez v1, :cond_1d

    return v0

    .line 76
    :cond_1d
    check-cast p0, Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->openComposeFromHost()V

    .line 77
    const/4 p0, 0x1

    return p0
.end method

.method private static varargs findClassByName(Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;
    .registers 9

    .line 175
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 176
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 178
    array-length v4, p1

    move v5, v0

    :goto_16
    if-ge v5, v4, :cond_24

    aget-object v6, p1, v5

    .line 179
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    return-object v2

    .line 178
    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 181
    :cond_24
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_31

    .line 182
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/atd/groupme/sms/SmsInline;->findClassByName(Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_31

    return-object v2

    .line 175
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findClassContaining(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 192
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return-object v1

    .line 195
    :cond_1a
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_27

    .line 196
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/atd/groupme/sms/SmsInline;->findClassContaining(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_27

    return-object v1

    .line 192
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findHostAppBar(Landroidx/fragment/app/Fragment;)Landroid/view/View;
    .registers 6

    .line 155
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 156
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 157
    if-nez p0, :cond_b

    return-object v0

    .line 158
    :cond_b
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 159
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_17

    return-object v0

    .line 163
    :cond_17
    check-cast v1, Landroid/view/ViewGroup;

    const-string v2, "AppBarLayout"

    const-string v3, "Toolbar"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/atd/groupme/sms/SmsInline;->findClassByName(Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_28

    return-object v1

    .line 167
    :cond_28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_30

    move-object p0, v0

    goto :goto_38

    :cond_30
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 168
    :goto_38
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_47

    .line 169
    check-cast p0, Landroid/view/ViewGroup;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/atd/groupme/sms/SmsInline;->findClassByName(Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 171
    :cond_47
    return-object v0
.end method

.method static synthetic lambda$openOnceForFragment$0(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 50
    const-string v0, "RetroGM.SmsInline"

    :try_start_2
    invoke-static {p0}, Lcom/atd/groupme/sms/SmsInline;->toggle(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto-toggle opened="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    nop

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/atd/groupme/sms/DefaultSmsPrompt;->promptIfNotDefault(Landroid/app/Activity;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_25

    .line 58
    goto :goto_2b

    .line 56
    :catchall_25
    move-exception p0

    .line 57
    const-string v1, "auto-toggle failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_2b
    return-void
.end method

.method private static makeMatchParentLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 254
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public static openOnceForFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 36
    sget-boolean v0, Lcom/atd/groupme/sms/SmsInline;->sAutoOpened:Z

    const-string v1, "RetroGM.SmsInline"

    if-eqz v0, :cond_c

    .line 37
    const-string p0, "openOnceForFragment skip (already opened)"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 40
    :cond_c
    if-nez p0, :cond_f

    return-void

    .line 41
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 42
    if-nez v0, :cond_1b

    .line 43
    const-string p0, "openOnceForFragment: root null, waiting for next onResume"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 46
    :cond_1b
    const/4 v2, 0x1

    sput-boolean v2, Lcom/atd/groupme/sms/SmsInline;->sAutoOpened:Z

    .line 47
    const-string v2, "openOnceForFragment scheduling auto-toggle"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Lcom/atd/groupme/sms/SmsInline$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/atd/groupme/sms/SmsInline$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method private static pickInsertionContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 2

    .line 246
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static searchIfActive(Landroidx/fragment/app/Fragment;)Z
    .registers 3

    .line 86
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 87
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    .line 88
    if-nez p0, :cond_b

    return v0

    .line 89
    :cond_b
    invoke-static {p0}, Lcom/atd/groupme/sms/SmsInline;->pickInsertionContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    .line 90
    if-nez p0, :cond_12

    return v0

    .line 91
    :cond_12
    const-string v1, "retrogm_sms_panel"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .line 92
    instance-of v1, p0, Lcom/atd/groupme/sms/SmsPanel;

    if-nez v1, :cond_1d

    return v0

    .line 93
    :cond_1d
    check-cast p0, Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->toggleSearch()V

    .line 94
    const/4 p0, 0x1

    return p0
.end method

.method private static setHostFilterMenuVisible(Landroidx/fragment/app/Fragment;Z)V
    .registers 4

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/atd/groupme/sms/SmsInline;->findHostAppBar(Landroidx/fragment/app/Fragment;)Landroid/view/View;

    move-result-object p0

    .line 209
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 211
    if-eqz p0, :cond_d

    invoke-static {p0, p1}, Lcom/atd/groupme/sms/SmsInline;->toggleFilterOn(Landroid/view/View;Z)V

    .line 212
    :cond_d
    return-void

    .line 215
    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "Toolbar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atd/groupme/sms/SmsInline;->findClassByName(Landroid/view/ViewGroup;[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 216
    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object p0, v0

    :goto_1f
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/SmsInline;->toggleFilterOn(Landroid/view/View;Z)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    .line 219
    goto :goto_2b

    .line 217
    :catchall_23
    move-exception p0

    .line 218
    const-string p1, "RetroGM.SmsInline"

    const-string v0, "could not toggle filter menu visibility"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :goto_2b
    return-void
.end method

.method public static toggle(Landroidx/fragment/app/Fragment;)Z
    .registers 10

    .line 104
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 106
    const-string v2, "RetroGM.SmsInline"

    if-nez v1, :cond_12

    .line 107
    const-string p0, "fragment has no view, ignoring toggle"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v0

    .line 110
    :cond_12
    invoke-static {v1}, Lcom/atd/groupme/sms/SmsInline;->pickInsertionContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 111
    if-nez v1, :cond_1e

    .line 112
    const-string p0, "no suitable container for SmsPanel"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0

    .line 116
    :cond_1e
    const-string v3, "retrogm_sms_panel"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 117
    const/4 v5, 0x1

    if-eqz v4, :cond_38

    .line 118
    instance-of v2, v4, Lcom/atd/groupme/sms/SmsPanel;

    if-eqz v2, :cond_31

    move-object v2, v4

    check-cast v2, Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {v2}, Lcom/atd/groupme/sms/SmsPanel;->restoreHostChrome()V

    .line 119
    :cond_31
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/SmsInline;->setHostFilterMenuVisible(Landroidx/fragment/app/Fragment;Z)V

    .line 120
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    return v0

    .line 124
    :cond_38
    new-instance v4, Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/atd/groupme/sms/SmsPanel;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v4, v3}, Lcom/atd/groupme/sms/SmsPanel;->setTag(Ljava/lang/Object;)V

    .line 126
    invoke-static {v1}, Lcom/atd/groupme/sms/SmsInline;->makeMatchParentLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 127
    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-static {p0}, Lcom/atd/groupme/sms/SmsInline;->findHostAppBar(Landroidx/fragment/app/Fragment;)Landroid/view/View;

    move-result-object v1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hostAppBar="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "null"

    if-nez v1, :cond_60

    move-object v7, v6

    goto :goto_68

    :cond_60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_68
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v3, 0x0

    .line 134
    if-eqz v1, :cond_93

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 136
    const-string v8, "Toolbar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 137
    move-object v3, v1

    goto :goto_93

    .line 138
    :cond_88
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_93

    .line 139
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v8}, Lcom/atd/groupme/sms/SmsInline;->findClassContaining(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 142
    :cond_93
    :goto_93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hostToolbar="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_a1

    goto :goto_a9

    :cond_a1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_a9
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v4, v1, v3}, Lcom/atd/groupme/sms/SmsPanel;->setHostAppBar(Landroid/view/View;Landroid/view/View;)V

    .line 144
    invoke-static {p0, v0}, Lcom/atd/groupme/sms/SmsInline;->setHostFilterMenuVisible(Landroidx/fragment/app/Fragment;Z)V

    .line 146
    invoke-virtual {v4}, Lcom/atd/groupme/sms/SmsPanel;->requestFocus()Z

    .line 147
    return v5
.end method

.method private static toggleFilterOn(Landroid/view/View;Z)V
    .registers 6

    .line 223
    if-nez p0, :cond_3

    return-void

    .line 227
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMenu"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 228
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 229
    instance-of v0, p0, Landroid/view/Menu;

    if-nez v0, :cond_1b

    return-void

    .line 230
    :cond_1b
    check-cast p0, Landroid/view/Menu;

    .line 231
    const v0, 0x6b676d02

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 232
    if-eqz p0, :cond_29

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    .line 235
    :cond_29
    goto :goto_32

    .line 233
    :catchall_2a
    move-exception p0

    .line 234
    const-string p1, "RetroGM.SmsInline"

    const-string v0, "filter menu toggle reflection failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_32
    return-void
.end method
