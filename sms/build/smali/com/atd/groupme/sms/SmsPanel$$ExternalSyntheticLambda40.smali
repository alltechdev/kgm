.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iput-wide p2, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iget-wide v1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/atd/groupme/sms/SmsPanel;->lambda$doDeleteThread$26$com-atd-groupme-sms-SmsPanel(J)V

    return-void
.end method
