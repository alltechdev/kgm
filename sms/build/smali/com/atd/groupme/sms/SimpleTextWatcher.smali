.class public abstract Lcom/atd/groupme/sms/SimpleTextWatcher;
.super Ljava/lang/Object;
.source "SimpleTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract afterTextChanged(Landroid/text/Editable;)V
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 18
    return-void
.end method
