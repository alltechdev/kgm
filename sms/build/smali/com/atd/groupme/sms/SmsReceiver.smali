.class public Lcom/atd/groupme/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "retrogm_sms_default"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "SMS"

.field private static final TAG:Ljava/lang/String; = "RetroGM.SmsReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private persistToInbox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .registers 8

    .line 65
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 66
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string p2, "body"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string p2, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string p2, "date_sent"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string p2, "read"

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string p2, "seen"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string p2, "type"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    return-object p1

    .line 74
    :catch_49
    move-exception p1

    .line 75
    const-string p2, "RetroGM.SmsReceiver"

    const-string p3, "persistToInbox failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 p1, 0x0

    return-object p1
.end method

.method private postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 100
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 101
    if-nez v0, :cond_b

    return-void

    .line 103
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1a

    const-string v4, "retrogm_sms_default"

    if-lt v1, v3, :cond_28

    .line 104
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 105
    if-nez v1, :cond_28

    .line 106
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    const-string v6, "SMS"

    invoke-direct {v1, v4, v6, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 108
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 113
    :cond_28
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/atd/groupme/sms/SmsActivity;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const/high16 v5, 0x34000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_44

    .line 117
    const-string v5, "thread_id"

    invoke-virtual {v1, v5, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    const-string p4, "address"

    invoke-virtual {v1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_44
    const/high16 p4, 0x8000000

    .line 122
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt p5, v5, :cond_4e

    .line 123
    const/high16 p4, 0xc000000

    .line 127
    :cond_4e
    const/4 p5, 0x0

    if-nez p2, :cond_53

    move v5, p5

    goto :goto_57

    :cond_53
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 128
    :goto_57
    invoke-static {p1, v5, v1, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/atd/groupme/sms/ContactsHelper;->lookupName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    if-nez p2, :cond_6e

    const-string v1, "Unknown"

    goto :goto_6f

    :cond_6e
    move-object v1, p2

    .line 134
    :cond_6f
    :goto_6f
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_79

    .line 135
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 137
    :cond_79
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    :goto_7e
    const p1, 0x108008f

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 142
    invoke-virtual {v1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 147
    if-nez p2, :cond_ac

    goto :goto_b0

    :cond_ac
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p5

    .line 149
    :goto_b0
    :try_start_b0
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b7} :catch_b8

    .line 152
    goto :goto_c0

    .line 150
    :catch_b8
    move-exception p1

    .line 151
    const-string p2, "RetroGM.SmsReceiver"

    const-string p3, "notify failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_c0
    return-void
.end method

.method private queryThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 12

    .line 81
    const-wide/16 v0, -0x1

    if-nez p2, :cond_5

    return-wide v0

    .line 82
    :cond_5
    const/4 v2, 0x0

    .line 84
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p1, "thread_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_2b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 89
    const/4 p1, 0x0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_30
    .catchall {:try_start_6 .. :try_end_25} :catchall_2e

    .line 94
    if-eqz v2, :cond_2a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_2a
    return-wide p1

    .line 94
    :cond_2b
    if-eqz v2, :cond_3d

    goto :goto_3a

    :catchall_2e
    move-exception p1

    goto :goto_3e

    .line 91
    :catch_30
    move-exception p1

    .line 92
    :try_start_31
    const-string p2, "RetroGM.SmsReceiver"

    const-string v3, "queryThreadId failed"

    invoke-static {p2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    .line 94
    if-eqz v2, :cond_3d

    :goto_3a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_3d
    return-wide v0

    .line 94
    :goto_3e
    if-eqz v2, :cond_43

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_43
    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 37
    return-void

    .line 40
    :cond_d
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p2

    .line 41
    const-string v0, "RetroGM.SmsReceiver"

    if-eqz p2, :cond_93

    array-length v1, p2

    if-nez v1, :cond_1a

    goto/16 :goto_93

    .line 46
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_32

    aget-object v5, p2, v4

    .line 48
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    .line 49
    if-eqz v5, :cond_2f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 51
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    aget-object v2, p2, v3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 53
    if-nez v2, :cond_44

    aget-object v2, p2, v3

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_44
    aget-object p2, p2, v3

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    .line 55
    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-gtz p2, :cond_54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_54
    move-wide v9, v3

    .line 57
    move-object v5, p0

    move-object v6, p1

    move-object v7, v2

    move-object v8, v1

    invoke-direct/range {v5 .. v10}, Lcom/atd/groupme/sms/SmsReceiver;->persistToInbox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p2

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsReceiver;->queryThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v9

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS from "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " ("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " chars), thread="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct/range {v5 .. v10}, Lcom/atd/groupme/sms/SmsReceiver;->postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 61
    return-void

    .line 42
    :cond_93
    :goto_93
    const-string p1, "no SmsMessages in SMS_DELIVER intent"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
