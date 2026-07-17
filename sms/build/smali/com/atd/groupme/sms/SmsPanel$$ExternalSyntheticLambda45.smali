.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;

.field public final synthetic f$1:Lcom/atd/groupme/sms/MessageListAdapter$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iput-object p2, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;->f$1:Lcom/atd/groupme/sms/MessageListAdapter$Item;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;->f$1:Lcom/atd/groupme/sms/MessageListAdapter$Item;

    invoke-virtual {v0, v1}, Lcom/atd/groupme/sms/SmsPanel;->lambda$doDelete$38$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method
