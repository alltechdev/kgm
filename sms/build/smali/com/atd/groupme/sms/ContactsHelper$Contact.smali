.class public Lcom/atd/groupme/sms/ContactsHelper$Contact;
.super Ljava/lang/Object;
.source "ContactsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/ContactsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, ""

    if-nez p1, :cond_8

    move-object p1, v0

    :cond_8
    iput-object p1, p0, Lcom/atd/groupme/sms/ContactsHelper$Contact;->name:Ljava/lang/String;

    .line 67
    if-nez p2, :cond_d

    move-object p2, v0

    :cond_d
    iput-object p2, p0, Lcom/atd/groupme/sms/ContactsHelper$Contact;->number:Ljava/lang/String;

    .line 68
    return-void
.end method
