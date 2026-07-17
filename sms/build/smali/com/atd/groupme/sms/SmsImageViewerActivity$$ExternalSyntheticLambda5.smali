.class public final synthetic Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsImageViewerActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsImageViewerActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;->f$0:Lcom/atd/groupme/sms/SmsImageViewerActivity;

    iput-object p2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;->f$0:Lcom/atd/groupme/sms/SmsImageViewerActivity;

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity;->lambda$saveImage$4$com-atd-groupme-sms-SmsImageViewerActivity(Ljava/lang/String;)V

    return-void
.end method
