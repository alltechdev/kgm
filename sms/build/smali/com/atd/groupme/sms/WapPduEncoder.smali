.class public Lcom/atd/groupme/sms/WapPduEncoder;
.super Ljava/lang/Object;
.source "WapPduEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/WapPduEncoder$SendReq;,
        Lcom/atd/groupme/sms/WapPduEncoder$Part;
    }
.end annotation


# static fields
.field private static final CT_APP_SMIL:I = 0x29

.field private static final CT_IMAGE_GIF:I = 0x1d

.field private static final CT_IMAGE_JPEG:I = 0x1e

.field private static final CT_IMAGE_PNG:I = 0x21

.field private static final CT_MULTIPART_MIXED:I = 0x23

.field private static final CT_MULTIPART_RELATED:I = 0x33

.field private static final CT_TEXT_PLAIN:I = 0x3

.field private static final H_MMS_BCC:I = 0x1

.field private static final H_MMS_CC:I = 0x2

.field private static final H_MMS_CONTENT_LOCATION:I = 0x3

.field private static final H_MMS_CONTENT_TYPE:I = 0x4

.field private static final H_MMS_DATE:I = 0x5

.field private static final H_MMS_DELIVERY_REPORT:I = 0x6

.field private static final H_MMS_DELIVERY_TIME:I = 0x7

.field private static final H_MMS_EXPIRY:I = 0x8

.field private static final H_MMS_FROM:I = 0x9

.field private static final H_MMS_MESSAGE_CLASS:I = 0xa

.field private static final H_MMS_MESSAGE_ID:I = 0xb

.field private static final H_MMS_MESSAGE_SIZE:I = 0xe

.field private static final H_MMS_MESSAGE_TYPE:I = 0xc

.field private static final H_MMS_PRIORITY:I = 0xf

.field private static final H_MMS_READ_REPORT:I = 0x10

.field private static final H_MMS_REPORT_ALLOWED:I = 0x11

.field private static final H_MMS_RESPONSE_STATUS:I = 0x12

.field private static final H_MMS_RESPONSE_TEXT:I = 0x13

.field private static final H_MMS_SENDER_VISIBILITY:I = 0x14

.field private static final H_MMS_STATUS:I = 0x15

.field private static final H_MMS_SUBJECT:I = 0x16

.field private static final H_MMS_TO:I = 0x17

.field private static final H_MMS_TRANSACTION_ID:I = 0x18

.field private static final H_MMS_VERSION:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charsetMibenum(Ljava/lang/String;)I
    .registers 5

    .line 308
    const/16 v0, 0x6a

    if-nez p0, :cond_5

    return v0

    .line 309
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    sparse-switch v2, :sswitch_data_42

    :cond_12
    goto :goto_3a

    :sswitch_13
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x0

    goto :goto_3a

    :sswitch_1d
    const-string v2, "utf8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    goto :goto_3a

    :sswitch_27
    const-string v2, "us-ascii"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x2

    goto :goto_3a

    :sswitch_31
    const-string v2, "iso-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move v1, v3

    :goto_3a
    packed-switch v1, :pswitch_data_54

    .line 314
    return v0

    .line 313
    :pswitch_3e
    const/4 p0, 0x4

    return p0

    .line 312
    :pswitch_40
    return v3

    .line 311
    :pswitch_41
    return v0

    :sswitch_data_42
    .sparse-switch
        -0x794a6370 -> :sswitch_31
        -0x70531c9e -> :sswitch_27
        0x36ef71 -> :sswitch_1d
        0x6a6fd92 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_3e
    .end packed-switch
.end method

