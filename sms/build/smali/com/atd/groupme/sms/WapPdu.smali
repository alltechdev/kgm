.class public Lcom/atd/groupme/sms/WapPdu;
.super Ljava/lang/Object;
.source "WapPdu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;,
        Lcom/atd/groupme/sms/WapPdu$RetrievePart;,
        Lcom/atd/groupme/sms/WapPdu$MNotificationInd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetroGM.WapPdu"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charsetName(I)Ljava/lang/String;
    .registers 2

    .line 304
    const-string v0, "utf-8"

    sparse-switch p0, :sswitch_data_e

    .line 308
    return-object v0

    .line 307
    :sswitch_6
    return-object v0

    .line 306
    :sswitch_7
    const-string p0, "iso-8859-1"

    return-object p0

    .line 305
    :sswitch_a
    const-string p0, "us-ascii"

    return-object p0

    nop

    :sswitch_data_e
    .sparse-switch
        0x3 -> :sswitch_a
        0x4 -> :sswitch_7
        0x6a -> :sswitch_6
    .end sparse-switch
.end method

.method private static contentTypeName(I)Ljava/lang/String;
    .registers 1

    .line 289
    sparse-switch p0, :sswitch_data_22

    .line 299
    const-string p0, "application/octet-stream"

    return-object p0

    .line 298
    :sswitch_6
    const-string p0, "video/3gpp"

    return-object p0

    .line 297
    :sswitch_9
    const-string p0, "application/vnd.wap.multipart.related"

    return-object p0

    .line 296
    :sswitch_c
    const-string p0, "application/smil"

    return-object p0

    .line 295
    :sswitch_f
    const-string p0, "application/vnd.wap.multipart.mixed"

    return-object p0

    .line 294
    :sswitch_12
    const-string p0, "image/png"

    return-object p0

    .line 293
    :sswitch_15
    const-string p0, "image/jpeg"

    return-object p0

    .line 292
    :sswitch_18
    const-string p0, "image/gif"

    return-object p0

    .line 291
    :sswitch_1b
    const-string p0, "text/html"

    return-object p0

    .line 290
    :sswitch_1e
    const-string p0, "text/plain"

    return-object p0

    nop

    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_1e
        0x6 -> :sswitch_1b
        0x1d -> :sswitch_18
        0x1e -> :sswitch_15
        0x21 -> :sswitch_12
        0x23 -> :sswitch_f
        0x29 -> :sswitch_c
        0x33 -> :sswitch_9
        0x37 -> :sswitch_6
    .end sparse-switch
.end method

