.class public final synthetic Lcom/atd/groupme/sms/SmsInline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsInline$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsInline$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lcom/atd/groupme/sms/SmsInline;->lambda$openOnceForFragment$0(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