.method public static encodeSendReq(Lcom/atd/groupme/sms/WapPduEncoder$SendReq;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->estimateSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 68
    const/16 v1, 0xc

    const/16 v2, 0x80

    invoke-static {v0, v1, v2}, Lcom/atd/groupme/sms/WapPduEncoder;->writeShortIntHeader(Ljava/io/ByteArrayOutputStream;II)V

    .line 70
    iget-object v1, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->transactionId:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-static {v0, v2, v1}, Lcom/atd/groupme/sms/WapPduEncoder;->writeTextStringHeader(Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)V

    .line 72
    const/16 v1, 0xd

    const/16 v2, 0x92

    invoke-static {v0, v1, v2}, Lcom/atd/groupme/sms/WapPduEncoder;->writeShortIntHeader(Ljava/io/ByteArrayOutputStream;II)V

    .line 76
    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    const/16 v2, 0x81

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    iget-object v2, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->recipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    const/16 v4, 0x17

    invoke-static {v3}, Lcom/atd/groupme/sms/WapPduEncoder;->toMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/atd/groupme/sms/WapPduEncoder;->writeEncodedStringHeader(Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)V

    .line 84
    goto :goto_32

    .line 87
    :cond_48
    iget-object v2, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->subject:Ljava/lang/String;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->subject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 88
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->subject:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/atd/groupme/sms/WapPduEncoder;->writeEncodedStringHeader(Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)V

    .line 96
    :cond_5b
    const/16 v2, 0x84

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    iget-object v1, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/atd/groupme/sms/WapPduEncoder;->writeUintvar(Ljava/io/ByteArrayOutputStream;I)V

    .line 102
    iget-object p0, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->parts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/atd/groupme/sms/WapPduEncoder$Part;

    .line 103
    invoke-static {v0, v1}, Lcom/atd/groupme/sms/WapPduEncoder;->writePart(Ljava/io/ByteArrayOutputStream;Lcom/atd/groupme/sms/WapPduEncoder$Part;)V

    .line 104
    goto :goto_77

    .line 106
    :cond_87
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static isAscii(Ljava/lang/String;)Z
    .registers 6

    .line 274
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 275
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 276
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_15

    return v1

    .line 275
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 278
    :cond_18
    return v0
.end method

.method static toMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 286
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x30

    if-lt v2, v3, :cond_23

    const/16 v3, 0x39

    if-gt v2, v3, :cond_23

    goto :goto_2f

    .line 288
    :cond_23
    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x23

    if-ne v2, v3, :cond_32

    :cond_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 287
    :cond_2f
    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 290
    :cond_35
    const-string p0, "/TYPE=PLMN"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static wellKnownContentType(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 295
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 296
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    sparse-switch v2, :sswitch_data_6e

    :cond_d
    goto :goto_49

    :sswitch_e
    const-string v2, "text/plain"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x0

    goto :goto_49

    :sswitch_18
    const-string v2, "application/smil"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x5

    goto :goto_49

    :sswitch_22
    const-string v2, "image/png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x4

    goto :goto_49

    :sswitch_2c
    const-string v2, "image/jpg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    move v1, v3

    goto :goto_49

    :sswitch_36
    const-string v2, "image/gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    goto :goto_49

    :sswitch_40
    const-string v2, "image/jpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    :goto_49
    packed-switch v1, :pswitch_data_88

    .line 303
    return-object v0

    .line 302
    :pswitch_4d
    const/16 p0, 0x29

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 301
    :pswitch_54
    const/16 p0, 0x21

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 300
    :pswitch_5b
    const/16 p0, 0x1e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 298
    :pswitch_62
    const/16 p0, 0x1d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 297
    :pswitch_69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :sswitch_data_6e
    .sparse-switch
        -0x58a7d764 -> :sswitch_40
        -0x34688ef0 -> :sswitch_36
        -0x346882d3 -> :sswitch_2c
        -0x34686c8b -> :sswitch_22
        -0x298f5a4 -> :sswitch_18
        0x30b78e68 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_69
        :pswitch_62
        :pswitch_5b
        :pswitch_5b
        :pswitch_54
        :pswitch_4d
    .end packed-switch
.end method

.method private static writeEncodedStringHeader(Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    invoke-static {p2}, Lcom/atd/groupme/sms/WapPduEncoder;->isAscii(Ljava/lang/String;)Z

    move-result p1

    .line 157
    if-eqz p1, :cond_f

    .line 158
    invoke-static {p0, p2}, Lcom/atd/groupme/sms/WapPduEncoder;->writeTextString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_27

    .line 161
    :cond_f
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    const/16 v0, 0xea

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    invoke-static {p1, p2}, Lcom/atd/groupme/sms/WapPduEncoder;->writeTextString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 165
    array-length p2, p1

    invoke-static {p0, p2}, Lcom/atd/groupme/sms/WapPduEncoder;->writeValueLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 166
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 168
    :goto_27
    return-void
.end method

.method private static writePart(Ljava/io/ByteArrayOutputStream;Lcom/atd/groupme/sms/WapPduEncoder$Part;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/atd/groupme/sms/WapPduEncoder;->wellKnownContentType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    if-eqz v1, :cond_20

    iget-object v3, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->charset:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_77

    .line 185
    :cond_20
    const/16 v3, 0x81

    if-eqz v1, :cond_50

    .line 187
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->charset:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 191
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 192
    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->charset:Ljava/lang/String;

    invoke-static {v1}, Lcom/atd/groupme/sms/WapPduEncoder;->charsetMibenum(Ljava/lang/String;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    :cond_44
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 195
    array-length v3, v1

    invoke-static {v2, v3}, Lcom/atd/groupme/sms/WapPduEncoder;->writeValueLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 196
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 197
    goto :goto_77

    .line 199
    :cond_50
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    iget-object v4, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentType:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/atd/groupme/sms/WapPduEncoder;->writeTextString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 201
    iget-object v4, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->charset:Ljava/lang/String;

    if-eqz v4, :cond_6c

    .line 202
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget-object v3, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->charset:Ljava/lang/String;

    invoke-static {v3}, Lcom/atd/groupme/sms/WapPduEncoder;->charsetMibenum(Ljava/lang/String;)I

    move-result v3

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    :cond_6c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 206
    array-length v3, v1

    invoke-static {v2, v3}, Lcom/atd/groupme/sms/WapPduEncoder;->writeValueLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 207
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    :goto_77
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 216
    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentLocation:Ljava/lang/String;

    if-eqz v1, :cond_94

    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    .line 217
    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 218
    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentLocation:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/atd/groupme/sms/WapPduEncoder;->writeTextString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 221
    :cond_94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 222
    iget-object v1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->data:[B

    if-nez v1, :cond_a0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_a2

    :cond_a0
    iget-object p1, p1, Lcom/atd/groupme/sms/WapPduEncoder$Part;->data:[B

    .line 224
    :goto_a2
    array-length v1, v0

    invoke-static {p0, v1}, Lcom/atd/groupme/sms/WapPduEncoder;->writeUintvar(Ljava/io/ByteArrayOutputStream;I)V

    .line 225
    array-length v1, p1

    invoke-static {p0, v1}, Lcom/atd/groupme/sms/WapPduEncoder;->writeUintvar(Ljava/io/ByteArrayOutputStream;I)V

    .line 226
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 227
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 228
    return-void
.end method

.method private static writeShortIntHeader(Ljava/io/ByteArrayOutputStream;II)V
    .registers 3

    .line 142
    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    return-void
.end method

.method static writeTextString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 258
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    return-void

    .line 261
    :cond_7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 264
    array-length v1, p1

    if-lez v1, :cond_1b

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1b

    .line 265
    const/16 v1, 0x7f

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 267
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 268
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 269
    return-void
.end method

.method private static writeTextStringHeader(Ljava/io/ByteArrayOutputStream;ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    invoke-static {p0, p2}, Lcom/atd/groupme/sms/WapPduEncoder;->writeTextString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static writeUintvar(Ljava/io/ByteArrayOutputStream;I)V
    .registers 7

    .line 233
    if-ltz p1, :cond_27

    .line 235
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 236
    const/4 v1, 0x0

    move v2, v1

    .line 238
    :goto_7
    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, p1, 0x7f

    aput v4, v0, v2

    .line 239
    ushr-int/lit8 p1, p1, 0x7

    .line 240
    if-nez p1, :cond_25

    .line 241
    add-int/lit8 v3, v3, -0x1

    :goto_13
    if-ltz v3, :cond_24

    .line 242
    aget p1, v0, v3

    if-nez v3, :cond_1b

    move v2, v1

    goto :goto_1d

    :cond_1b
    const/16 v2, 0x80

    :goto_1d
    or-int/2addr p1, v2

    .line 243
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 241
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 245
    :cond_24
    return-void

    .line 240
    :cond_25
    move v2, v3

    goto :goto_7

    .line 233
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uintvar negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static writeValueLength(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3

    .line 248
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_8

    .line 249
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_e

    .line 251
    :cond_8
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/WapPduEncoder;->writeUintvar(Ljava/io/ByteArrayOutputStream;I)V

    .line 254
    :goto_e
    return-void
.end method
