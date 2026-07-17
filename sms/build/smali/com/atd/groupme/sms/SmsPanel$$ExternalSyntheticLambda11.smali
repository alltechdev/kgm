.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iput-wide p2, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;->f$1:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iget-wide v1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;->f$1:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->lambda$confirmDeleteThread$25$com-atd-groupme-sms-SmsPanel(JLandroid/content/DialogInterface;I)V

    return-void
.end method
