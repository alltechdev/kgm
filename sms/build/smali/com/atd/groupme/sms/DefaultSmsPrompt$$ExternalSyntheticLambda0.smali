.class public final synthetic Lcom/atd/groupme/sms/DefaultSmsPrompt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/DefaultSmsPrompt$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/atd/groupme/sms/DefaultSmsPrompt$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/atd/groupme/sms/DefaultSmsPrompt;->lambda$promptIfNotDefault$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
