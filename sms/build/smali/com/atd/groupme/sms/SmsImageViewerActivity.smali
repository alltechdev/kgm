.class public Lcom/atd/groupme/sms/SmsImageViewerActivity;
.super Landroid/app/Activity;
.source "SmsImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;
    }
.end annotation


# static fields
.field public static final EXTRA_MIME:Ljava/lang/String; = "mime"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final IO:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "RetroGM.SmsImageViewerActivity"


# instance fields
.field private image:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

.field private imageMime:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private final main:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->IO:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->main:Landroid/os/Handler;

    return-void
.end method

.method private decode(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5

    .line 128
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 129
    if-nez p1, :cond_11

    .line 131
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    .line 129
    :cond_10
    return-object v0

    .line 130
    :cond_11
    :try_start_11
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_1b

    .line 131
    if-eqz p1, :cond_1a

    :try_start_17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_27

    .line 130
    :cond_1a
    return-object v1

    .line 128
    :catchall_1b
    move-exception v1

    if-eqz p1, :cond_26

    :try_start_1e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception p1

    :try_start_23
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 131
    :catchall_27
    move-exception p1

    .line 132
    const-string v1, "RetroGM.SmsImageViewerActivity"

    const-string v2, "decode failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return-object v0
.end method

.method private doSave()Ljava/lang/String;
    .registers 11

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageMime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "image/jpeg"

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageMime:Ljava/lang/String;

    .line 165
    :goto_d
    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, ".png"

    goto :goto_30

    .line 166
    :cond_18
    const-string v1, "image/gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, ".gif"

    goto :goto_30

    .line 167
    :cond_23
    const-string v1, "image/webp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, ".webp"

    goto :goto_30

    :cond_2e
    const-string v1, ".jpg"

    .line 168
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetroGM_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 170
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "mime_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_f5

    const-string v1, "is_pending"

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_84

    .line 173
    :try_start_62
    const-string v0, "relative_path"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/RetroGM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    :cond_84
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 179
    if-nez v4, :cond_93

    const-string v0, "Save failed (no MediaStore slot)"

    return-object v0

    .line 180
    :cond_93
    iget-object v5, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_99
    .catchall {:try_start_62 .. :try_end_99} :catchall_f5

    .line 181
    :try_start_99
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_e9

    .line 182
    if-eqz v5, :cond_d0

    if-nez v6, :cond_a2

    goto :goto_d0

    .line 183
    :cond_a2
    const/16 v7, 0x2000

    :try_start_a4
    new-array v7, v7, [B

    .line 185
    :goto_a6
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, 0x0

    if-lez v8, :cond_b1

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b0
    .catchall {:try_start_a4 .. :try_end_b0} :catchall_dd

    goto :goto_a6

    .line 186
    :cond_b1
    if-eqz v6, :cond_b6

    :try_start_b3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_e9

    :cond_b6
    if-eqz v5, :cond_bb

    :try_start_b8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 187
    :cond_bb
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_cd

    .line 188
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    :cond_cd
    const-string v0, "Saved to Pictures/RetroGM"
    :try_end_cf
    .catchall {:try_start_b8 .. :try_end_cf} :catchall_f5

    return-object v0

    .line 182
    :cond_d0
    :goto_d0
    :try_start_d0
    const-string v0, "Save failed (no stream)"
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_dd

    .line 186
    if-eqz v6, :cond_d7

    :try_start_d4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_e9

    :cond_d7
    if-eqz v5, :cond_dc

    :try_start_d9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_f5

    .line 182
    :cond_dc
    return-object v0

    .line 180
    :catchall_dd
    move-exception v0

    if-eqz v6, :cond_e8

    :try_start_e0
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_e8

    :catchall_e4
    move-exception v1

    :try_start_e5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e8
    :goto_e8
    throw v0
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception v0

    if-eqz v5, :cond_f4

    :try_start_ec
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_f4

    :catchall_f0
    move-exception v1

    :try_start_f1
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f4
    :goto_f4
    throw v0
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_f5

    .line 193
    :catchall_f5
    move-exception v0

    .line 194
    const-string v1, "RetroGM.SmsImageViewerActivity"

    const-string v2, "save failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const-string v0, "Save failed"

    return-object v0
.end method

.method private saveImage()V
    .registers 3

    .line 156
    sget-object v0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda4;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method private shareImage()V
    .registers 5

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageMime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "image/*"

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageMime:Ljava/lang/String;

    .line 140
    :goto_d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v0, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    nop

    .line 144
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Image"

    iget-object v3, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageUri:Landroid/net/Uri;

    .line 143
    invoke-static {v0, v2, v3}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    const-string v2, "Share image"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    .line 152
    goto :goto_51

    .line 149
    :catchall_3f
    move-exception v0

    .line 150
    const-string v1, "RetroGM.SmsImageViewerActivity"

    const-string v2, "share failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v0, 0x0

    const-string v1, "Share failed"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_51
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-atd-groupme-sms-SmsImageViewerActivity(Landroid/view/View;)V
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-atd-groupme-sms-SmsImageViewerActivity(Landroid/view/MenuItem;)Z
    .registers 4

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->shareImage()V

    return v1

    .line 97
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->saveImage()V

    return v1

    .line 98
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$2$com-atd-groupme-sms-SmsImageViewerActivity(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 118
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->image:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    invoke-virtual {v0, p1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_12

    .line 120
    :cond_8
    const/4 p1, 0x0

    const-string v0, "Could not load image"

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 123
    :goto_12
    return-void
.end method

.method synthetic lambda$onCreate$3$com-atd-groupme-sms-SmsImageViewerActivity()V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->decode(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method synthetic lambda$saveImage$4$com-atd-groupme-sms-SmsImageViewerActivity(Ljava/lang/String;)V
    .registers 3

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$saveImage$5$com-atd-groupme-sms-SmsImageViewerActivity()V
    .registers 4

    .line 157
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->doSave()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 68
    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->finish()V

    return-void

    .line 69
    :cond_d
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cd

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto/16 :goto_cd

    .line 72
    :cond_2d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageUri:Landroid/net/Uri;

    .line 73
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->imageMime:Ljava/lang/String;

    .line 77
    const/high16 p1, -0x1000000

    :try_start_3d
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_45

    goto :goto_46

    .line 78
    :catchall_45
    move-exception v0

    :goto_46
    nop

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 85
    new-instance v2, Landroid/widget/Toolbar;

    invoke-direct {v2, p0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v2, p1}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 87
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    const v3, 0x7f082a98

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 89
    const-string v3, "Back"

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v3, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Share"

    invoke-interface {v3, v4, v1, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 92
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 93
    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v5, "Save"

    invoke-interface {v1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 94
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    new-instance v1, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 104
    new-instance p1, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    invoke-direct {p1, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity;->image:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    .line 105
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->setContentView(Landroid/view/View;)V

    .line 115
    sget-object p1, Lcom/atd/groupme/sms/SmsImageViewerActivity;->IO:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 71
    :cond_cd
    :goto_cd
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->finish()V

    return-void
.end method
