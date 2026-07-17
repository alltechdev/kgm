.class public Lcom/atd/groupme/sms/ContactPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerAdapter.java"


# instance fields
.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ContactsHelper$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private colorPrimary:I

.field private colorSecondary:I

.field private final ctx:Landroid/content/Context;

.field private currentFilter:Ljava/lang/String;

.field private filtered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ContactsHelper$Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->allItems:Ljava/util/List;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->currentFilter:Ljava/lang/String;

    .line 30
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->colorPrimary:I

    .line 31
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->colorSecondary:I

    .line 34
    iput-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->ctx:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private buildRow()Landroid/widget/LinearLayout;
    .registers 5

    .line 107
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/atd/groupme/sms/ContactPickerAdapter;->dp(I)I

    move-result v0

    .line 108
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 112
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    return-object v1
.end method

.method private dp(I)I
    .registers 3

    .line 125
    int-to-float p1, p1

    iget-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->ctx:Landroid/content/Context;

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
    .registers 7

    .line 49
    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->currentFilter:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 51
    iget-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->allItems:Ljava/util/List;

    iput-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/atd/groupme/sms/ContactPickerAdapter;->notifyDataSetChanged()V

    .line 53
    return-void

    .line 55
    :cond_19
    iget-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->currentFilter:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->allItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/atd/groupme/sms/ContactsHelper$Contact;

    .line 58
    iget-object v3, v2, Lcom/atd/groupme/sms/ContactsHelper$Contact;->name:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, v2, Lcom/atd/groupme/sms/ContactsHelper$Contact;->number:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 60
    :cond_4e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_51
    goto :goto_2c

    .line 63
    :cond_52
    iput-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lcom/atd/groupme/sms/ContactPickerAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public getContact(I)Lcom/atd/groupme/sms/ContactsHelper$Contact;
    .registers 3

    .line 68
    if-ltz p1, :cond_14

    iget-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;

    return-object p1

    .line 68
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 90
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_7

    .line 91
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_b

    .line 93
    :cond_7
    invoke-direct {p0}, Lcom/atd/groupme/sms/ContactPickerAdapter;->buildRow()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 95
    :goto_b
    iget-object p3, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->filtered:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;

    .line 96
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    iget-object v2, p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;->number:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    iget-object v2, p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;->name:Ljava/lang/String;

    :goto_2e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget v2, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->colorPrimary:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;->number:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget v0, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->colorSecondary:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object p1, p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4a

    const/16 p3, 0x8

    :cond_4a
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    return-object p2
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ContactsHelper$Contact;",
            ">;)V"
        }
    .end annotation

    .line 44
    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->allItems:Ljava/util/List;

    .line 45
    iget-object p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->currentFilter:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/atd/groupme/sms/ContactPickerAdapter;->applyFilter(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setPalette(II)V
    .registers 3

    .line 38
    iput p1, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->colorPrimary:I

    .line 39
    iput p2, p0, Lcom/atd/groupme/sms/ContactPickerAdapter;->colorSecondary:I

    .line 40
    invoke-virtual {p0}, Lcom/atd/groupme/sms/ContactPickerAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method
