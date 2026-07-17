.class public final synthetic Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsActivity;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsActivity;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/atd/groupme/sms/SmsActivity;

    iput-object p2, p0, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/atd/groupme/sms/SmsActivity;

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsActivity$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/atd/groupme/sms/SmsActivity;->lambda$applyLetterSpacingDeep$1$com-atd-groupme-sms-SmsActivity(Landroid/view/View;)V

    return-void
.end method
