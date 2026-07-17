.class public Lcom/atd/groupme/sms/DefaultSmsPrompt;
.super Ljava/lang/Object;
.source "DefaultSmsPrompt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RetroGM.DefaultSmsPrompt"

.field private static volatile sPrompted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/atd/groupme/sms/DefaultSmsPrompt;->sPrompted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefault(Landroid/content/Context;)Z
    .registers 3

    .line 26
    :try_start_0
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return p0

    .line 28
    :catchall_d
    move-exception p0

    .line 29
    const-string v0, "RetroGM.DefaultSmsPrompt"

    const-string v1, "isDefault check failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$promptIfNotDefault$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 49
    invoke-static {p0}, Lcom/atd/groupme/sms/DefaultSmsPrompt;->requestDefault(Landroid/app/Activity;)V

    return-void
.end method

.method public static promptIfNotDefault(Landroid/app/Activity;)V
    .registers 5

    .line 38
    if-nez p0, :cond_3

    return-void

    .line 39
    :cond_3
    sget-boolean v0, Lcom/atd/groupme/sms/DefaultSmsPrompt;->sPrompted:Z

    if-eqz v0, :cond_8

    return-void

    .line 40
    :cond_8
    invoke-static {p0}, Lcom/atd/groupme/sms/DefaultSmsPrompt;->isDefault(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 41
    sput-boolean v1, Lcom/atd/groupme/sms/DefaultSmsPrompt;->sPrompted:Z

    .line 42
    return-void

    .line 44
    :cond_12
    sput-boolean v1, Lcom/atd/groupme/sms/DefaultSmsPrompt;->sPrompted:Z

    .line 46
    :try_start_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Make RetroGM your messaging app?"

    .line 47
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "RetroGM needs to be set as your default messaging app to send and receive SMS and MMS. You can change this any time in Settings."

    .line 48
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Set as default"

    new-instance v3, Lcom/atd/groupme/sms/DefaultSmsPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/atd/groupme/sms/DefaultSmsPrompt$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Not now"

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    .line 55
    goto :goto_47

    .line 53
    :catchall_3f
    move-exception p0

    .line 54
    const-string v0, "RetroGM.DefaultSmsPrompt"

    const-string v1, "prompt show failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_47
    return-void
.end method

.method private static requestDefault(Landroid/app/Activity;)V
    .registers 4

    .line 62
    const-string v0, "android.app.role.SMS"

    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_29

    .line 63
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 64
    if-eqz v1, :cond_29

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 66
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 67
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    const v1, 0x6b676d80

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void

    .line 73
    :cond_29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v1, "package"

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catchall {:try_start_2 .. :try_end_3c} :catchall_3d

    .line 79
    goto :goto_45

    .line 77
    :catchall_3d
    move-exception p0

    .line 78
    const-string v0, "RetroGM.DefaultSmsPrompt"

    const-string v1, "requestDefault failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_45
    return-void
.end method
