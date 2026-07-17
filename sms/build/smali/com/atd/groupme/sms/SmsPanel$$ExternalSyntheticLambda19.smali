.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iput-wide p2, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;->f$1:J

    iput-object p4, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iget-wide v1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;->f$1:J

    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/atd/groupme/sms/SmsPanel;->lambda$openContactPicker$41$com-atd-groupme-sms-SmsPanel(JLjava/util/List;)V

    return-void
.end method
