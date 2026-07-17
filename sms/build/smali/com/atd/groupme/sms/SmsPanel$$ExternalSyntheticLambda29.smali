.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda29;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda29;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->lambda$showMessageActions$34(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
