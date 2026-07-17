.class public Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;
.super Ljava/lang/Object;
.source "WapPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/WapPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MRetrieveConf"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public date:J

.field public from:Ljava/lang/String;

.field public messageClass:I

.field public messageId:Ljava/lang/String;

.field public messageType:I

.field public mmsVersion:I

.field public final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/WapPdu$RetrievePart;",
            ">;"
        }
    .end annotation
.end field

.field public subject:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/atd/groupme/sms/WapPdu$MRetrieveConf;->parts:Ljava/util/List;

    return-void
.end method
