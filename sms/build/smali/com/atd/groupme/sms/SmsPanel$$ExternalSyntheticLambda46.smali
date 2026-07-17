.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;

.field public final synthetic f$1:Lcom/atd/groupme/sms/MessageListAdapter$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iput-object p2, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;->f$1:Lcom/atd/groupme/sms/MessageListAdapter$Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;->f$1:Lcom/atd/groupme/sms/MessageListAdapter$Item;

    invoke-virtual {v0, v1, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->lambda$actionDelete$37$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;Landroid/content/DialogInterface;I)V

    return-void
.end method
