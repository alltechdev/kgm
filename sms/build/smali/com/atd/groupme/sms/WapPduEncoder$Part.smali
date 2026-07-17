.class public Lcom/atd/groupme/sms/WapPduEncoder$Part;
.super Ljava/lang/Object;
.source "WapPduEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/WapPduEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field public final charset:Ljava/lang/String;

.field public final contentLocation:Ljava/lang/String;

.field public final contentType:Ljava/lang/String;

.field public final data:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/atd/groupme/sms/WapPduEncoder$Part;->data:[B

    .line 118
    iput-object p2, p0, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentType:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/atd/groupme/sms/WapPduEncoder$Part;->contentLocation:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/atd/groupme/sms/WapPduEncoder$Part;->charset:Ljava/lang/String;

    .line 121
    return-void
.end method
