.class public Lcom/atd/groupme/sms/ThreadSearchWatcher;
.super Lcom/atd/groupme/sms/SimpleTextWatcher;
.source "ThreadSearchWatcher.java"


# instance fields
.field private final adapter:Lcom/atd/groupme/sms/ThreadListAdapter;


# direct methods
.method public constructor <init>(Lcom/atd/groupme/sms/ThreadListAdapter;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/atd/groupme/sms/SimpleTextWatcher;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/atd/groupme/sms/ThreadSearchWatcher;->adapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    .line 13
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/atd/groupme/sms/ThreadSearchWatcher;->adapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    if-nez p1, :cond_7

    const-string p1, ""

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {v0, p1}, Lcom/atd/groupme/sms/ThreadListAdapter;->applyFilter(Ljava/lang/String;)V

    .line 18
    return-void
.end method
