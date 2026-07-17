.class public Lcom/atd/groupme/sms/ThreadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThreadListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RetroGM.ThreadListAdapter"


# instance fields
.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private colorPrimary:I

.field private colorSecondary:I

.field private final ctx:Landroid/content/Context;

.field private currentFilter:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private night:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    .line 35
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorPrimary:I

    .line 36
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorSecondary:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->night:Z

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->allItems:Ljava/util/List;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->currentFilter:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private buildRow()Landroid/widget/LinearLayout;
    .registers 9

    .line 149
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/atd/groupme/sms/ThreadListAdapter;->dp(I)I

    move-result v0

    .line 150
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 154
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 164
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 165
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    return-object v1
.end method

.method private dp(I)I
    .registers 3

    .line 179
    int-to-float p1, p1

    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public applyFilter(Ljava/lang/String;)V
    .registers 9

    .line 47
    const-string v0, ""

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_10

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_10
    iput-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->currentFilter:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 49
    iget-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->allItems:Ljava/util/List;

    iput-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/atd/groupme/sms/ThreadListAdapter;->notifyDataSetChanged()V

    .line 51
    return-void

    .line 53
    :cond_20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->allItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/atd/groupme/sms/ThreadSummary;

    .line 55
    iget-object v3, v2, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    if-nez v3, :cond_3d

    move-object v3, v0

    goto :goto_45

    :cond_3d
    iget-object v3, v2, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 56
    :goto_45
    iget-object v4, v2, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    if-nez v4, :cond_4b

    move-object v4, v0

    goto :goto_4d

    :cond_4b
    iget-object v4, v2, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    .line 57
    :goto_4d
    iget-object v5, v2, Lcom/atd/groupme/sms/ThreadSummary;->snippet:Ljava/lang/String;

    if-nez v5, :cond_53

    move-object v5, v0

    goto :goto_5b

    :cond_53
    iget-object v5, v2, Lcom/atd/groupme/sms/ThreadSummary;->snippet:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 58
    :goto_5b
    iget-object v6, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 59
    :cond_73
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_76
    goto :goto_2b

    .line 62
    :cond_77
    iput-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/atd/groupme/sms/ThreadListAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/ThreadSummary;

    iget-wide v0, p1, Lcom/atd/groupme/sms/ThreadSummary;->threadId:J

    return-wide v0
.end method

.method public getThread(I)Lcom/atd/groupme/sms/ThreadSummary;
    .registers 3

    .line 80
    if-ltz p1, :cond_14

    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 81
    :cond_b
    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/ThreadSummary;

    return-object p1

    .line 80
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    .line 104
    iget-object p3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->items:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/ThreadSummary;

    .line 106
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_f

    .line 107
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_13

    .line 109
    :cond_f
    invoke-direct {p0}, Lcom/atd/groupme/sms/ThreadListAdapter;->buildRow()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 112
    :goto_13
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 114
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 115
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    iget-object v2, p1, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p1, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iget-object v2, p1, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    .line 118
    :goto_3a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v2, "(unknown)"

    .line 119
    :cond_42
    iget v3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorPrimary:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget v3, p1, Lcom/atd/groupme/sms/ThreadSummary;->unreadCount:I

    if-lez v3, :cond_67

    .line 121
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u2022"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6f

    .line 124
    :cond_67
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_6f
    iget-object v0, p1, Lcom/atd/groupme/sms/ThreadSummary;->snippet:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_77

    move-object v0, v2

    goto :goto_79

    :cond_77
    iget-object v0, p1, Lcom/atd/groupme/sms/ThreadSummary;->snippet:Ljava/lang/String;

    :goto_79
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v0, p1, Lcom/atd/groupme/sms/ThreadSummary;->unreadCount:I

    if-lez v0, :cond_8b

    .line 130
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorPrimary:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_95

    .line 133
    :cond_8b
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    iget v0, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorSecondary:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    :goto_95
    iget p3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorSecondary:I

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-wide v3, p1, Lcom/atd/groupme/sms/ThreadSummary;->date:J

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_b3

    .line 139
    iget-wide v3, p1, Lcom/atd/groupme/sms/ThreadSummary;->date:J

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    .line 139
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6

    .line 142
    :cond_b3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_b6
    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ThreadSummary;",
            ">;)V"
        }
    .end annotation

    .line 74
    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->allItems:Ljava/util/List;

    .line 76
    iget-object p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/atd/groupme/sms/ThreadListAdapter;->applyFilter(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setPalette(IIZ)V
    .registers 4

    .line 67
    iput p1, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorPrimary:I

    .line 68
    iput p2, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->colorSecondary:I

    .line 69
    iput-boolean p3, p0, Lcom/atd/groupme/sms/ThreadListAdapter;->night:Z

    .line 70
    invoke-virtual {p0}, Lcom/atd/groupme/sms/ThreadListAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
