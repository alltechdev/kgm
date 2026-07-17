.class public Lcom/atd/groupme/sms/SmsActivity;
.super Landroid/app/Activity;
.source "SmsActivity.java"


# static fields
.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_BODY:Ljava/lang/String; = "body"

.field public static final EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"


# instance fields
.field private panel:Lcom/atd/groupme/sms/SmsPanel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyLetterSpacingDeep(Landroid/view/View;)V
    .registers 5

    .line 108
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 110
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    .line 113
    goto :goto_f

    .line 111
    :catchall_e
    move-exception v0

    .line 115
    :cond_f
    :goto_f
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/atd/groupme/sms/SmsActivity;->applyLetterSpacingDeep(Landroid/view/View;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 121
    :cond_27
    new-instance v0, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/atd/groupme/sms/SmsActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method private configureWindowChrome()V
    .registers 5

    .line 87
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 89
    :try_start_4
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    iget v1, v1, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 92
    goto :goto_d

    .line 90
    :catchall_c
    move-exception v1

    .line 93
    :goto_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_29

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 96
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    iget-boolean v3, v3, Lcom/atd/groupme/sms/SmsPanel;->nightMode:Z

    if-eqz v3, :cond_24

    .line 97
    and-int/lit16 v2, v2, -0x2001

    goto :goto_26

    .line 99
    :cond_24
    or-int/lit16 v2, v2, 0x2000

    .line 101
    :goto_26
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 103
    :cond_29
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 104
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 105
    return-void
.end method


# virtual methods
.method synthetic lambda$applyLetterSpacingDeep$1$com-atd-groupme-sms-SmsActivity(Landroid/view/View;)V
    .registers 4

    .line 122
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    .line 123
    check-cast p1, Landroid/view/ViewGroup;

    .line 124
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/atd/groupme/sms/SmsActivity;->applyLetterSpacingDeep(Landroid/view/View;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 127
    :cond_17
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_26

    .line 129
    :try_start_1b
    check-cast p1, Landroid/widget/TextView;

    const v0, 0x3ca3d70a    # 0.02f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    goto :goto_25

    .line 130
    :catchall_24
    move-exception p1

    :goto_25
    goto :goto_27

    .line 127
    :cond_26
    nop

    .line 132
    :goto_27
    return-void
.end method

.method synthetic lambda$onCreate$0$com-atd-groupme-sms-SmsActivity(Landroid/view/View;)V
    .registers 2

    .line 58
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {p1}, Lcom/atd/groupme/sms/SmsPanel;->handleBack()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsActivity;->finish()V

    .line 59
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/atd/groupme/sms/SmsPanel;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 83
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 48
    new-instance v0, Lcom/atd/groupme/sms/SmsPanel;

    invoke-direct {v0, p0}, Lcom/atd/groupme/sms/SmsPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    .line 49
    iget v0, v0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 51
    new-instance v0, Landroid/widget/Toolbar;

    invoke-direct {v0, p0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    iget v1, v1, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 53
    const-string v1, "Messages"

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    iget v1, v1, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 55
    const v1, 0x7f082a98

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 56
    const-string v1, "Back"

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v1, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/atd/groupme/sms/SmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/atd/groupme/sms/SmsActivity;->applyLetterSpacingDeep(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 65
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/atd/groupme/sms/SmsActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsActivity;->configureWindowChrome()V

    .line 70
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/atd/groupme/sms/SmsPanel;->handleEntryIntent(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/atd/groupme/sms/SmsActivity;->setIntent(Landroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsActivity;->panel:Lcom/atd/groupme/sms/SmsPanel;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/atd/groupme/sms/SmsPanel;->handleEntryIntent(Landroid/content/Intent;)V

    .line 78
    :cond_d
    return-void
.end method
