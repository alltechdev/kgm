.class public Lcom/atd/groupme/sms/MediaPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaPickerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RetroGM.MediaPickerAdapter"

.field private static final THUMB_PX:I = 0x100


# instance fields
.field private final cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private imageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final io:Ljava/util/concurrent/Executor;

.field private final main:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->cache:Landroid/util/SparseArray;

    .line 42
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->io:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->main:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->ctx:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private dp(I)I
    .registers 3

    .line 148
    int-to-float p1, p1

    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->ctx:Landroid/content/Context;

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

.method public static loadImageIds(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 50
    const-string v0, "_id"

    const-string v1, "RetroGM.MediaPickerAdapter"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    nop

    .line 53
    const/4 v3, 0x0

    :try_start_b
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date_added DESC"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_1a} :catch_46
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_3d
    .catchall {:try_start_b .. :try_end_1a} :catchall_3b

    .line 58
    if-nez v3, :cond_22

    .line 68
    if-eqz v3, :cond_21

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_21
    return-object v2

    .line 59
    :cond_22
    :try_start_22
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 60
    :goto_26
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 61
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_37} :catch_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_3d
    .catchall {:try_start_22 .. :try_end_37} :catchall_3b

    goto :goto_26

    .line 68
    :cond_38
    if-eqz v3, :cond_51

    goto :goto_4e

    :catchall_3b
    move-exception p0

    goto :goto_52

    .line 65
    :catch_3d
    move-exception p0

    .line 66
    :try_start_3e
    const-string v0, "loadImageIds failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    if-eqz v3, :cond_51

    goto :goto_4e

    .line 63
    :catch_46
    move-exception p0

    .line 64
    const-string p0, "READ_MEDIA_IMAGES not granted"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_3b

    .line 68
    if-eqz v3, :cond_51

    :goto_4e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_51
    return-object v2

    .line 68
    :goto_52
    if-eqz v3, :cond_57

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_57
    throw p0
.end method

.method private loadThumb(IJLandroid/widget/ImageView;)V
    .registers 6

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_7

    return-void

    .line 125
    :cond_7
    iget-object p1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->io:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/atd/groupme/sms/MediaPickerAdapter;JLandroid/widget/ImageView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUri(I)Landroid/net/Uri;
    .registers 5

    .line 80
    if-ltz p1, :cond_1e

    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_1e

    .line 81
    :cond_b
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    .line 83
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 81
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 104
    instance-of p3, p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_7

    .line 105
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_21

    .line 107
    :cond_7
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    const/16 p3, 0x60

    invoke-direct {p0, p3}, Lcom/atd/groupme/sms/MediaPickerAdapter;->dp(I)I

    move-result p3

    .line 110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :goto_21
    iget-object p3, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 113
    iget-object p3, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->cache:Landroid/util/SparseArray;

    long-to-int v2, v0

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    .line 114
    if-eqz p3, :cond_3c

    .line 115
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_45

    .line 117
    :cond_3c
    const p3, 0x7f084eb3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/atd/groupme/sms/MediaPickerAdapter;->loadThumb(IJLandroid/widget/ImageView;)V

    .line 120
    :goto_45
    return-object p2
.end method

.method synthetic lambda$loadThumb$0$com-atd-groupme-sms-MediaPickerAdapter(JLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->cache:Landroid/util/SparseArray;

    long-to-int p1, p1

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {p4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 140
    invoke-virtual {p4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 141
    :cond_1a
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_1d
    return-void
.end method

.method synthetic lambda$loadThumb$1$com-atd-groupme-sms-MediaPickerAdapter(JLandroid/widget/ImageView;)V
    .registers 14

    .line 126
    nop

    .line 128
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x100

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 134
    move-object v8, v0

    goto :goto_35

    .line 132
    :catchall_1b
    move-exception v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadThumb failed for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RetroGM.MediaPickerAdapter"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v0

    .line 135
    :goto_35
    if-nez v8, :cond_38

    return-void

    .line 136
    :cond_38
    nop

    .line 137
    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->main:Landroid/os/Handler;

    new-instance v1, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;

    move-object v4, v1

    move-object v5, p0

    move-wide v6, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/atd/groupme/sms/MediaPickerAdapter;JLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public setImageIds(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 74
    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->imageIds:Ljava/util/List;

    .line 75
    iget-object p1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter;->cache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 76
    invoke-virtual {p0}, Lcom/atd/groupme/sms/MediaPickerAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method
