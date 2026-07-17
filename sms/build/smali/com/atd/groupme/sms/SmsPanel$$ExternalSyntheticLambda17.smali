.class public final synthetic Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/SmsPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/SmsPanel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda17;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda17;->f$0:Lcom/atd/groupme/sms/SmsPanel;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/atd/groupme/sms/SmsPanel;->lambda$buildThreadDetailPage$7$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
