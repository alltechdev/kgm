.class public Lcom/atd/groupme/sms/MmsDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsDownloadReceiver.java"


# static fields
.field public static final ACTION_MMS_DOWNLOADED:Ljava/lang/String; = "com.atd.groupme.sms.MMS_DOWNLOADED"

.field private static final Activity_RESULT_OK:I = -0x1

.field private static final CHANNEL_ID:Ljava/lang/String; = "retrogm_mms_default"

.field public static final EXTRA_FILE:Ljava/lang/String; = "file"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_ROW_URI:Ljava/lang/String; = "row_uri"

.field private static final TAG:Ljava/lang/String; = "RetroGM.MmsDownloadReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private builder(Landroid/content/Context;)Landroid/app/Notification$Builder;
    .registers 4

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    .line 273
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "retrogm_mms_default"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 275
    :cond_e
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private ensureChannel(Landroid/app/NotificationManager;)V
    .registers 6

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_19

    const-string v0, "retrogm_mms_default"

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_19

    .line 280
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "MMS"

    invoke-direct {v1, v0, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 283
    :cond_19
    return-void
.end method

.method private static extensionFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 196
    const-string v0, ".bin"

    if-nez p0, :cond_5

    return-object v0

    .line 197
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_94

    :cond_d
    goto/16 :goto_74

    :sswitch_f
    const-string v2, "video/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x6

    goto :goto_74

    :sswitch_19
    const-string v2, "audio/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 v1, 0x8

    goto :goto_74

    :sswitch_24
    const-string v2, "audio/amr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x7

    goto :goto_74

    :sswitch_2e
    const-string v2, "application/smil"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 v1, 0x9

    goto :goto_74

    :sswitch_39
    const-string v2, "image/png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    goto :goto_74

    :sswitch_43
    const-string v2, "image/jpg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    goto :goto_74

    :sswitch_4d
    const-string v2, "image/gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x3

    goto :goto_74

    :sswitch_57
    const-string v2, "image/webp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x4

    goto :goto_74

    :sswitch_61
    const-string v2, "image/jpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x0

    goto :goto_74

    :sswitch_6b
    const-string v2, "video/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x5

    :goto_74
    packed-switch v1, :pswitch_data_be

    .line 208
    return-object v0

    .line 207
    :pswitch_78
    const-string p0, ".smil"

    return-object p0

    .line 206
    :pswitch_7b
    const-string p0, ".m4a"

    return-object p0

    .line 205
    :pswitch_7e
    const-string p0, ".amr"

    return-object p0

    .line 204
    :pswitch_81
    const-string p0, ".mp4"

    return-object p0

    .line 203
    :pswitch_84
    const-string p0, ".3gp"

    return-object p0

    .line 202
    :pswitch_87
    const-string p0, ".webp"

    return-object p0

    .line 201
    :pswitch_8a
    const-string p0, ".gif"

    return-object p0

    .line 200
    :pswitch_8d
    const-string p0, ".png"

    return-object p0

    .line 199
    :pswitch_90
    const-string p0, ".jpg"

    return-object p0

    nop

    :sswitch_data_94
    .sparse-switch
        -0x63306f58 -> :sswitch_6b
        -0x58a7d764 -> :sswitch_61
        -0x58a21830 -> :sswitch_57
        -0x34688ef0 -> :sswitch_4d
        -0x346882d3 -> :sswitch_43
        -0x34686c8b -> :sswitch_39
        -0x298f5a4 -> :sswitch_2e
        0xb26980d -> :sswitch_24
        0xb26c538 -> :sswitch_19
        0x4f62635d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_90
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
    .end packed-switch
.end method

.method private static msgIdFromUri(Landroid/net/Uri;)J
    .registers 3

    .line 125
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 127
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 128
    if-nez p0, :cond_c

    return-wide v0

    .line 129
    :cond_c
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-wide v0

    .line 130
    :catchall_11
    move-exception p0

    .line 131
    return-wide v0
.end method

.method private persistParts(Landroid/content/Context;JLjava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/WapPdu$RetrievePart;",
            ">;)V"
        }
    .end annotation

    .line 141
    move-wide/from16 v1, p2

    const-string v3, "part "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistParts msgId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const/4 v4, -0x1

    if-nez p4, :cond_1e

    move v5, v4

    goto :goto_22

    :cond_1e
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    :goto_22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v5, "RetroGM.MmsDownloadReceiver"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p4, :cond_1d4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    goto/16 :goto_1d4

    .line 144
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/part"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 145
    nop

    .line 146
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;

    .line 148
    :try_start_6a
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentType:Ljava/lang/String;

    if-nez v0, :cond_71

    const-string v0, "application/octet-stream"

    goto :goto_73

    :cond_71
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentType:Ljava/lang/String;

    :goto_73
    move-object v11, v0

    .line 149
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 150
    const-string v0, "mid"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v0, "ct"

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentLocation:Ljava/lang/String;

    if-eqz v0, :cond_92

    const-string v0, "cl"

    iget-object v13, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_92
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentId:Ljava/lang/String;

    if-eqz v0, :cond_9d

    const-string v0, "cid"

    iget-object v13, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentId:Ljava/lang/String;

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_9d
    const-string v0, "text/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_a3
    .catchall {:try_start_6a .. :try_end_a3} :catchall_1b4

    const-string v13, " -> "

    if-eqz v0, :cond_11c

    .line 155
    :try_start_a7
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->charset:Ljava/lang/String;

    if-nez v0, :cond_ae

    const-string v0, "utf-8"

    goto :goto_b0

    :cond_ae
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->charset:Ljava/lang/String;
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_1b4

    .line 158
    :goto_b0
    :try_start_b0
    new-instance v14, Ljava/lang/String;

    iget-object v15, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    if-nez v15, :cond_b9

    new-array v15, v8, [B

    goto :goto_bb

    :cond_b9
    iget-object v15, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    :goto_bb
    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_be
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b0 .. :try_end_be} :catch_bf
    .catchall {:try_start_b0 .. :try_end_be} :catchall_1b4

    .line 161
    goto :goto_ce

    .line 159
    :catch_bf
    move-exception v0

    .line 160
    :try_start_c0
    new-instance v14, Ljava/lang/String;

    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    if-nez v0, :cond_c9

    new-array v0, v8, [B

    goto :goto_cb

    :cond_c9
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    :goto_cb
    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .line 162
    :goto_ce
    const-string v0, "text"

    invoke-virtual {v12, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "chset"

    const/16 v10, 0x6a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " text ct="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto/16 :goto_1b3

    .line 174
    :cond_11c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " bin ct="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 176
    iget-object v12, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    if-nez v12, :cond_147

    move v12, v4

    goto :goto_14a

    :cond_147
    iget-object v12, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    array-length v12, v12

    :goto_14a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 175
    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v0, :cond_1b3

    iget-object v11, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    if-eqz v11, :cond_1b3

    iget-object v11, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    array-length v11, v11

    if-lez v11, :cond_1b3

    .line 179
    nop

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v11
    :try_end_171
    .catchall {:try_start_c0 .. :try_end_171} :catchall_1b4

    .line 181
    if-eqz v11, :cond_1ae

    .line 182
    :try_start_173
    iget-object v0, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " wrote "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v10, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    array-length v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "B"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catchall {:try_start_173 .. :try_end_19f} :catchall_1a0

    goto :goto_1ae

    .line 179
    :catchall_1a0
    move-exception v0

    move-object v10, v0

    if-eqz v11, :cond_1ad

    :try_start_1a4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1a8

    goto :goto_1ad

    :catchall_1a8
    move-exception v0

    move-object v11, v0

    :try_start_1aa
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1ad
    :goto_1ad
    throw v10

    .line 185
    :cond_1ae
    :goto_1ae
    if-eqz v11, :cond_1b3

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1b3
    .catchall {:try_start_1aa .. :try_end_1b3} :catchall_1b4

    .line 190
    :cond_1b3
    :goto_1b3
    goto :goto_1cf

    .line 188
    :catchall_1b4
    move-exception v0

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " persist failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :goto_1cf
    add-int/lit8 v9, v9, 0x1

    .line 192
    goto/16 :goto_5d

    .line 193
    :cond_1d3
    return-void

    .line 143
    :cond_1d4
    :goto_1d4
    return-void
.end method

.method private postFailedNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    .line 259
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 260
    if-nez v0, :cond_b

    return-void

    .line 261
    :cond_b
    invoke-direct {p0, v0}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->ensureChannel(Landroid/app/NotificationManager;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->builder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v1, 0x1080078

    .line 263
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 264
    const-string v1, "MMS download failed"

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string p2, "?"

    :cond_32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " (code "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 267
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mms-fail-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 269
    return-void
.end method

.method private postSuccessNotification(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 10

    .line 240
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 241
    if-nez v0, :cond_b

    return-void

    .line 242
    :cond_b
    invoke-direct {p0, v0}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->ensureChannel(Landroid/app/NotificationManager;)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/atd/groupme/sms/SmsActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    const/high16 v2, 0x8000000

    .line 246
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_24

    const/high16 v2, 0xc000000

    .line 247
    :cond_24
    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 249
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->builder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v2, 0x108007d

    .line 250
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string p2, "Unknown"

    :cond_47
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 252
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 253
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 254
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mms-done-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 256
    return-void
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 9

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 219
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_76

    .line 221
    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_56

    .line 222
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    new-array v3, v0, [B

    .line 223
    const/4 v4, 0x0

    move v5, v4

    .line 224
    :goto_2f
    if-ge v5, v0, :cond_3c

    .line 225
    sub-int v6, v0, v5

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_4c

    .line 226
    if-gez v6, :cond_3a

    goto :goto_3c

    .line 227
    :cond_3a
    add-int/2addr v5, v6

    .line 228
    goto :goto_2f

    .line 229
    :cond_3c
    :goto_3c
    if-ne v5, v0, :cond_42

    .line 233
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_56

    .line 229
    return-object v3

    .line 230
    :cond_42
    :try_start_42
    new-array v0, v5, [B

    .line 231
    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4c

    .line 232
    nop

    .line 233
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_56

    .line 232
    return-object v0

    .line 221
    :catchall_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v2

    :try_start_52
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    .line 233
    :catch_56
    move-exception v0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") failed"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RetroGM.MmsDownloadReceiver"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-object v1

    .line 220
    :cond_76
    :goto_76
    return-object v1
.end method

.method private static trimMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 119
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 121
    if-lez v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_11
    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.atd.groupme.sms.MMS_DOWNLOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 52
    :cond_d
    const-string v0, "retrogm_result_code"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    const/4 v2, -0x1

    if-ne v0, v1, :cond_1f

    .line 55
    :try_start_18
    invoke-virtual {p0}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->getResultCode()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1c} :catch_1d

    .line 58
    goto :goto_1f

    .line 56
    :catch_1d
    move-exception v0

    .line 57
    move v0, v2

    .line 60
    :cond_1f
    :goto_1f
    const-string v1, "file"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v3, "row_uri"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string v4, "from"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RetroGM.MmsDownloadReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eq v0, v2, :cond_59

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->postFailedNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 68
    return-void

    .line 71
    :cond_59
    invoke-direct {p0, v1}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 72
    const-wide/16 v1, 0x0

    if-nez v0, :cond_63

    move-wide v6, v1

    goto :goto_65

    :cond_63
    array-length v4, v0

    int-to-long v6, v4

    .line 73
    :goto_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS retrieve.conf bytes="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x0

    if-eqz v0, :cond_87

    array-length v8, v0

    if-nez v8, :cond_82

    goto :goto_87

    .line 76
    :cond_82
    invoke-static {v0}, Lcom/atd/groupme/sms/WapPdu;->parseRetrieveConf([B)Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;

    move-result-object v0

    goto :goto_88

    :cond_87
    :goto_87
    move-object v0, v4

    .line 77
    :goto_88
    if-eqz v0, :cond_be

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "M-Retrieve.conf parsed: from="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->from:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " parts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->parts:Ljava/util/List;

    .line 79
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " contentType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->contentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_be
    if-nez v3, :cond_c2

    move-object v3, v4

    goto :goto_c6

    :cond_c2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 84
    :goto_c6
    if-eqz v3, :cond_127

    .line 86
    :try_start_c8
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v9, "m_type"

    const/16 v10, 0x84

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v9, "msg_box"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v9, "read"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v9, "seen"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    if-eqz v0, :cond_108

    iget-wide v9, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->date:J

    cmp-long v9, v9, v1

    if-lez v9, :cond_108

    .line 92
    const-string v9, "date"

    iget-wide v10, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->date:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    :cond_108
    if-eqz v0, :cond_119

    iget-object v9, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->from:Ljava/lang/String;

    if-eqz v9, :cond_119

    .line 101
    const-string v9, "sub"

    iget-object v10, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->from:Ljava/lang/String;

    invoke-static {v10}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->trimMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v3, v8, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_120} :catch_121

    .line 106
    goto :goto_127

    .line 104
    :catch_121
    move-exception v4

    .line 105
    const-string v8, "update MMS row failed"

    invoke-static {v5, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_127
    :goto_127
    invoke-static {v3}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->msgIdFromUri(Landroid/net/Uri;)J

    move-result-wide v3

    .line 110
    if-eqz v0, :cond_136

    cmp-long v1, v3, v1

    if-lez v1, :cond_136

    .line 111
    iget-object v0, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->parts:Ljava/util/List;

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->persistParts(Landroid/content/Context;JLjava/util/List;)V

    .line 114
    :cond_136
    invoke-direct {p0, p1, p2, v6, v7}, Lcom/atd/groupme/sms/MmsDownloadReceiver;->postSuccessNotification(Landroid/content/Context;Ljava/lang/String;J)V

    .line 115
    return-void
.end method
