.class public Lcom/atd/groupme/sms/SearchFilterWatcher;
.super Lcom/atd/groupme/sms/SimpleTextWatcher;
.source "SearchFilterWatcher.java"


# instance fields
.field private final adapter:Lcom/atd/groupme/sms/ContactPickerAdapter;


# direct methods
.method public constructor <init>(Lcom/atd/groupme/sms/ContactPickerAdapter;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/atd/groupme/sms/SimpleTextWatcher;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/atd/groupme/sms/SearchFilterWatcher;->adapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    .line 15
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/atd/groupme/sms/SearchFilterWatcher;->adapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    if-nez p1, :cond_7

    const-string p1, ""

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {v0, p1}, Lcom/atd/groupme/sms/ContactPickerAdapter;->applyFilter(Ljava/lang/String;)V

    .line 20
    return-void
.end method
