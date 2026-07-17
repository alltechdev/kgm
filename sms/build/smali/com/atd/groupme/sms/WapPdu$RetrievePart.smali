.class public Lcom/atd/groupme/sms/WapPdu$RetrievePart;
.super Ljava/lang/Object;
.source "WapPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/WapPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetrievePart"
.end annotation


# instance fields
.field public charset:Ljava/lang/String;

.field public contentId:Ljava/lang/String;

.field public contentLocation:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
