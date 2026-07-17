.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda30;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda30;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    invoke-virtual {v0}, Lcom/atd/groupme/sms/SmsPanel;->lambda$refreshThreadList$2$com-atd-groupme-sms-SmsPanel()V

    return-void
.end method
