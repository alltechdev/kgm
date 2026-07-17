.class public final synthetic Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/MessageListAdapter;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/MessageListAdapter;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/atd/groupme/sms/MessageListAdapter;

    iput-object p2, p0, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/atd/groupme/sms/MessageListAdapter;

    iget-object v1, p0, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/atd/groupme/sms/MessageListAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/atd/groupme/sms/MessageListAdapter;->lambda$getView$0$com-atd-groupme-sms-MessageListAdapter(Landroid/net/Uri;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
