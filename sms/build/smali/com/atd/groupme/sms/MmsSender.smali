.class public Lcom/atd/groupme/sms/MmsSender;
.super Ljava/lang/Object;
.source "MmsSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RetroGM.MmsSender"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encode(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;

    invoke-direct {v0}, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;-><init>()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->transactionId:Ljava/lang/String;

    .line 98
    iget-object v1, v0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->recipients:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 104
    new-instance p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "text/plain"

    const-string v2, "text.txt"

    const-string v3, "utf-8"

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/atd/groupme/sms/WapPduEncoder$Part;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p2, v0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->parts:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3f
    if-eqz p3, :cond_72

    .line 114
    invoke-static {p0, p3}, Lcom/atd/groupme/sms/MmsSender;->readUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object p1

    .line 115
    nop

    .line 116
    if-nez p4, :cond_4c

    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p4

    .line 117
    :cond_4c
    if-nez p4, :cond_50

    const-string p4, "image/jpeg"

    .line 118
    :cond_50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "attach"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4}, Lcom/atd/groupme/sms/MmsSender;->extensionFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance p2, Lcom/atd/groupme/sms/WapPduEncoder$Part;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p4, p0, p3}, Lcom/atd/groupme/sms/WapPduEncoder$Part;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p0, v0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->parts:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_72
    invoke-static {v0}, Lcom/atd/groupme/sms/WapPduEncoder;->encodeSendReq(Lcom/atd/groupme/sms/WapPduEncoder$SendReq;)[B

    move-result-object p0

    return-object p0
.end method

.method private static extensionFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 128
    const-string v0, ".bin"

    if-nez p0, :cond_5

    return-object v0

    .line 129
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6a

    :cond_d
    goto :goto_53

    :sswitch_e
    const-string v2, "video/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x5

    goto :goto_53

    :sswitch_18
    const-string v2, "image/png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    goto :goto_53

    :sswitch_22
    const-string v2, "image/jpg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    goto :goto_53

    :sswitch_2c
    const-string v2, "image/gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x3

    goto :goto_53

    :sswitch_36
    const-string v2, "image/webp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x4

    goto :goto_53

    :sswitch_40
    const-string v2, "image/jpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x0

    goto :goto_53

    :sswitch_4a
    const-string v2, "video/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x6

    :goto_53
    packed-switch v1, :pswitch_data_88

    .line 137
    return-object v0

    .line 136
    :pswitch_57
    const-string p0, ".3gp"

    return-object p0

    .line 135
    :pswitch_5a
    const-string p0, ".mp4"

    return-object p0

    .line 134
    :pswitch_5d
    const-string p0, ".webp"

    return-object p0

    .line 133
    :pswitch_60
    const-string p0, ".gif"

    return-object p0

    .line 132
    :pswitch_63
    const-string p0, ".png"

    return-object p0

    .line 131
    :pswitch_66
    const-string p0, ".jpg"

    return-object p0

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x63306f58 -> :sswitch_4a
        -0x58a7d764 -> :sswitch_40
        -0x58a21830 -> :sswitch_36
        -0x34688ef0 -> :sswitch_2c
        -0x346882d3 -> :sswitch_22
        -0x34686c8b -> :sswitch_18
        0x4f62635d -> :sswitch_e
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_66
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
    .end packed-switch
.end method

.method private static readUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 143
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_4b

    .line 144
    if-eqz p0, :cond_29

    .line 145
    const/16 p1, 0x2000

    :try_start_d
    new-array p1, p1, [B

    .line 147
    :goto_f
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1a

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    .line 150
    :cond_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_27

    .line 151
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_4b

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 150
    :cond_26
    return-object p1

    .line 142
    :catchall_27
    move-exception p1

    goto :goto_42

    .line 144
    :cond_29
    :try_start_29
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openInputStream null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_27

    .line 142
    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v0

    :try_start_47
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p1

    if-eqz p0, :cond_56

    :try_start_4e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_56
    :goto_56
    throw p1
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 15

    .line 41
    const-string v0, "RetroGM.MmsSender"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 43
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encode start recipient="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " body.len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    if-nez p2, :cond_23

    const/4 v3, -0x1

    goto :goto_27

    :cond_23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " attachment="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/atd/groupme/sms/MmsSender;->encode(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)[B

    move-result-object p3

    .line 48
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoded pdu bytes="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    array-length v1, p3

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance p4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "mms"

    invoke-direct {p4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mkdirs("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v2

    .line 55
    :cond_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".pdu"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b6
    .catchall {:try_start_a .. :try_end_b6} :catchall_146

    .line 58
    :try_start_b6
    invoke-virtual {p4, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_13c

    .line 59
    :try_start_b9
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/atd/groupme/sms/MmsFileProvider;->uriFor(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_c4
    .catchall {:try_start_b9 .. :try_end_c4} :catchall_146

    .line 65
    const/4 p3, 0x1

    :try_start_c5
    const-string p4, "com.android.mms.service"

    invoke-virtual {p0, p4, v6, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_cb

    .line 69
    goto :goto_d1

    .line 67
    :catchall_cb
    move-exception p4

    .line 68
    :try_start_cc
    const-string v1, "grantUriPermission failed"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_d1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrote pdu "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " -> "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p4, Landroid/content/Intent;

    const-class v1, Lcom/atd/groupme/sms/MmsSentReceiver;

    invoke-direct {p4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "com.atd.groupme.sms.MMS_SENT"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "pdu_path"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "recipient"

    invoke-virtual {p4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string p1, "body"

    if-nez p2, :cond_115

    const-string p2, ""

    :cond_115
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/high16 p1, 0x8000000

    .line 79
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_122

    const/high16 p1, 0xc000000

    .line 80
    :cond_122
    nop

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int p2, v3

    .line 80
    invoke-static {p0, p2, p4, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 83
    const-string p1, "dispatch sendMultimediaMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_13b
    .catchall {:try_start_cc .. :try_end_13b} :catchall_146

    .line 87
    return p3

    .line 57
    :catchall_13c
    move-exception p0

    :try_start_13d
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_141

    goto :goto_145

    :catchall_141
    move-exception p1

    :try_start_142
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_145
    throw p0
    :try_end_146
    .catchall {:try_start_142 .. :try_end_146} :catchall_146

    .line 88
    :catchall_146
    move-exception p0

    .line 89
    const-string p1, "send failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return v2
.end method
