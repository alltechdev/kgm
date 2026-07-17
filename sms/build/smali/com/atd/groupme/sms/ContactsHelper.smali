.class public Lcom/atd/groupme/sms/ContactsHelper;
.super Ljava/lang/Object;
.source "ContactsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/ContactsHelper$Contact;
    }
.end annotation


# static fields
.field private static final CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENTINEL_NONE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "RetroGM.ContactsHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/atd/groupme/sms/ContactsHelper;->CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doLookup(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 40
    const-string v0, "RetroGM.ContactsHelper"

    .line 42
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 43
    const-string v2, "display_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1b} :catch_52
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_37
    .catchall {:try_start_3 .. :try_end_1b} :catchall_35

    .line 46
    if-eqz p0, :cond_32

    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 47
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_28} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_2e
    .catchall {:try_start_1d .. :try_end_28} :catchall_5f

    .line 56
    if-eqz p0, :cond_2d

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_2d
    return-object p1

    .line 53
    :catch_2e
    move-exception v2

    goto :goto_39

    .line 49
    :catch_30
    move-exception p1

    goto :goto_54

    .line 56
    :cond_32
    if-eqz p0, :cond_5e

    goto :goto_5b

    :catchall_35
    move-exception p1

    goto :goto_61

    .line 53
    :catch_37
    move-exception v2

    move-object p0, v1

    .line 54
    :goto_39
    :try_start_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneLookup failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    if-eqz p0, :cond_5e

    goto :goto_5b

    .line 49
    :catch_52
    move-exception p0

    move-object p0, v1

    .line 52
    :goto_54
    const-string p1, "no READ_CONTACTS permission, falling back to raw number"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_5f

    .line 56
    if-eqz p0, :cond_5e

    :goto_5b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_5e
    return-object v1

    .line 56
    :catchall_5f
    move-exception p1

    move-object v1, p0

    :goto_61
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_66
    throw p1
.end method

.method public static loadAllContacts(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/ContactsHelper$Contact;",
            ">;"
        }
    .end annotation

    .line 77
    const-string v0, "data1"

    const-string v1, "display_name"

    const-string v2, "RetroGM.ContactsHelper"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    nop

    .line 80
    const/4 v4, 0x0

    :try_start_d
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "display_name COLLATE NOCASE ASC"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1c} :catch_95
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_8c
    .catchall {:try_start_d .. :try_end_1c} :catchall_8a

    .line 88
    if-nez p0, :cond_24

    .line 105
    if-eqz p0, :cond_23

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_23
    return-object v3

    .line 89
    :cond_24
    :try_start_24
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 92
    :goto_31
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 93
    if-ltz v1, :cond_3e

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3f

    :cond_3e
    move-object v6, v4

    .line 94
    :goto_3f
    if-ltz v0, :cond_46

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_47

    :cond_46
    move-object v7, v4

    .line 95
    :goto_47
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4e

    goto :goto_31

    .line 96
    :cond_4e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_58

    const-string v9, ""

    goto :goto_59

    :cond_58
    move-object v9, v6

    :goto_59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u0001"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_72

    goto :goto_31

    .line 98
    :cond_72
    new-instance v8, Lcom/atd/groupme/sms/ContactsHelper$Contact;

    invoke-direct {v8, v6, v7}, Lcom/atd/groupme/sms/ContactsHelper$Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_7a} :catch_87
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_7a} :catch_84
    .catchall {:try_start_24 .. :try_end_7a} :catchall_81

    .line 99
    goto :goto_31

    .line 105
    :cond_7b
    if-eqz p0, :cond_a0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_a0

    :catchall_81
    move-exception v0

    move-object v4, p0

    goto :goto_a1

    .line 102
    :catch_84
    move-exception v0

    move-object v4, p0

    goto :goto_8d

    .line 100
    :catch_87
    move-exception v0

    move-object v4, p0

    goto :goto_96

    .line 105
    :catchall_8a
    move-exception v0

    goto :goto_a1

    .line 102
    :catch_8c
    move-exception v0

    .line 103
    :goto_8d
    :try_start_8d
    const-string p0, "loadAllContacts failed"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    if-eqz v4, :cond_a0

    goto :goto_9d

    .line 100
    :catch_95
    move-exception p0

    .line 101
    :goto_96
    const-string p0, "READ_CONTACTS not granted at runtime"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_8a

    .line 105
    if-eqz v4, :cond_a0

    :goto_9d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_a0
    :goto_a0
    return-object v3

    .line 105
    :goto_a1
    if-eqz v4, :cond_a6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_a6
    throw v0
.end method

.method public static lookupName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 30
    :cond_8
    sget-object v0, Lcom/atd/groupme/sms/ContactsHelper;->CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    const-string v3, ""

    if-eqz v2, :cond_1d

    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v1, v2

    :goto_1c
    return-object v1

    .line 34
    :cond_1d
    invoke-static {p0, p1}, Lcom/atd/groupme/sms/ContactsHelper;->doLookup(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move-object v3, p0

    :goto_25
    invoke-virtual {v0, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object p0
.end method
