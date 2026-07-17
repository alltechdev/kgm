.class public Lcom/atd/groupme/sms/MessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/MessageListAdapter$Item;
    }
.end annotation


# static fields
.field private static final BUBBLE_RECEIVED:I = 0x0

.field private static final BUBBLE_SENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RetroGM.MessageListAdapter"


# instance fields
.field private colorBubbleReceived:I

.field private colorBubbleSent:I

.field private colorTextPrimary:I

.field private colorTextSecondary:I

.field private final ctx:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/MessageListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorTextPrimary:I

    .line 40
    const v0, -0x888889

    iput v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorTextSecondary:I

    .line 41
    const v0, -0x291b01

    iput v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleSent:I

    .line 42
    const v0, -0x101011

    iput v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleReceived:I

    .line 45
    iput-object p1, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private buildBubbleRow(Z)Landroid/widget/LinearLayout;
    .registers 10

    .line 355
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 357
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v3

    .line 360
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v6

    invoke-virtual {v0, v3, v5, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 363
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    invoke-direct {p0, v2}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v7

    invoke-direct {p0, v2}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v4

    invoke-virtual {v3, v6, v7, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 365
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 366
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 367
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 368
    if-eqz p1, :cond_52

    iget v4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleSent:I

    goto :goto_54

    :cond_52
    iget v4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleReceived:I

    :goto_54
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 369
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 372
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 373
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 374
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 377
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 378
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 383
    const/high16 v4, 0x41700000    # 15.0f

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 387
    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 388
    const v4, 0x800005

    const v6, 0x800003

    if-eqz p1, :cond_a7

    move v7, v4

    goto :goto_a8

    :cond_a7
    move v7, v6

    :goto_a8
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 389
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 394
    const/4 v5, 0x0

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 395
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    const v2, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_d4

    .line 398
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 399
    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 400
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 402
    invoke-virtual {v0, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    goto :goto_e9

    .line 405
    :cond_d4
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 406
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    new-instance p1, Landroid/view/View;

    iget-object v3, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 408
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 410
    invoke-virtual {v0, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    :goto_e9
    return-object v0
.end method

.method private decodeUriSafely(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8

    .line 332
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 333
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    iget-object v3, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 335
    if-nez v3, :cond_1b

    .line 337
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_76

    .line 335
    :cond_1a
    return-object v0

    .line 336
    :cond_1b
    :try_start_1b
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_6a

    .line 337
    if-eqz v3, :cond_23

    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_23
    nop

    .line 339
    const/16 v3, 0xdc

    invoke-direct {p0, v3}, Lcom/atd/groupme/sms/MessageListAdapter;->dp(I)I

    move-result v3

    .line 340
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 341
    :goto_32
    div-int v4, v1, v2

    mul-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_3b

    mul-int/lit8 v2, v2, 0x2

    goto :goto_32

    .line 342
    :cond_3b
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 343
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 344
    iget-object v2, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 345
    if-nez v2, :cond_54

    .line 347
    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_76

    .line 345
    :cond_53
    return-object v0

    .line 346
    :cond_54
    :try_start_54
    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5e

    .line 347
    if-eqz v2, :cond_5d

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_76

    .line 346
    :cond_5d
    return-object v1

    .line 344
    :catchall_5e
    move-exception v1

    if-eqz v2, :cond_69

    :try_start_61
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception v2

    :try_start_66
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    throw v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_76

    .line 334
    :catchall_6a
    move-exception v1

    if-eqz v3, :cond_75

    :try_start_6d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v2

    :try_start_72
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    throw v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    .line 348
    :catchall_76
    move-exception v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeUriSafely("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") failed"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RetroGM.MessageListAdapter"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    return-object v0
.end method

.method private dp(I)I
    .registers 3

    .line 417
    int-to-float p1, p1

    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->ctx:Landroid/content/Context;

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

.method private static fillMmsParts(Landroid/content/ContentResolver;JLcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 12

    .line 140
    nop

    .line 142
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/part"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    const-string v2, "ct"

    const-string v4, "text"

    const-string v5, "cl"

    const-string v6, "name"

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 142
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_b6
    .catchall {:try_start_2 .. :try_end_35} :catchall_b4

    .line 146
    if-nez v0, :cond_3d

    .line 175
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_3c
    return-void

    .line 147
    :cond_3d
    :try_start_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 149
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 150
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    if-nez v3, :cond_55

    goto :goto_42

    .line 152
    :cond_55
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v3}, Lcom/atd/groupme/sms/MessageListAdapter;->isTextPart(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 155
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7b

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_7b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 160
    :cond_7f
    invoke-static {v3, v4, v5}, Lcom/atd/groupme/sms/MessageListAdapter;->isImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 165
    iget-object v4, p3, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    if-nez v4, :cond_a6

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/part/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p3, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    .line 167
    iput-object v3, p3, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageMime:Ljava/lang/String;

    goto :goto_a6

    .line 160
    :cond_a5
    :goto_a5
    nop

    .line 170
    :cond_a6
    :goto_a6
    goto :goto_42

    .line 171
    :cond_a7
    iget-object v1, p3, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    if-nez v1, :cond_b1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_b1} :catch_b6
    .catchall {:try_start_3d .. :try_end_b1} :catchall_b4

    .line 175
    :cond_b1
    if-eqz v0, :cond_d4

    goto :goto_d1

    :catchall_b4
    move-exception p0

    goto :goto_d5

    .line 172
    :catch_b6
    move-exception p0

    .line 173
    :try_start_b7
    const-string p3, "RetroGM.MessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillMmsParts failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_b7 .. :try_end_cf} :catchall_b4

    .line 175
    if-eqz v0, :cond_d4

    :goto_d1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_d4
    return-void

    .line 175
    :goto_d5
    if-eqz v0, :cond_da

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_da
    throw p0
.end method

.method private static isImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 187
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 188
    :cond_a
    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    const-string v0, "application/x-mms-message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    .line 196
    :cond_1c
    return v2

    .line 189
    :cond_1d
    :goto_1d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_24

    move-object p1, p2

    .line 190
    :cond_24
    if-nez p1, :cond_27

    return v2

    .line 191
    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 192
    const-string p1, ".jpg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, ".jpeg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 193
    const-string p1, ".png"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, ".gif"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 194
    const-string p1, ".webp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, ".heic"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    goto :goto_5e

    :cond_5c
    move v1, v2

    goto :goto_5f

    :cond_5e
    :goto_5e
    nop

    .line 192
    :goto_5f
    return v1
.end method

.method private isOutgoing(I)Z
    .registers 3

    .line 230
    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    :goto_d
    return p1
.end method

.method private static isTextPart(Ljava/lang/String;)Z
    .registers 2

    .line 180
    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "smil"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static loadMessages(Landroid/content/ContentResolver;J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/MessageListAdapter$Item;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {p0, p1, p2, v0}, Lcom/atd/groupme/sms/MessageListAdapter;->loadSmsRows(Landroid/content/ContentResolver;JLjava/util/List;)V

    .line 64
    invoke-static {p0, p1, p2, v0}, Lcom/atd/groupme/sms/MessageListAdapter;->loadMmsRows(Landroid/content/ContentResolver;JLjava/util/List;)V

    .line 67
    new-instance p0, Lcom/atd/groupme/sms/MessageDateComparator;

    invoke-direct {p0}, Lcom/atd/groupme/sms/MessageDateComparator;-><init>()V

    .line 68
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    return-object v0
.end method

.method private static loadMmsRows(Landroid/content/ContentResolver;JLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/MessageListAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .line 104
    nop

    .line 106
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "content://mms"

    .line 107
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "_id"

    const-string v2, "date"

    const-string v4, "msg_box"

    const-string v5, "m_type"

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "thread_id=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 110
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v6, p2

    const-string v7, "date ASC"

    .line 106
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_70
    .catchall {:try_start_2 .. :try_end_27} :catchall_6e

    .line 112
    if-nez v0, :cond_2f

    .line 135
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_2e
    return-void

    .line 113
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 114
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 115
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 116
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 117
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 120
    const/16 v8, 0x82

    if-ne v7, v8, :cond_4c

    goto :goto_2f

    .line 122
    :cond_4c
    new-instance v7, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    invoke-direct {v7}, Lcom/atd/groupme/sms/MessageListAdapter$Item;-><init>()V

    .line 123
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    or-long/2addr v8, v2

    iput-wide v8, v7, Lcom/atd/groupme/sms/MessageListAdapter$Item;->id:J

    .line 124
    iput-boolean v1, v7, Lcom/atd/groupme/sms/MessageListAdapter$Item;->isMms:Z

    .line 125
    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    iput-wide v4, v7, Lcom/atd/groupme/sms/MessageListAdapter$Item;->date:J

    .line 127
    if-ne v6, p1, :cond_62

    iput p1, v7, Lcom/atd/groupme/sms/MessageListAdapter$Item;->type:I

    goto :goto_64

    .line 128
    :cond_62
    iput v1, v7, Lcom/atd/groupme/sms/MessageListAdapter$Item;->type:I

    .line 129
    :goto_64
    invoke-static {p0, v2, v3, v7}, Lcom/atd/groupme/sms/MessageListAdapter;->fillMmsParts(Landroid/content/ContentResolver;JLcom/atd/groupme/sms/MessageListAdapter$Item;)V

    .line 130
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6a} :catch_70
    .catchall {:try_start_2f .. :try_end_6a} :catchall_6e

    .line 131
    goto :goto_2f

    .line 135
    :cond_6b
    if-eqz v0, :cond_7d

    goto :goto_7a

    :catchall_6e
    move-exception p0

    goto :goto_7e

    .line 132
    :catch_70
    move-exception p0

    .line 133
    :try_start_71
    const-string p1, "RetroGM.MessageListAdapter"

    const-string p2, "loadMmsRows failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_6e

    .line 135
    if-eqz v0, :cond_7d

    :goto_7a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_7d
    return-void

    .line 135
    :goto_7e
    if-eqz v0, :cond_83

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_83
    throw p0
.end method

.method private static loadSmsRows(Landroid/content/ContentResolver;JLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/MessageListAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .line 73
    nop

    .line 75
    const/4 v0, 0x0

    :try_start_2
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v3, "body"

    const-string v4, "date"

    const-string v5, "type"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "thread_id=?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const-string v6, "date ASC"

    .line 75
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_4e

    .line 87
    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 88
    new-instance p0, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    invoke-direct {p0}, Lcom/atd/groupme/sms/MessageListAdapter$Item;-><init>()V

    .line 89
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/atd/groupme/sms/MessageListAdapter$Item;->id:J

    .line 90
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    .line 91
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/atd/groupme/sms/MessageListAdapter$Item;->date:J

    .line 92
    const/4 p1, 0x3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/atd/groupme/sms/MessageListAdapter$Item;->type:I

    .line 93
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_53
    .catchall {:try_start_2 .. :try_end_4d} :catchall_51

    .line 94
    goto :goto_25

    .line 99
    :cond_4e
    if-eqz v0, :cond_60

    goto :goto_5d

    :catchall_51
    move-exception p0

    goto :goto_61

    .line 96
    :catch_53
    move-exception p0

    .line 97
    :try_start_54
    const-string p1, "RetroGM.MessageListAdapter"

    const-string p2, "loadSmsRows failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 99
    if-eqz v0, :cond_60

    :goto_5d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_60
    return-void

    .line 99
    :goto_61
    if-eqz v0, :cond_66

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_66
    throw p0
.end method

.method private openImageViewer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8

    .line 301
    const v0, 0x10000001

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.atd.groupme.sms.SmsImageViewerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v2, "uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    if-eqz p3, :cond_21

    .line 306
    const-string v2, "mime"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_21
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 309
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    .line 324
    goto :goto_60

    .line 312
    :catchall_2b
    move-exception v1

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openImageViewer failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RetroGM.MessageListAdapter"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    :try_start_44
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    nop

    .line 317
    if-nez p3, :cond_50

    const-string p3, "image/*"

    .line 316
    :cond_50
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_5a

    .line 323
    goto :goto_60

    .line 321
    :catchall_5a
    move-exception p1

    .line 322
    const-string p2, "fallback viewer also failed"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    :goto_60
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    iget-wide v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    iget p1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->type:I

    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/MessageListAdapter;->isOutgoing(I)Z

    move-result p1

    return p1
.end method

.method public getMessage(I)Lcom/atd/groupme/sms/MessageListAdapter$Item;
    .registers 3

    .line 210
    if-ltz p1, :cond_14

    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    return-object p1

    .line 210
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    .line 237
    iget-object p3, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    .line 238
    iget p3, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->type:I

    invoke-direct {p0, p3}, Lcom/atd/groupme/sms/MessageListAdapter;->isOutgoing(I)Z

    move-result p3

    .line 240
    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 241
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_19

    .line 243
    :cond_15
    invoke-direct {p0, p3}, Lcom/atd/groupme/sms/MessageListAdapter;->buildBubbleRow(Z)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 245
    :goto_19
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 249
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 250
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 252
    iget-object v6, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v6, :cond_63

    .line 253
    iget-object v6, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/atd/groupme/sms/MessageListAdapter;->decodeUriSafely(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 254
    if-eqz v6, :cond_5c

    .line 255
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v6, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    .line 262
    iget-object v8, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageMime:Ljava/lang/String;

    .line 263
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 264
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 265
    new-instance v3, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v6, v8}, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/atd/groupme/sms/MessageListAdapter;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    goto :goto_62

    .line 267
    :cond_5c
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :goto_62
    goto :goto_6c

    .line 271
    :cond_63
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :goto_6c
    iget-object v2, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 277
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_85

    .line 279
    :cond_78
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget v1, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorTextPrimary:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    :goto_85
    iget-wide v6, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->date:J

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    .line 284
    invoke-static/range {v6 .. v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget p1, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorTextSecondary:I

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 288
    if-eqz p1, :cond_ac

    .line 289
    if-eqz p3, :cond_a7

    iget p3, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleSent:I

    goto :goto_a9

    :cond_a7
    iget p3, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleReceived:I

    :goto_a9
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 291
    :cond_ac
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 221
    const/4 v0, 0x2

    return v0
.end method

.method synthetic lambda$getView$0$com-atd-groupme-sms-MessageListAdapter(Landroid/net/Uri;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 265
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/atd/groupme/sms/MessageListAdapter;->openImageViewer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/MessageListAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .line 57
    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lcom/atd/groupme/sms/MessageListAdapter;->items:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/atd/groupme/sms/MessageListAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public setPalette(IIII)V
    .registers 5

    .line 49
    iput p1, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorTextPrimary:I

    .line 50
    iput p2, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorTextSecondary:I

    .line 51
    iput p3, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleSent:I

    .line 52
    iput p4, p0, Lcom/atd/groupme/sms/MessageListAdapter;->colorBubbleReceived:I

    .line 53
    invoke-virtual {p0}, Lcom/atd/groupme/sms/MessageListAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
