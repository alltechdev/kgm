.class public Lcom/atd/groupme/sms/WapPdu$MNotificationInd;
.super Ljava/lang/Object;
.source "WapPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/WapPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MNotificationInd"
.end annotation


# instance fields
.field public contentLocation:Ljava/lang/String;

.field public expirySeconds:J

.field public from:Ljava/lang/String;

.field public messageClass:I

.field public messageSize:J

.field public messageType:I

.field public mmsVersion:I

.field public subject:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
