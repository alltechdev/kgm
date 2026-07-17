.class public Lcom/atd/groupme/sms/MessageListAdapter$Item;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public date:J

.field public id:J

.field public imageMime:Ljava/lang/String;

.field public imageUri:Landroid/net/Uri;

.field public isMms:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
