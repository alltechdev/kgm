.class public Lcom/atd/groupme/sms/WapPduEncoder$SendReq;
.super Ljava/lang/Object;
.source "WapPduEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/WapPduEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendReq"
.end annotation


# instance fields
.field public final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/atd/groupme/sms/WapPduEncoder$Part;",
            ">;"
        }
    .end annotation
.end field

.field public final recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subject:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->recipients:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method estimateSize()I
    .registers 6

    .line 131
    nop

    .line 132
    iget-object v0, p0, Lcom/atd/groupme/sms/WapPduEncoder$SendReq;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x40

    move v2, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/atd/groupme/sms/WapPduEncoder$Part;

    .line 133
    iget-object v4, v3, Lcom/atd/groupme/sms/WapPduEncoder$Part;->data:[B

    if-nez v4, :cond_1c

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1c
    iget-object v3, v3, Lcom/atd/groupme/sms/WapPduEncoder$Part;->data:[B

    array-length v3, v3

    :goto_1f
    add-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 134
    goto :goto_a

    .line 135
    :cond_22
    return v2
.end method