.method private static findNul([BI)I
    .registers 3

    .line 429
    nop

    :goto_1
    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 430
    aget-byte v0, p0, p1

    if-nez v0, :cond_9

    return p1

    .line 429
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 432
    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method private static parseContentType([B[I)Ljava/lang/String;
    .registers 6

    .line 209
    const/4 v0, 0x0

    aget v1, p1, v0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 210
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_16

    .line 212
    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 213
    and-int/lit8 p0, v2, 0x7f

    invoke-static {p0}, Lcom/atd/groupme/sms/WapPdu;->contentTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :cond_16
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v1

    .line 217
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 218
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 220
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_32

    .line 221
    and-int/lit8 p0, v2, 0x7f

    invoke-static {p0}, Lcom/atd/groupme/sms/WapPdu;->contentTypeName(I)Ljava/lang/String;

    move-result-object p0

    .line 222
    aget v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    goto :goto_36

    .line 224
    :cond_32
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object p0

    .line 228
    :goto_36
    aput v1, p1, v0

    .line 229
    return-object p0
.end method

.method private static parseContentTypeWithParams([B[ILcom/atd/groupme/sms/WapPdu$RetrievePart;)Ljava/lang/String;
    .registers 10

    .line 235
    const/4 v0, 0x0

    aget v1, p1, v0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 236
    and-int/lit16 v3, v2, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    .line 237
    add-int/2addr v1, v4

    aput v1, p1, v0

    .line 238
    and-int/lit8 p0, v2, 0x7f

    invoke-static {p0}, Lcom/atd/groupme/sms/WapPdu;->contentTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_16
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v1

    .line 241
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 242
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 244
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_31

    .line 245
    and-int/lit8 v2, v2, 0x7f

    invoke-static {v2}, Lcom/atd/groupme/sms/WapPdu;->contentTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    aget v3, p1, v0

    add-int/2addr v3, v4

    aput v3, p1, v0

    goto :goto_35

    .line 248
    :cond_31
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v2

    .line 250
    :goto_35
    aget v3, p1, v0

    if-ge v3, v1, :cond_b3

    .line 251
    add-int/lit8 v5, v3, 0x1

    aput v5, p1, v0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 252
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_94

    .line 253
    and-int/lit8 v3, v3, 0x7f

    .line 254
    if-ne v3, v4, :cond_69

    .line 256
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    .line 257
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_5f

    .line 258
    and-int/lit8 v3, v3, 0x7f

    invoke-static {v3}, Lcom/atd/groupme/sms/WapPdu;->charsetName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->charset:Ljava/lang/String;

    .line 259
    aget v3, p1, v0

    add-int/2addr v3, v4

    aput v3, p1, v0

    goto :goto_68

    .line 261
    :cond_5f
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v3

    .line 262
    aget v5, p1, v0

    add-int/2addr v5, v3

    aput v5, p1, v0

    .line 264
    :goto_68
    goto :goto_93

    .line 266
    :cond_69
    aget-byte v3, p0, v5

    and-int/lit16 v3, v3, 0xff

    .line 267
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_76

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v0

    goto :goto_93

    .line 268
    :cond_76
    const/16 v6, 0x1e

    if-gt v3, v6, :cond_84

    .line 269
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v3

    .line 270
    aget v5, p1, v0

    add-int/2addr v5, v3

    aput v5, p1, v0

    .line 271
    goto :goto_93

    .line 272
    :cond_84
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v3

    .line 273
    if-ltz v3, :cond_90

    if-le v3, v1, :cond_8d

    goto :goto_90

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    :cond_90
    :goto_90
    move v3, v1

    :goto_91
    aput v3, p1, v0

    .line 276
    :goto_93
    goto :goto_b2

    .line 278
    :cond_94
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v3

    .line 279
    if-ltz v3, :cond_a0

    if-le v3, v1, :cond_9d

    goto :goto_a0

    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    :cond_a0
    :goto_a0
    move v3, v1

    :goto_a1
    aput v3, p1, v0

    .line 280
    invoke-static {p0, v3}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v3

    .line 281
    if-ltz v3, :cond_af

    if-le v3, v1, :cond_ac

    goto :goto_af

    :cond_ac
    add-int/lit8 v3, v3, 0x1

    goto :goto_b0

    :cond_af
    :goto_af
    move v3, v1

    :goto_b0
    aput v3, p1, v0

    .line 283
    :goto_b2
    goto :goto_35

    .line 284
    :cond_b3
    aput v1, p1, v0

    .line 285
    return-object v2
.end method

.method private static parseMultipart([BILcom/atd/groupme/sms/WapPdu$MRetrieveConf;)V
    .registers 14

    .line 150
    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 151
    invoke-static {p0, v1}, Lcom/atd/groupme/sms/WapPdu;->readUintVar([B[I)I

    move-result p1

    .line 152
    move v3, v2

    :goto_b
    if-ge v3, p1, :cond_c3

    aget v4, v1, v2

    array-length v5, p0

    if-ge v4, v5, :cond_c3

    .line 153
    invoke-static {p0, v1}, Lcom/atd/groupme/sms/WapPdu;->readUintVar([B[I)I

    move-result v4

    .line 154
    invoke-static {p0, v1}, Lcom/atd/groupme/sms/WapPdu;->readUintVar([B[I)I

    move-result v5

    .line 155
    aget v6, v1, v2

    .line 156
    add-int/2addr v4, v6

    .line 158
    new-instance v7, Lcom/atd/groupme/sms/WapPdu$RetrievePart;

    invoke-direct {v7}, Lcom/atd/groupme/sms/WapPdu$RetrievePart;-><init>()V

    .line 161
    new-array v8, v0, [I

    aput v6, v8, v2

    .line 162
    invoke-static {p0, v8, v7}, Lcom/atd/groupme/sms/WapPdu;->parseContentTypeWithParams([B[ILcom/atd/groupme/sms/WapPdu$RetrievePart;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentType:Ljava/lang/String;

    .line 165
    :goto_2c
    aget v6, v8, v2

    if-ge v6, v4, :cond_9a

    .line 166
    add-int/lit8 v9, v6, 0x1

    aput v9, v8, v2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 167
    and-int/lit16 v10, v6, 0x80

    if-nez v10, :cond_57

    .line 169
    invoke-static {p0, v9}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v6

    .line 170
    if-ltz v6, :cond_9a

    if-le v6, v4, :cond_45

    goto :goto_9a

    .line 171
    :cond_45
    add-int/lit8 v6, v6, 0x1

    aput v6, v8, v2

    .line 172
    invoke-static {p0, v6}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v6

    .line 173
    if-ltz v6, :cond_9a

    if-le v6, v4, :cond_52

    goto :goto_9a

    .line 174
    :cond_52
    add-int/lit8 v6, v6, 0x1

    aput v6, v8, v2

    .line 175
    goto :goto_2c

    .line 177
    :cond_57
    and-int/lit8 v6, v6, 0x7f

    .line 178
    const/16 v10, 0xe

    if-ne v6, v10, :cond_64

    .line 179
    invoke-static {p0, v8}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentLocation:Ljava/lang/String;

    goto :goto_99

    .line 180
    :cond_64
    const/16 v10, 0x40

    if-ne v6, v10, :cond_6f

    .line 181
    invoke-static {p0, v8}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->contentId:Ljava/lang/String;

    goto :goto_99

    .line 184
    :cond_6f
    aget-byte v6, p0, v9

    and-int/lit16 v6, v6, 0xff

    .line 185
    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_7c

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    goto :goto_99

    .line 186
    :cond_7c
    const/16 v10, 0x1e

    if-gt v6, v10, :cond_8a

    .line 187
    invoke-static {p0, v8}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v6

    .line 188
    aget v9, v8, v2

    add-int/2addr v9, v6

    aput v9, v8, v2

    .line 189
    goto :goto_99

    .line 190
    :cond_8a
    invoke-static {p0, v9}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v6

    .line 191
    if-ltz v6, :cond_96

    if-le v6, v4, :cond_93

    goto :goto_96

    :cond_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    :cond_96
    :goto_96
    move v6, v4

    :goto_97
    aput v6, v8, v2

    .line 194
    :goto_99
    goto :goto_2c

    .line 195
    :cond_9a
    :goto_9a
    aput v4, v1, v2

    .line 196
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v7, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    .line 197
    array-length v4, p0

    aget v6, v1, v2

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 198
    if-lez v4, :cond_b5

    aget v6, v1, v2

    iget-object v8, v7, Lcom/atd/groupme/sms/WapPdu$RetrievePart;->data:[B

    invoke-static {p0, v6, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :cond_b5
    aget v4, v1, v2

    add-int/2addr v4, v5

    aput v4, v1, v2

    .line 200
    iget-object v4, p2, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->parts:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bf} :catch_c4

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 204
    :cond_c3
    goto :goto_cc

    .line 202
    :catch_c4
    move-exception p0

    .line 203
    const-string p1, "RetroGM.WapPdu"

    const-string p2, "parseMultipart failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :goto_cc
    return-void
.end method

.method public static parseNotificationInd([B)Lcom/atd/groupme/sms/WapPdu$MNotificationInd;
    .registers 9

    .line 313
    new-instance v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;

    invoke-direct {v0}, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;-><init>()V

    .line 314
    const/4 v1, 0x0

    move v2, v1

    .line 316
    :goto_7
    :try_start_7
    array-length v3, p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8} :catch_f6

    if-ge v2, v3, :cond_f5

    .line 317
    add-int/lit8 v3, v2, 0x1

    :try_start_c
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 318
    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_29

    .line 320
    invoke-static {p0, v3}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_f2

    .line 321
    if-gez v2, :cond_1c

    goto/16 :goto_f5

    .line 322
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 323
    :try_start_1e
    invoke-static {p0, v2}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_f6

    .line 324
    if-gez v2, :cond_26

    goto/16 :goto_f5

    .line 325
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 326
    goto :goto_7

    .line 328
    :cond_29
    and-int/lit8 v2, v2, 0x7f

    .line 329
    const/4 v4, 0x1

    :try_start_2c
    new-array v5, v4, [I

    aput v3, v5, v1

    .line 330
    sparse-switch v2, :sswitch_data_116

    .line 393
    goto/16 :goto_b6

    .line 336
    :sswitch_35
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->transactionId:Ljava/lang/String;

    .line 337
    goto/16 :goto_ee

    .line 355
    :sswitch_3d
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readEncodedString([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->subject:Ljava/lang/String;

    .line 356
    goto/16 :goto_ee

    .line 372
    :sswitch_45
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readLongInteger([B[I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->messageSize:J

    .line 373
    goto/16 :goto_ee

    .line 340
    :sswitch_4d
    add-int/lit8 v2, v3, 0x1

    aput v2, v5, v1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->mmsVersion:I

    .line 341
    goto/16 :goto_ee

    .line 332
    :sswitch_59
    add-int/lit8 v2, v3, 0x1

    aput v2, v5, v1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->messageType:I

    .line 333
    goto/16 :goto_ee

    .line 360
    :sswitch_65
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    .line 361
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_78

    .line 362
    and-int/lit8 v2, v2, 0x7f

    iput v2, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->messageClass:I

    .line 363
    aget v2, v5, v1

    add-int/2addr v2, v4

    aput v2, v5, v1

    goto/16 :goto_ee

    .line 366
    :cond_78
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    .line 369
    goto/16 :goto_ee

    .line 344
    :sswitch_7d
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 345
    aget v4, v5, v1

    add-int/2addr v2, v4

    .line 347
    add-int/lit8 v6, v4, 0x1

    aput v6, v5, v1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 348
    const/16 v6, 0x80

    if-ne v4, v6, :cond_96

    .line 349
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readEncodedString([B[I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->from:Ljava/lang/String;

    .line 351
    :cond_96
    aput v2, v5, v1

    .line 352
    goto :goto_ee

    .line 376
    :sswitch_99
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 377
    aget v4, v5, v1

    add-int/2addr v2, v4

    .line 378
    add-int/lit8 v6, v4, 0x1

    aput v6, v5, v1

    aget-byte v4, p0, v4

    .line 380
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readLongInteger([B[I)J

    move-result-wide v6

    .line 381
    iput-wide v6, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->expirySeconds:J

    .line 382
    aput v2, v5, v1

    .line 383
    goto :goto_ee

    .line 386
    :sswitch_af
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->contentLocation:Ljava/lang/String;

    .line 387
    goto :goto_ee

    .line 393
    :goto_b6
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    .line 394
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_c3

    .line 395
    add-int/lit8 v2, v3, 0x1

    aput v2, v5, v1

    goto :goto_ee

    .line 396
    :cond_c3
    const/16 v4, 0x1e

    if-gt v2, v4, :cond_d1

    .line 397
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 398
    aget v4, v5, v1

    add-int/2addr v4, v2

    aput v4, v5, v1

    .line 399
    goto :goto_ee

    :cond_d1
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_df

    .line 401
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 402
    aget v4, v5, v1

    add-int/2addr v4, v2

    aput v4, v5, v1

    .line 403
    goto :goto_ee

    .line 405
    :cond_df
    invoke-static {p0, v3}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2

    .line 406
    if-gez v2, :cond_e9

    .line 407
    array-length v2, p0

    aput v2, v5, v1

    goto :goto_ed

    .line 409
    :cond_e9
    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v1

    .line 412
    :goto_ed
    nop

    .line 415
    :goto_ee
    aget v2, v5, v1
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_f0} :catch_f2

    .line 416
    goto/16 :goto_7

    .line 417
    :catch_f2
    move-exception p0

    move v2, v3

    goto :goto_f7

    .line 421
    :cond_f5
    :goto_f5
    goto :goto_10f

    .line 417
    :catch_f6
    move-exception p0

    .line 418
    :goto_f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error around offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RetroGM.WapPdu"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    :goto_10f
    iget p0, v0, Lcom/atd/groupme/sms/WapPdu$MNotificationInd;->messageType:I

    if-nez p0, :cond_115

    const/4 p0, 0x0

    return-object p0

    .line 423
    :cond_115
    return-object v0

    :sswitch_data_116
    .sparse-switch
        0x3 -> :sswitch_af
        0x8 -> :sswitch_99
        0x9 -> :sswitch_7d
        0xa -> :sswitch_65
        0xc -> :sswitch_59
        0xd -> :sswitch_4d
        0xe -> :sswitch_45
        0x16 -> :sswitch_3d
        0x18 -> :sswitch_35
    .end sparse-switch
.end method

.method public static parseRetrieveConf([B)Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;
    .registers 9

    .line 65
    new-instance v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;

    invoke-direct {v0}, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;-><init>()V

    .line 66
    const/4 v1, 0x0

    move v2, v1

    .line 70
    :goto_7
    :try_start_7
    array-length v3, p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8} :catch_e8

    if-ge v2, v3, :cond_e7

    .line 71
    add-int/lit8 v3, v2, 0x1

    :try_start_c
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 72
    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_29

    .line 74
    invoke-static {p0, v3}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_e4

    .line 75
    if-gez v2, :cond_1c

    goto/16 :goto_e7

    .line 76
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 77
    :try_start_1e
    invoke-static {p0, v2}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_e8

    .line 78
    if-gez v2, :cond_26

    goto/16 :goto_e7

    .line 79
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_7

    .line 82
    :cond_29
    and-int/lit8 v2, v2, 0x7f

    .line 83
    const/4 v4, 0x1

    :try_start_2c
    new-array v5, v4, [I

    aput v3, v5, v1

    .line 84
    sparse-switch v2, :sswitch_data_108

    .line 124
    goto/16 :goto_aa

    .line 89
    :sswitch_35
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->transactionId:Ljava/lang/String;

    goto/16 :goto_e0

    .line 92
    :sswitch_3d
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readEncodedString([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->subject:Ljava/lang/String;

    goto/16 :goto_e0

    .line 90
    :sswitch_45
    add-int/lit8 v2, v3, 0x1

    aput v2, v5, v1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->mmsVersion:I

    goto/16 :goto_e0

    .line 86
    :sswitch_51
    add-int/lit8 v2, v3, 0x1

    aput v2, v5, v1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->messageType:I

    .line 87
    goto/16 :goto_e0

    .line 91
    :sswitch_5d
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->messageId:Ljava/lang/String;

    goto/16 :goto_e0

    .line 104
    :sswitch_65
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    .line 105
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_77

    .line 106
    and-int/lit8 v2, v2, 0x7f

    iput v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->messageClass:I

    .line 107
    aget v2, v5, v1

    add-int/2addr v2, v4

    aput v2, v5, v1

    goto :goto_e0

    .line 109
    :cond_77
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    .line 111
    goto :goto_e0

    .line 94
    :sswitch_7b
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 95
    aget v4, v5, v1

    add-int/2addr v2, v4

    .line 96
    add-int/lit8 v6, v4, 0x1

    aput v6, v5, v1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 97
    const/16 v6, 0x80

    if-ne v4, v6, :cond_94

    .line 98
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readEncodedString([B[I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->from:Ljava/lang/String;

    .line 100
    :cond_94
    aput v2, v5, v1

    .line 101
    goto :goto_e0

    .line 114
    :sswitch_97
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readLongInteger([B[I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->date:J

    .line 115
    goto :goto_e0

    .line 118
    :sswitch_9e
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->parseContentType([B[I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->contentType:Ljava/lang/String;

    .line 119
    aget v2, v5, v1
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_a6} :catch_e4

    .line 120
    :try_start_a6
    invoke-static {p0, v2, v0}, Lcom/atd/groupme/sms/WapPdu;->parseMultipart([BILcom/atd/groupme/sms/WapPdu$MRetrieveConf;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_e8

    .line 121
    return-object v0

    .line 124
    :goto_aa
    :try_start_aa
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    .line 125
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_b7

    .line 126
    add-int/lit8 v2, v3, 0x1

    aput v2, v5, v1

    goto :goto_e0

    .line 127
    :cond_b7
    const/16 v4, 0x1e

    if-gt v2, v4, :cond_c5

    .line 128
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 129
    aget v4, v5, v1

    add-int/2addr v4, v2

    aput v4, v5, v1

    .line 130
    goto :goto_e0

    :cond_c5
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_d3

    .line 131
    invoke-static {p0, v5}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v2

    .line 132
    aget v4, v5, v1

    add-int/2addr v4, v2

    aput v4, v5, v1

    .line 133
    goto :goto_e0

    .line 134
    :cond_d3
    invoke-static {p0, v3}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2

    .line 135
    if-gez v2, :cond_db

    array-length v2, p0

    goto :goto_dd

    :cond_db
    add-int/lit8 v2, v2, 0x1

    :goto_dd
    aput v2, v5, v1

    .line 137
    nop

    .line 140
    :goto_e0
    aget v2, v5, v1
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_e2} :catch_e4

    .line 141
    goto/16 :goto_7

    .line 142
    :catch_e4
    move-exception p0

    move v2, v3

    goto :goto_e9

    .line 144
    :cond_e7
    :goto_e7
    goto :goto_101

    .line 142
    :catch_e8
    move-exception p0

    .line 143
    :goto_e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRetrieveConf header phase failed @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RetroGM.WapPdu"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :goto_101
    iget p0, v0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->messageType:I

    if-nez p0, :cond_106

    const/4 v0, 0x0

    :cond_106
    return-object v0

    nop

    :sswitch_data_108
    .sparse-switch
        0x4 -> :sswitch_9e
        0x5 -> :sswitch_97
        0x9 -> :sswitch_7b
        0xa -> :sswitch_65
        0xb -> :sswitch_5d
        0xc -> :sswitch_51
        0xd -> :sswitch_45
        0x16 -> :sswitch_3d
        0x18 -> :sswitch_35
    .end sparse-switch
.end method

.method private static readEncodedString([B[I)Ljava/lang/String;
    .registers 8

    .line 496
    const/4 v0, 0x0

    aget v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 497
    const/16 v2, 0x20

    if-ge v1, v2, :cond_4d

    .line 498
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readValueLength([B[I)I

    move-result v1

    .line 499
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 501
    if-ge v2, v1, :cond_35

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_35

    .line 502
    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    .line 503
    :goto_20
    aget v2, p1, v0

    if-ge v2, v1, :cond_2f

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2f

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    goto :goto_20

    .line 504
    :cond_2f
    if-ge v2, v1, :cond_35

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    .line 506
    :cond_35
    aget v2, p1, v0

    invoke-static {p0, v2}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2

    .line 507
    if-ltz v2, :cond_3f

    if-le v2, v1, :cond_40

    :cond_3f
    move v2, v1

    .line 508
    :cond_40
    new-instance v3, Ljava/lang/String;

    aget v4, p1, v0

    sub-int/2addr v2, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 509
    aput v1, p1, v0

    .line 510
    return-object v3

    .line 512
    :cond_4d
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readTextString([B[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readLongInteger([B[I)J
    .registers 11

    .line 486
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 487
    nop

    .line 488
    const-wide/16 v2, 0x0

    move v4, v0

    :goto_f
    if-ge v4, v1, :cond_27

    aget v5, p1, v0

    array-length v6, p0

    if-ge v5, v6, :cond_27

    .line 489
    const/16 v6, 0x8

    shl-long/2addr v2, v6

    add-int/lit8 v6, v5, 0x1

    aput v6, p1, v0

    aget-byte v5, p0, v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    or-long/2addr v2, v5

    .line 488
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 491
    :cond_27
    return-wide v2
.end method

.method private static readTextString([B[I)Ljava/lang/String;
    .registers 8

    .line 436
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 438
    array-length v2, p0

    if-ge v1, v2, :cond_10

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x22

    if-ne v2, v3, :cond_10

    .line 439
    add-int/lit8 v1, v1, 0x1

    .line 442
    :cond_10
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2e

    .line 443
    add-int/lit8 v1, v1, 0x1

    .line 445
    :goto_1d
    array-length v2, p0

    if-ge v1, v2, :cond_29

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 446
    :cond_29
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    add-int/lit8 v1, v1, 0x1

    .line 448
    :cond_2e
    invoke-static {p0, v1}, Lcom/atd/groupme/sms/WapPdu;->findNul([BI)I

    move-result v2

    .line 449
    if-gez v2, :cond_41

    .line 450
    array-length v2, p0

    aput v2, p1, v0

    .line 451
    new-instance p1, Ljava/lang/String;

    array-length v0, p0

    sub-int/2addr v0, v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    .line 453
    :cond_41
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, v1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v0

    .line 455
    return-object v3
.end method

.method private static readUintVar([B[I)I
    .registers 6

    .line 475
    const/4 v0, 0x0

    move v1, v0

    .line 477
    :goto_2
    aget v2, p1, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 478
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v3, v2, 0x7f

    or-int/2addr v1, v3

    .line 479
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_16

    .line 481
    return v1

    .line 480
    :cond_16
    goto :goto_2
.end method

.method private static readValueLength([B[I)I
    .registers 6

    .line 460
    const/4 v0, 0x0

    aget v1, p1, v0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 461
    const/16 v3, 0x1f

    if-ge v2, v3, :cond_10

    .line 462
    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 463
    return v2

    .line 465
    :cond_10
    if-ne v2, v3, :cond_1b

    .line 466
    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 467
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPdu;->readUintVar([B[I)I

    move-result p0

    return p0

    .line 471
    :cond_1b
    return v0
.end method
