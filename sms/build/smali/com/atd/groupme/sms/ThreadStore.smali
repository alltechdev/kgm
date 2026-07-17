.class public Lcom/atd/groupme/sms/ThreadStore;
.super Ljava/lang/Object;
.source "ThreadStore.java"


# static fields
.field private static final CONVERSATIONS_URI:Landroid/net/Uri;

.field private static final SMS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "RetroGM.ThreadStore"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/atd/groupme/sms/ThreadStore;->SMS_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/atd/groupme/sms/ThreadStore;->CONVERSATIONS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .registers 3

    .line 145
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-wide p0

    .line 146
    :catchall_5
    move-exception p0

    .line 147
    const-string p1, "RetroGM.ThreadStore"

    const-string v0, "getOrCreateThreadId failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static loadThreadList(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ThreadSummary;",
            ">;"
        }
    .end annotation

    .line 33
    const-string v0, "read"

    const-string v1, "date"

    const-string v2, "address"

    const-string v3, "snippet"

    const-string v4, "RetroGM.ThreadStore"

    const-string v5, "thread_id"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    nop

    .line 38
    const/4 v7, 0x0

    :try_start_13
    sget-object v9, Lcom/atd/groupme/sms/ThreadStore;->CONVERSATIONS_URI:Landroid/net/Uri;

    const-string v8, "msg_count"

    filled-new-array {v5, v3, v8}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date DESC"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_11d
    .catchall {:try_start_13 .. :try_end_24} :catchall_11b

    .line 43
    if-nez v8, :cond_2c

    .line 56
    if-eqz v8, :cond_2b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_2b
    return-object v6

    .line 44
    :cond_2c
    :try_start_2c
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 45
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 46
    :goto_34
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_54

    .line 47
    new-instance v10, Lcom/atd/groupme/sms/ThreadSummary;

    invoke-direct {v10}, Lcom/atd/groupme/sms/ThreadSummary;-><init>()V

    .line 48
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/atd/groupme/sms/ThreadSummary;->threadId:J

    .line 49
    if-ltz v3, :cond_4c

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4e

    :cond_4c
    const-string v11, ""

    :goto_4e
    iput-object v11, v10, Lcom/atd/groupme/sms/ThreadSummary;->snippet:Ljava/lang/String;

    .line 50
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_53} :catch_118
    .catchall {:try_start_2c .. :try_end_53} :catchall_115

    .line 51
    goto :goto_34

    .line 56
    :cond_54
    if-eqz v8, :cond_59

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_59
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_60

    return-object v6

    .line 63
    :cond_60
    nop

    .line 65
    :try_start_61
    sget-object v9, Lcom/atd/groupme/sms/ThreadStore;->SMS_URI:Landroid/net/Uri;

    filled-new-array {v5, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "date DESC"

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 75
    if-eqz v7, :cond_dd

    .line 76
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 77
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 82
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/atd/groupme/sms/ThreadSummary;

    iget-wide v10, v9, Lcom/atd/groupme/sms/ThreadSummary;->threadId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 85
    :cond_a1
    :goto_a1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 86
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/atd/groupme/sms/ThreadSummary;

    .line 88
    if-nez v8, :cond_b8

    goto :goto_a1

    .line 89
    :cond_b8
    iget-object v9, v8, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    if-nez v9, :cond_c2

    .line 90
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    .line 92
    :cond_c2
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 93
    iget-wide v11, v8, Lcom/atd/groupme/sms/ThreadSummary;->date:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_ce

    iput-wide v9, v8, Lcom/atd/groupme/sms/ThreadSummary;->date:J

    .line 94
    :cond_ce
    if-ltz v0, :cond_dc

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-nez v9, :cond_dc

    .line 95
    iget v9, v8, Lcom/atd/groupme/sms/ThreadSummary;->unreadCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/atd/groupme/sms/ThreadSummary;->unreadCount:I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_dc} :catch_e2
    .catchall {:try_start_61 .. :try_end_dc} :catchall_e0

    .line 97
    :cond_dc
    goto :goto_a1

    .line 102
    :cond_dd
    if-eqz v7, :cond_ed

    goto :goto_ea

    :catchall_e0
    move-exception p0

    goto :goto_10f

    .line 99
    :catch_e2
    move-exception v0

    .line 100
    :try_start_e3
    const-string v1, "sms scan for thread meta failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_e0

    .line 102
    if-eqz v7, :cond_ed

    :goto_ea
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_ed
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/atd/groupme/sms/ThreadSummary;

    .line 108
    iget-object v2, v1, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10d

    .line 109
    iget-object v2, v1, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/atd/groupme/sms/ContactsHelper;->lookupName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    .line 111
    :cond_10d
    goto :goto_f1

    .line 113
    :cond_10e
    return-object v6

    .line 102
    :goto_10f
    if-eqz v7, :cond_114

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_114
    throw p0

    .line 56
    :catchall_115
    move-exception p0

    move-object v7, v8

    goto :goto_12a

    .line 52
    :catch_118
    move-exception p0

    move-object v7, v8

    goto :goto_11e

    .line 56
    :catchall_11b
    move-exception p0

    goto :goto_12a

    .line 52
    :catch_11d
    move-exception p0

    .line 53
    :goto_11e
    :try_start_11e
    const-string v0, "conversations query failed"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_11e .. :try_end_123} :catchall_11b

    .line 54
    nop

    .line 56
    if-eqz v7, :cond_129

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_129
    return-object v6

    .line 56
    :goto_12a
    if-eqz v7, :cond_12f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_12f
    throw p0
.end method

.method public static lookupAddressForThread(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .registers 10

    .line 120
    nop

    .line 122
    const/4 v0, 0x0

    :try_start_2
    sget-object v2, Lcom/atd/groupme/sms/ThreadStore;->SMS_URI:Landroid/net/Uri;

    const-string v1, "address"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "thread_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 126
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const-string v6, "date DESC LIMIT 1"

    .line 122
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_36
    .catchall {:try_start_2 .. :try_end_1d} :catchall_34

    .line 128
    if-eqz p0, :cond_31

    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 129
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2f
    .catchall {:try_start_1f .. :try_end_29} :catchall_45

    .line 134
    if-eqz p0, :cond_2e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_2e
    return-object p1

    .line 131
    :catch_2f
    move-exception p1

    goto :goto_38

    .line 134
    :cond_31
    if-eqz p0, :cond_44

    goto :goto_41

    :catchall_34
    move-exception p1

    goto :goto_47

    .line 131
    :catch_36
    move-exception p1

    move-object p0, v0

    .line 132
    :goto_38
    :try_start_38
    const-string p2, "RetroGM.ThreadStore"

    const-string v1, "lookupAddressForThread failed"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_45

    .line 134
    if-eqz p0, :cond_44

    :goto_41
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_44
    return-object v0

    .line 134
    :catchall_45
    move-exception p1

    move-object v0, p0

    :goto_47
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_4c
    throw p1
.end method
