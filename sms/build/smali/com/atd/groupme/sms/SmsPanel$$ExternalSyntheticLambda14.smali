.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iput-wide p2, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$1:J

    iput-object p4, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    iput-object p6, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iget-wide v1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$1:J

    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;->f$4:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/atd/groupme/sms/SmsPanel;->lambda$refreshThreadDetail$9$com-atd-groupme-sms-SmsPanel(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
