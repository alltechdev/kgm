.class public Lcom/atd/groupme/sms/SmsPanel;
.super Landroid/widget/FrameLayout;
.source "SmsPanel.java"


# static fields
.field private static final IO:Ljava/util/concurrent/Executor;

.field public static final PAGE_COMPOSE:I = 0x2

.field public static final PAGE_DETAIL:I = 0x1

.field public static final PAGE_LIST:I = 0x0

.field public static final PAGE_MEDIA_PICKER:I = 0x4

.field public static final PAGE_PICKER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RetroGM.SmsPanel"


# instance fields
.field private attachedImage:Landroid/net/Uri;

.field private attachmentBadge:Landroid/widget/TextView;

.field public colorBg:I

.field public colorBubbleReceived:I

.field public colorBubbleSent:I

.field public colorTextPrimary:I

.field public colorTextSecondary:I

.field public colorToolbar:I

.field private composeBody:Landroid/widget/EditText;

.field private composeRecipient:Landroid/widget/EditText;

.field private contactPickerAdapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

.field private contactPickerList:Landroid/widget/ListView;

.field private contactPickerSearch:Landroid/widget/EditText;

.field private currentAddress:Ljava/lang/String;

.field private currentThreadId:J

.field private detailComposer:Landroid/widget/EditText;

.field private detailTitle:Landroid/widget/TextView;

.field private flipper:Landroid/widget/ViewFlipper;

.field private hostAppBar:Landroid/view/View;

.field private hostAppBarOriginalVisibility:I

.field private hostToolbar:Landroid/view/View;

.field private hostToolbarOriginalTitle:Ljava/lang/CharSequence;

.field private lastContactsLoadStarted:J

.field private lastImagesLoadStarted:J

.field private lastMessageLoadStarted:J

.field private lastThreadLoadStarted:J

.field private final main:Landroid/os/Handler;

.field private mediaPickerAdapter:Lcom/atd/groupme/sms/MediaPickerAdapter;

.field private mediaPickerGrid:Landroid/widget/GridView;

.field private messageAdapter:Lcom/atd/groupme/sms/MessageListAdapter;

.field private messageListView:Landroid/widget/ListView;

.field public nightMode:Z

.field private threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

.field private threadListLoading:Landroid/widget/ProgressBar;

.field private threadListView:Landroid/widget/ListView;

.field private threadSearchField:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$9_n_Tzbt5kxzZ7IhI5CCGuUkluU(Lcom/atd/groupme/sms/SmsPanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->refreshThreadList()V

    return-void
.end method

.method public static synthetic $r8$lambda$CsGikiL5cUuehWHLQiH0xehuHyk(Lcom/atd/groupme/sms/SmsPanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->refreshThreadDetail()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastThreadLoadStarted:J

    .line 76
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/atd/groupme/sms/SmsPanel;->currentThreadId:J

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    .line 82
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastMessageLoadStarted:J

    .line 91
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastContactsLoadStarted:J

    .line 96
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastImagesLoadStarted:J

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBarOriginalVisibility:I

    .line 112
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastThreadLoadStarted:J

    .line 76
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/atd/groupme/sms/SmsPanel;->currentThreadId:J

    .line 77
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    .line 82
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastMessageLoadStarted:J

    .line 91
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastContactsLoadStarted:J

    .line 96
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastImagesLoadStarted:J

    .line 105
    const/4 p2, 0x0

    iput p2, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBarOriginalVisibility:I

    .line 117
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private actionCopy(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 876
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 877
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 878
    if-nez v0, :cond_f

    return-void

    .line 879
    :cond_f
    iget-object p1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    const-string v1, "SMS message"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 880
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Copied"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 881
    return-void
.end method

.method private actionDelete(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 995
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    const-string v1, "Delete message?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 997
    const-string v1, "This deletes the message from the SMS database. The other party still has their copy."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda46;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    .line 998
    const-string p1, "Delete"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 999
    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1000
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1001
    return-void
.end method

.method private actionForward(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 901
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/atd/groupme/sms/SmsPanel;->openCompose(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_16

    .line 903
    iget-object p1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    .line 904
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    :cond_16
    return-void
.end method

.method private actionReply(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 889
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    if-eqz p1, :cond_1c

    .line 890
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 891
    nop

    .line 892
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 893
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 894
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 896
    :cond_1c
    return-void
.end method

.method private actionSaveImage(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 946
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    return-void

    .line 947
    :cond_5
    sget-object v0, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda43;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 951
    return-void
.end method

.method private actionShare(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 910
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v1, "android.intent.extra.TEXT"

    iget-object p1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string p1, "Share message"

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 914
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 915
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    .line 919
    goto :goto_3c

    .line 916
    :catchall_26
    move-exception p1

    .line 917
    const-string v0, "RetroGM.SmsPanel"

    const-string v1, "share failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Share failed"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 920
    :goto_3c
    return-void
.end method

.method private actionShareImage(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 5

    .line 923
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    return-void

    .line 925
    :cond_5
    :try_start_5
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageMime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "image/*"

    goto :goto_12

    :cond_10
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageMime:Ljava/lang/String;

    .line 926
    :goto_12
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string v0, "android.intent.extra.STREAM"

    iget-object v2, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 929
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 930
    const-string v0, "android.intent.extra.TEXT"

    iget-object v2, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    :cond_32
    nop

    .line 933
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Image"

    iget-object p1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    .line 932
    invoke-static {v0, v2, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 934
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 935
    const-string p1, "Share image"

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 936
    const v0, 0x10000001

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5e

    .line 942
    goto :goto_74

    .line 939
    :catchall_5e
    move-exception p1

    .line 940
    const-string v0, "RetroGM.SmsPanel"

    const-string v1, "shareImage failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Share failed"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 943
    :goto_74
    return-void
.end method

.method private buildComposePage()Landroid/view/View;
    .registers 11

    .line 578
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 579
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 580
    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 582
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 583
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 584
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 585
    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 586
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 588
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 589
    const v6, 0x7f082a98

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 590
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 591
    new-instance v7, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda34;

    invoke-direct {v7, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda34;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 595
    const-string v7, "New Message"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    const/4 v7, 0x2

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 597
    iget v7, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 598
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 599
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 601
    invoke-virtual {v2, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 606
    const v7, 0x7f081e7b

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 607
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 608
    const-string v7, "Choose from contacts"

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 610
    new-instance v7, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda35;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 616
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 617
    const v7, 0x7f081be2

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 618
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 619
    const-string v7, "Attach image"

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 620
    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 621
    new-instance v7, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda36;

    invoke-direct {v7, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda36;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 625
    const v7, 0x7f086613

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 626
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    new-instance v6, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda37;

    invoke-direct {v6, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda37;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 632
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    .line 633
    const-string v5, "To (phone number)"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    iget v5, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 635
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    iget v5, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 636
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 637
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 638
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 640
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    .line 641
    const-string v5, "Message"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    iget v5, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 643
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    iget v5, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 644
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    const v5, 0x24001

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 647
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    const v5, 0x800033

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 648
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 649
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 650
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 652
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    .line 658
    const-string v3, "Image attached \u2014 tap to remove"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    iget v3, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 661
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    const/high16 v3, 0x33000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 662
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 663
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda38;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 671
    return-object v0
.end method

.method private buildContactPickerPage()Landroid/view/View;
    .registers 9

    .line 1021
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1022
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1023
    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1025
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1026
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1027
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1028
    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1029
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1031
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1032
    const v5, 0x7f082a98

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1033
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    new-instance v6, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda8;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    .line 1038
    const-string v6, "Search contacts"

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    iget v6, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1040
    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    iget v6, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1041
    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1042
    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1043
    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    new-instance v6, Lcom/atd/groupme/sms/SearchFilterWatcher;

    iget-object v7, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerAdapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    invoke-direct {v6, v7}, Lcom/atd/groupme/sms/SearchFilterWatcher;-><init>(Lcom/atd/groupme/sms/ContactPickerAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1044
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1046
    iget-object v6, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    .line 1051
    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerAdapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1052
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1053
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1055
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1056
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 1057
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 1058
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1059
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda9;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1066
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1068
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerList:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    return-object v0
.end method

.method private buildMediaPickerPage()Landroid/view/View;
    .registers 10

    .line 1098
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1099
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1100
    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1102
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1104
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1105
    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1106
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1108
    new-instance v4, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1109
    const v5, 0x7f082a98

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1110
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    new-instance v5, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda20;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1114
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1115
    const-string v5, "Choose image"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    const/4 v5, 0x2

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1117
    iget v6, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1118
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1119
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1121
    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    new-instance v2, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    .line 1126
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1127
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 1128
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerAdapter:Lcom/atd/groupme/sms/MediaPickerAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1129
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 1130
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1131
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1132
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda21;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1143
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    return-object v0
.end method

.method private buildThreadDetailPage()Landroid/view/View;
    .registers 12

    .line 431
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 432
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 433
    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 436
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 437
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 438
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 439
    iget v5, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 440
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v5

    invoke-virtual {v2, v6, v7, v8, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 442
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 443
    const v6, 0x7f082a98

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 444
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 445
    new-instance v7, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda15;

    invoke-direct {v7, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda15;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 448
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    .line 449
    const/4 v7, 0x2

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 450
    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    iget v8, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 453
    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 454
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 456
    iget-object v10, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    .line 461
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 462
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 463
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 464
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->messageAdapter:Lcom/atd/groupme/sms/MessageListAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 465
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 467
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 468
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    const v5, 0x106000d

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelector(I)V

    .line 469
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 470
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 474
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda16;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda17;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 483
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 485
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->messageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 489
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 490
    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 494
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v2

    const/16 v7, 0x12

    invoke-direct {p0, v7}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 496
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    .line 497
    const-string v4, "Message"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 499
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 500
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 501
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 502
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    const v4, 0x24001

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 505
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 507
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 510
    const v3, 0x7f086613

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 511
    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda18;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    return-object v0
.end method

.method private buildThreadListPage()Landroid/view/View;
    .registers 9

    .line 305
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 307
    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 309
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    .line 310
    const-string v3, "Search threads"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    iget v3, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 312
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    iget v3, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 313
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 314
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 315
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    iget v3, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 316
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/atd/groupme/sms/SmsPanel;->dp(I)I

    move-result v7

    invoke-virtual {v2, v4, v6, v3, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 317
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    new-instance v3, Lcom/atd/groupme/sms/ThreadSearchWatcher;

    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    invoke-direct {v3, v4}, Lcom/atd/groupme/sms/ThreadSearchWatcher;-><init>(Lcom/atd/groupme/sms/ThreadListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 320
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 321
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 324
    iget v3, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 326
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    .line 327
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setId(I)V

    .line 328
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 330
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 332
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 333
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    const v6, 0x106000d

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 334
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 335
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 336
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda32;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda33;

    invoke-direct {v3, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda33;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 346
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListLoading:Landroid/widget/ProgressBar;

    .line 351
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 354
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 355
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 356
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 365
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-object v0
.end method

.method private confirmDeleteThread(J)V
    .registers 5

    .line 803
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    const-string v1, "Delete thread?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 805
    const-string v1, "This permanently deletes every SMS and MMS message in this thread."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda11;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    .line 806
    const-string p1, "Delete"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 807
    const-string p2, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 808
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 809
    return-void
.end method

.method private copyNumber(Ljava/lang/String;)V
    .registers 5

    .line 794
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 795
    :cond_7
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 796
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 797
    if-nez v0, :cond_16

    return-void

    .line 798
    :cond_16
    const-string v1, "Phone number"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 799
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 800
    return-void
.end method

.method private doDelete(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 1004
    sget-object v0, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda45;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1016
    return-void
.end method

.method private doDeleteThread(J)V
    .registers 5

    .line 812
    sget-object v0, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda40;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method private doSaveImage(Lcom/atd/groupme/sms/MessageListAdapter$Item;)Ljava/lang/String;
    .registers 11

    .line 955
    :try_start_0
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageMime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "image/jpeg"

    goto :goto_d

    :cond_b
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageMime:Ljava/lang/String;

    .line 956
    :goto_d
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, ".png"

    goto :goto_30

    .line 957
    :cond_18
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, ".gif"

    goto :goto_30

    .line 958
    :cond_23
    const-string v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, ".webp"

    goto :goto_30

    :cond_2e
    const-string v1, ".jpg"

    .line 959
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetroGM_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 962
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v1, "mime_type"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_f9

    const-string v1, "is_pending"

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_84

    .line 965
    :try_start_62
    const-string v0, "relative_path"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/RetroGM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    :cond_84
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 970
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 972
    if-nez v4, :cond_97

    const-string p1, "Save failed (no MediaStore slot)"

    return-object p1

    .line 974
    :cond_97
    iget-object p1, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_9d
    .catchall {:try_start_62 .. :try_end_9d} :catchall_f9

    .line 975
    :try_start_9d
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_ed

    .line 976
    if-eqz p1, :cond_d4

    if-nez v5, :cond_a6

    goto :goto_d4

    .line 977
    :cond_a6
    const/16 v6, 0x2000

    :try_start_a8
    new-array v6, v6, [B

    .line 979
    :goto_aa
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_b5

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_e1

    goto :goto_aa

    .line 980
    :cond_b5
    if-eqz v5, :cond_ba

    :try_start_b7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_ed

    :cond_ba
    if-eqz p1, :cond_bf

    :try_start_bc
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 981
    :cond_bf
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_d1

    .line 982
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 983
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    const/4 p1, 0x0

    invoke-virtual {v0, v4, v2, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 986
    :cond_d1
    const-string p1, "Saved to Pictures/RetroGM"
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_f9

    return-object p1

    .line 976
    :cond_d4
    :goto_d4
    :try_start_d4
    const-string v0, "Save failed (no stream)"
    :try_end_d6
    .catchall {:try_start_d4 .. :try_end_d6} :catchall_e1

    .line 980
    if-eqz v5, :cond_db

    :try_start_d8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_ed

    :cond_db
    if-eqz p1, :cond_e0

    :try_start_dd
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_f9

    .line 976
    :cond_e0
    return-object v0

    .line 974
    :catchall_e1
    move-exception v0

    if-eqz v5, :cond_ec

    :try_start_e4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_ec

    :catchall_e8
    move-exception v1

    :try_start_e9
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ec
    :goto_ec
    throw v0
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v0

    if-eqz p1, :cond_f8

    :try_start_f0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    goto :goto_f8

    :catchall_f4
    move-exception p1

    :try_start_f5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f8
    :goto_f8
    throw v0
    :try_end_f9
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_f9

    .line 987
    :catchall_f9
    move-exception p1

    .line 988
    const-string v0, "RetroGM.SmsPanel"

    const-string v1, "saveImage failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    const-string p1, "Save failed"

    return-object p1
.end method

.method private dp(I)I
    .registers 3

    .line 1172
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 7

    .line 121
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->resolvePalette(Landroid/content/Context;)V

    .line 122
    iget v0, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    invoke-virtual {p0, v0}, Lcom/atd/groupme/sms/SmsPanel;->setBackgroundColor(I)V

    .line 124
    new-instance v0, Lcom/atd/groupme/sms/ThreadListAdapter;

    invoke-direct {v0, p1}, Lcom/atd/groupme/sms/ThreadListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    .line 125
    iget v1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    iget-boolean v3, p0, Lcom/atd/groupme/sms/SmsPanel;->nightMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/atd/groupme/sms/ThreadListAdapter;->setPalette(IIZ)V

    .line 126
    new-instance v0, Lcom/atd/groupme/sms/MessageListAdapter;

    invoke-direct {v0, p1}, Lcom/atd/groupme/sms/MessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->messageAdapter:Lcom/atd/groupme/sms/MessageListAdapter;

    .line 127
    iget v1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    iget v3, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBubbleSent:I

    iget v4, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBubbleReceived:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/atd/groupme/sms/MessageListAdapter;->setPalette(IIII)V

    .line 130
    new-instance v0, Lcom/atd/groupme/sms/ContactPickerAdapter;

    invoke-direct {v0, p1}, Lcom/atd/groupme/sms/ContactPickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerAdapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    .line 131
    iget v1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    iget v2, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    invoke-virtual {v0, v1, v2}, Lcom/atd/groupme/sms/ContactPickerAdapter;->setPalette(II)V

    .line 132
    new-instance v0, Lcom/atd/groupme/sms/MediaPickerAdapter;

    invoke-direct {v0, p1}, Lcom/atd/groupme/sms/MediaPickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerAdapter:Lcom/atd/groupme/sms/MediaPickerAdapter;

    .line 134
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-direct {v0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    .line 135
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->buildThreadListPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 139
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->buildThreadDetailPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->buildComposePage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 141
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->buildContactPickerPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->buildMediaPickerPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 143
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->addView(Landroid/view/View;)V

    .line 146
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 147
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->refreshThreadList()V

    .line 148
    return-void
.end method

.method static synthetic lambda$showMessageActions$34(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 859
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$showThreadActions$23(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 759
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private markThreadRead(J)V
    .registers 5

    .line 559
    sget-object v0, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda10;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method

.method private markThreadUnread(J)V
    .registers 5

    .line 774
    sget-object v0, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda42;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 791
    return-void
.end method

.method private openContactPicker()V
    .registers 5

    .line 1074
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1075
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 1076
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerSearch:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    :cond_12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1078
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastContactsLoadStarted:J

    .line 1079
    sget-object v2, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda47;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda47;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1093
    return-void
.end method

.method private openMediaPicker()V
    .registers 5

    .line 1149
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1150
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 1151
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1152
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastImagesLoadStarted:J

    .line 1153
    sget-object v2, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda13;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1167
    return-void
.end method

.method private readToolbarTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 7

    .line 244
    const-string v0, "RetroGM.SmsPanel"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTitle"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 245
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host toolbar ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ") title="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 247
    if-nez v1, :cond_37

    const-string v2, "null"

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-nez v1, :cond_4b

    const-string p1, ""

    goto :goto_4f

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_2 .. :try_end_4f} :catchall_50

    :goto_4f
    return-object p1

    .line 249
    :catchall_50
    move-exception p1

    .line 250
    const-string v1, "readToolbarTitle reflection failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    const/4 p1, 0x0

    return-object p1
.end method

.method private refreshThreadDetail()V
    .registers 5

    .line 520
    iget-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->currentThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    return-void

    .line 521
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 522
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastMessageLoadStarted:J

    .line 523
    sget-object v2, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda6;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 544
    return-void
.end method

.method private refreshThreadList()V
    .registers 5

    .line 408
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 409
    iput-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastThreadLoadStarted:J

    .line 410
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListLoading:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    sget-object v2, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda48;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda48;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method private resolveDrawableByName(Ljava/lang/String;)I
    .registers 5

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    .line 677
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 676
    return p1

    .line 678
    :catchall_17
    move-exception p1

    .line 679
    const/4 p1, 0x0

    return p1
.end method

.method private resolvePalette(Landroid/content/Context;)V
    .registers 4

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 153
    const/16 v0, 0x20

    if-ne p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-boolean p1, p0, Lcom/atd/groupme/sms/SmsPanel;->nightMode:Z

    .line 154
    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    if-eqz p1, :cond_30

    .line 158
    iput v1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    .line 159
    iput v1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    .line 160
    iput v0, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    .line 161
    const p1, -0x616162

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    .line 162
    const p1, -0xd0b171

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBubbleSent:I

    .line 163
    const p1, -0xe0e0e1

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBubbleReceived:I

    goto :goto_48

    .line 165
    :cond_30
    iput v0, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBg:I

    .line 166
    const p1, -0xf1211

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorToolbar:I

    .line 167
    iput v1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextPrimary:I

    .line 168
    const p1, -0x99999a

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorTextSecondary:I

    .line 169
    const p1, -0x291b01

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBubbleSent:I

    .line 170
    const p1, -0x101011

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->colorBubbleReceived:I

    .line 172
    :goto_48
    return-void
.end method

.method private sendFromCompose()V
    .registers 7

    .line 684
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    move v2, v3

    .line 688
    :goto_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-nez v2, :cond_2f

    goto :goto_98

    .line 694
    :cond_2f
    if-eqz v2, :cond_59

    .line 698
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    invoke-static {v4, v0, v1, v5, v2}, Lcom/atd/groupme/sms/MmsSender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    .line 700
    if-eqz v1, :cond_58

    .line 701
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "MMS queued"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 702
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 704
    :cond_58
    goto :goto_70

    .line 705
    :cond_59
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/atd/groupme/sms/SmsSender;->sendAndPersist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 706
    if-eqz v1, :cond_70

    .line 707
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "Sent"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 710
    :cond_70
    :goto_70
    if-eqz v1, :cond_8a

    .line 711
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    .line 712
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    if-eqz v1, :cond_7e

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    :cond_7e
    nop

    .line 714
    sget-object v1, Lcom/atd/groupme/sms/SmsPanel;->IO:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, v0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda39;-><init>(Lcom/atd/groupme/sms/SmsPanel;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 724
    goto :goto_97

    .line 725
    :cond_8a
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Send failed"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 727
    :goto_97
    return-void

    .line 689
    :cond_98
    :goto_98
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Need both a number and a message"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 691
    return-void
.end method

.method private sendFromDetail()V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3f

    .line 549
    :cond_19
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/atd/groupme/sms/SmsSender;->sendAndPersist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 550
    if-eqz v0, :cond_30

    .line 551
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->detailComposer:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->refreshThreadDetail()V

    goto :goto_3e

    .line 554
    :cond_30
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Send failed"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 556
    :goto_3e
    return-void

    .line 548
    :cond_3f
    :goto_3f
    return-void
.end method

.method private showMessageActions(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 8

    .line 831
    if-nez p1, :cond_3

    return-void

    .line 832
    :cond_3
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_10

    return-void

    .line 833
    :cond_10
    iget-object v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->imageUri:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    .line 836
    :goto_19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 837
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 838
    iget-object v5, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->body:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 839
    const-string v5, "Copy text"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v5, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda22;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_38
    const-string v5, "Reply"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance v5, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda23;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    const-string v5, "Forward"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v5, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda24;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    if-eqz v0, :cond_6f

    .line 847
    const-string v0, "Save image"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    new-instance v0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda25;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    const-string v0, "Share image"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda26;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 852
    :cond_6f
    const-string v0, "Share"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda27;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    :goto_7c
    const-string v0, "Delete"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    new-instance v0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda28;-><init>(Lcom/atd/groupme/sms/SmsPanel;Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 858
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda29;

    invoke-direct {v3, v4}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda29;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 860
    const-string v3, "Cancel"

    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 861
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 862
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 866
    :try_start_b1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 867
    if-eqz p1, :cond_c8

    .line 868
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 869
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 870
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_c8

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_c6
    .catchall {:try_start_b1 .. :try_end_c6} :catchall_c7

    goto :goto_c8

    .line 872
    :catchall_c7
    move-exception p1

    :cond_c8
    :goto_c8
    nop

    .line 873
    return-void
.end method

.method private showThreadActions(Lcom/atd/groupme/sms/ThreadSummary;)V
    .registers 10

    .line 732
    if-nez p1, :cond_3

    return-void

    .line 733
    :cond_3
    iget-wide v0, p1, Lcom/atd/groupme/sms/ThreadSummary;->threadId:J

    .line 734
    iget-object v2, p1, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    .line 735
    iget v3, p1, Lcom/atd/groupme/sms/ThreadSummary;->unreadCount:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_f

    move v3, v4

    goto :goto_10

    :cond_f
    move v3, v5

    .line 738
    :goto_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 739
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 740
    if-eqz v3, :cond_29

    .line 741
    const-string v3, "Mark as read"

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda1;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_29
    const-string v3, "Mark as unread"

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda2;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    const-string v3, "Copy phone number"

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda3;-><init>(Lcom/atd/groupme/sms/SmsPanel;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    const-string v3, "Delete thread"

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda4;-><init>(Lcom/atd/groupme/sms/SmsPanel;J)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p1, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v2, p1, Lcom/atd/groupme/sms/ThreadSummary;->displayName:Ljava/lang/String;

    .line 757
    :cond_5a
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 758
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    .line 759
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda5;

    invoke-direct {v1, v7}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 760
    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 761
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 762
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 764
    :try_start_86
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 765
    if-eqz p1, :cond_9d

    .line 766
    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 767
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 768
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_9d

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_9b
    .catchall {:try_start_86 .. :try_end_9b} :catchall_9c

    goto :goto_9d

    .line 770
    :catchall_9c
    move-exception p1

    :cond_9d
    :goto_9d
    nop

    .line 771
    return-void
.end method

.method private updateHostChrome()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBar:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 269
    :goto_10
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBar:Landroid/view/View;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBarOriginalVisibility:I

    goto :goto_19

    :cond_17
    const/16 v0, 0x8

    :goto_19
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    return-void
.end method

.method private writeToolbarTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 10

    .line 257
    const-string v0, "RetroGM.SmsPanel"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setTitle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 259
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "host toolbar.setTitle("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") OK"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_38

    .line 263
    goto :goto_3e

    .line 261
    :catchall_38
    move-exception p1

    .line 262
    const-string p2, "writeToolbarTitle reflection failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :goto_3e
    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    return v0
.end method

.method public handleBack()Z
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 197
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_26

    const/4 v3, 0x4

    if-ne v0, v3, :cond_f

    goto :goto_26

    .line 202
    :cond_f
    if-eq v0, v2, :cond_16

    if-ne v0, v1, :cond_14

    goto :goto_16

    .line 209
    :cond_14
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_16
    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    .line 205
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :cond_22
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->showList()V

    .line 207
    return v2

    .line 198
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 199
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 200
    return v2
.end method

.method public handleEntryIntent(Landroid/content/Intent;)V
    .registers 7

    .line 177
    if-nez p1, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->showList()V

    .line 179
    return-void

    .line 181
    :cond_6
    const-wide/16 v0, -0x1

    const-string v2, "thread_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 182
    const-string v2, "address"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v3, "body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_24

    .line 185
    invoke-virtual {p0, v0, v1, v2}, Lcom/atd/groupme/sms/SmsPanel;->openThread(JLjava/lang/String;)V

    .line 186
    return-void

    .line 188
    :cond_24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 189
    invoke-virtual {p0, v2, p1}, Lcom/atd/groupme/sms/SmsPanel;->openCompose(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 192
    :cond_2e
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->showList()V

    .line 193
    return-void
.end method

.method synthetic lambda$actionDelete$37$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 998
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->doDelete(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$actionSaveImage$35$com-atd-groupme-sms-SmsPanel(Ljava/lang/String;)V
    .registers 4

    .line 949
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$actionSaveImage$36$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 4

    .line 948
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->doSaveImage(Lcom/atd/groupme/sms/MessageListAdapter$Item;)Ljava/lang/String;

    move-result-object p1

    .line 949
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v1, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda0;-><init>(Lcom/atd/groupme/sms/SmsPanel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 950
    return-void
.end method

.method synthetic lambda$buildComposePage$12$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 2

    .line 591
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->showList()V

    return-void
.end method

.method synthetic lambda$buildComposePage$13$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 2

    .line 610
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->openContactPicker()V

    return-void
.end method

.method synthetic lambda$buildComposePage$14$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 2

    .line 621
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->openMediaPicker()V

    return-void
.end method

.method synthetic lambda$buildComposePage$15$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 2

    .line 627
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->sendFromCompose()V

    return-void
.end method

.method synthetic lambda$buildComposePage$16$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 4

    .line 665
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    .line 666
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Attachment removed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 668
    return-void
.end method

.method synthetic lambda$buildContactPickerPage$39$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 3

    .line 1034
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    return-void
.end method

.method synthetic lambda$buildContactPickerPage$40$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1060
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerAdapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/ContactPickerAdapter;->getContact(I)Lcom/atd/groupme/sms/ContactsHelper$Contact;

    move-result-object p1

    .line 1061
    if-nez p1, :cond_9

    return-void

    .line 1062
    :cond_9
    iget-object p2, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/atd/groupme/sms/ContactsHelper$Contact;->number:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1064
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1065
    return-void
.end method

.method synthetic lambda$buildMediaPickerPage$43$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 3

    .line 1111
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    return-void
.end method

.method synthetic lambda$buildMediaPickerPage$44$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1133
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerAdapter:Lcom/atd/groupme/sms/MediaPickerAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/MediaPickerAdapter;->getUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 1134
    if-nez p1, :cond_9

    return-void

    .line 1135
    :cond_9
    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachedImage:Landroid/net/Uri;

    .line 1136
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->attachmentBadge:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 1137
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1139
    :cond_13
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1140
    return-void
.end method

.method synthetic lambda$buildThreadDetailPage$5$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 2

    .line 445
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->showList()V

    return-void
.end method

.method synthetic lambda$buildThreadDetailPage$6$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 475
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->messageAdapter:Lcom/atd/groupme/sms/MessageListAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/MessageListAdapter;->getMessage(I)Lcom/atd/groupme/sms/MessageListAdapter$Item;

    move-result-object p1

    .line 476
    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->showMessageActions(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    .line 477
    :cond_b
    return-void
.end method

.method synthetic lambda$buildThreadDetailPage$7$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    .line 479
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->messageAdapter:Lcom/atd/groupme/sms/MessageListAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/MessageListAdapter;->getMessage(I)Lcom/atd/groupme/sms/MessageListAdapter$Item;

    move-result-object p1

    .line 480
    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->showMessageActions(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    .line 481
    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$buildThreadDetailPage$8$com-atd-groupme-sms-SmsPanel(Landroid/view/View;)V
    .registers 2

    .line 512
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->sendFromDetail()V

    return-void
.end method

.method synthetic lambda$buildThreadListPage$0$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 337
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/ThreadListAdapter;->getThread(I)Lcom/atd/groupme/sms/ThreadSummary;

    move-result-object p1

    .line 338
    if-eqz p1, :cond_f

    iget-wide p2, p1, Lcom/atd/groupme/sms/ThreadSummary;->threadId:J

    iget-object p1, p1, Lcom/atd/groupme/sms/ThreadSummary;->address:Ljava/lang/String;

    invoke-virtual {p0, p2, p3, p1}, Lcom/atd/groupme/sms/SmsPanel;->openThread(JLjava/lang/String;)V

    .line 339
    :cond_f
    return-void
.end method

.method synthetic lambda$buildThreadListPage$1$com-atd-groupme-sms-SmsPanel(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 6

    .line 342
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/ThreadListAdapter;->getThread(I)Lcom/atd/groupme/sms/ThreadSummary;

    move-result-object p1

    .line 343
    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->showThreadActions(Lcom/atd/groupme/sms/ThreadSummary;)V

    .line 344
    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$confirmDeleteThread$25$com-atd-groupme-sms-SmsPanel(JLandroid/content/DialogInterface;I)V
    .registers 5

    .line 806
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->doDeleteThread(J)V

    return-void
.end method

.method synthetic lambda$doDelete$38$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 6

    .line 1006
    const-string v0, "RetroGM.SmsPanel"

    :try_start_2
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->id:J

    .line 1007
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1008
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1009
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " row(s) for sms _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 1013
    goto :goto_44

    .line 1011
    :catch_3e
    move-exception p1

    .line 1012
    const-string v1, "delete failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    :goto_44
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v0, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda12;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1015
    return-void
.end method

.method synthetic lambda$doDeleteThread$26$com-atd-groupme-sms-SmsPanel(J)V
    .registers 7

    .line 817
    const-string v0, "RetroGM.SmsPanel"

    :try_start_2
    const-string v1, "content://mms-sms/conversations"

    .line 818
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 817
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 819
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " row(s) in thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    .line 823
    goto :goto_40

    .line 821
    :catch_3a
    move-exception p1

    .line 822
    const-string p2, "deleteThread failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    :goto_40
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance p2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda7;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method

.method synthetic lambda$markThreadRead$11$com-atd-groupme-sms-SmsPanel(J)V
    .registers 9

    .line 561
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 562
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string v1, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "thread_id=? AND read=0"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 568
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 564
    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 571
    goto :goto_39

    .line 569
    :catch_31
    move-exception p1

    .line 570
    const-string p2, "RetroGM.SmsPanel"

    const-string v0, "markRead failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    :goto_39
    return-void
.end method

.method synthetic lambda$markThreadUnread$24$com-atd-groupme-sms-SmsPanel(J)V
    .registers 9

    .line 776
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 777
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v1, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "thread_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 785
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    .line 781
    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 788
    goto :goto_39

    .line 786
    :catch_31
    move-exception p1

    .line 787
    const-string p2, "RetroGM.SmsPanel"

    const-string v0, "markUnread failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    :goto_39
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance p2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda7;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    return-void
.end method

.method synthetic lambda$openContactPicker$41$com-atd-groupme-sms-SmsPanel(JLjava/util/List;)V
    .registers 6

    .line 1089
    iget-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastContactsLoadStarted:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_7

    return-void

    .line 1090
    :cond_7
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->contactPickerAdapter:Lcom/atd/groupme/sms/ContactPickerAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/ContactPickerAdapter;->setItems(Ljava/util/List;)V

    .line 1091
    return-void
.end method

.method synthetic lambda$openContactPicker$42$com-atd-groupme-sms-SmsPanel(J)V
    .registers 6

    .line 1082
    nop

    .line 1083
    :try_start_1
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1082
    invoke-static {v0}, Lcom/atd/groupme/sms/ContactsHelper;->loadAllContacts(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    .line 1087
    nop

    .line 1088
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda19;-><init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1092
    return-void

    .line 1084
    :catchall_19
    move-exception p1

    .line 1085
    const-string p2, "RetroGM.SmsPanel"

    const-string v0, "contacts load failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    return-void
.end method

.method synthetic lambda$openMediaPicker$45$com-atd-groupme-sms-SmsPanel(JLjava/util/List;)V
    .registers 6

    .line 1163
    iget-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastImagesLoadStarted:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_7

    return-void

    .line 1164
    :cond_7
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->mediaPickerAdapter:Lcom/atd/groupme/sms/MediaPickerAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/MediaPickerAdapter;->setImageIds(Ljava/util/List;)V

    .line 1165
    return-void
.end method

.method synthetic lambda$openMediaPicker$46$com-atd-groupme-sms-SmsPanel(J)V
    .registers 6

    .line 1156
    nop

    .line 1157
    :try_start_1
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Lcom/atd/groupme/sms/MediaPickerAdapter;->loadImageIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_19

    .line 1161
    nop

    .line 1162
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda44;-><init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1166
    return-void

    .line 1158
    :catchall_19
    move-exception p1

    .line 1159
    const-string p2, "RetroGM.SmsPanel"

    const-string v0, "image list load failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1160
    return-void
.end method

.method synthetic lambda$refreshThreadDetail$10$com-atd-groupme-sms-SmsPanel(J)V
    .registers 12

    .line 525
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 526
    nop

    .line 527
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/atd/groupme/sms/SmsPanel;->currentThreadId:J

    .line 526
    invoke-static {v0, v1, v2}, Lcom/atd/groupme/sms/ThreadStore;->lookupAddressForThread(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1c

    .line 529
    :cond_19
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    move-object v5, v0

    .line 531
    :goto_1c
    nop

    .line 532
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 531
    invoke-static {v0, v5}, Lcom/atd/groupme/sms/ContactsHelper;->lookupName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 533
    nop

    .line 535
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/atd/groupme/sms/SmsPanel;->currentThreadId:J

    .line 534
    invoke-static {v0, v1, v2}, Lcom/atd/groupme/sms/MessageListAdapter;->loadMessages(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object v7

    .line 536
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v8, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda14;-><init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method synthetic lambda$refreshThreadDetail$9$com-atd-groupme-sms-SmsPanel(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    .line 537
    iget-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastMessageLoadStarted:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_7

    return-void

    .line 538
    :cond_7
    iput-object p3, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    .line 539
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_27

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 540
    :goto_27
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->detailTitle:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_31

    const-string p3, "(unknown)"

    :cond_31
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->messageAdapter:Lcom/atd/groupme/sms/MessageListAdapter;

    invoke-virtual {p1, p5}, Lcom/atd/groupme/sms/MessageListAdapter;->setItems(Ljava/util/List;)V

    .line 542
    return-void
.end method

.method synthetic lambda$refreshThreadList$2$com-atd-groupme-sms-SmsPanel()V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$refreshThreadList$3$com-atd-groupme-sms-SmsPanel(JLjava/util/List;)V
    .registers 6

    .line 421
    iget-wide v0, p0, Lcom/atd/groupme/sms/SmsPanel;->lastThreadLoadStarted:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_7

    return-void

    .line 422
    :cond_7
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadAdapter:Lcom/atd/groupme/sms/ThreadListAdapter;

    invoke-virtual {p1, p3}, Lcom/atd/groupme/sms/ThreadListAdapter;->setItems(Ljava/util/List;)V

    .line 423
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListLoading:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 424
    return-void
.end method

.method synthetic lambda$refreshThreadList$4$com-atd-groupme-sms-SmsPanel(J)V
    .registers 6

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/atd/groupme/sms/ThreadStore;->loadThreadList(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_18

    .line 419
    nop

    .line 420
    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda31;-><init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void

    .line 415
    :catchall_18
    move-exception p1

    .line 416
    const-string p2, "RetroGM.SmsPanel"

    const-string v0, "thread list load failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance p2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda30;

    invoke-direct {p2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda30;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method synthetic lambda$sendFromCompose$17$com-atd-groupme-sms-SmsPanel(JLjava/lang/String;)V
    .registers 6

    .line 717
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lcom/atd/groupme/sms/SmsPanel;->openThread(JLjava/lang/String;)V

    goto :goto_d

    .line 720
    :cond_a
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->showList()V

    .line 722
    :goto_d
    return-void
.end method

.method synthetic lambda$sendFromCompose$18$com-atd-groupme-sms-SmsPanel(Ljava/lang/String;)V
    .registers 6

    .line 715
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/atd/groupme/sms/SmsSender;->threadIdFor(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 716
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance v3, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda41;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda41;-><init>(Lcom/atd/groupme/sms/SmsPanel;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method synthetic lambda$showMessageActions$27$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 840
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionCopy(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showMessageActions$28$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 843
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionReply(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showMessageActions$29$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 845
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionForward(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showMessageActions$30$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 848
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionSaveImage(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showMessageActions$31$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 850
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionShareImage(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showMessageActions$32$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 853
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionShare(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showMessageActions$33$com-atd-groupme-sms-SmsPanel(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V
    .registers 2

    .line 856
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->actionDelete(Lcom/atd/groupme/sms/MessageListAdapter$Item;)V

    return-void
.end method

.method synthetic lambda$showThreadActions$19$com-atd-groupme-sms-SmsPanel(J)V
    .registers 5

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->markThreadRead(J)V

    .line 746
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->main:Landroid/os/Handler;

    new-instance p2, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/atd/groupme/sms/SmsPanel$$ExternalSyntheticLambda7;-><init>(Lcom/atd/groupme/sms/SmsPanel;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    return-void
.end method

.method synthetic lambda$showThreadActions$20$com-atd-groupme-sms-SmsPanel(J)V
    .registers 3

    .line 750
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->markThreadUnread(J)V

    return-void
.end method

.method synthetic lambda$showThreadActions$21$com-atd-groupme-sms-SmsPanel(Ljava/lang/String;)V
    .registers 2

    .line 752
    invoke-direct {p0, p1}, Lcom/atd/groupme/sms/SmsPanel;->copyNumber(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showThreadActions$22$com-atd-groupme-sms-SmsPanel(J)V
    .registers 3

    .line 754
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->confirmDeleteThread(J)V

    return-void
.end method

.method public openCompose(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    const-string v1, ""

    if-nez p1, :cond_8

    move-object v2, v1

    goto :goto_9

    :cond_8
    move-object v2, p1

    :goto_9
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    if-nez p2, :cond_11

    move-object p2, v1

    :cond_11
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p2, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 276
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 278
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->composeRecipient:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2e

    .line 280
    :cond_29
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->composeBody:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 282
    :goto_2e
    return-void
.end method

.method public openComposeFromHost()V
    .registers 2

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/atd/groupme/sms/SmsPanel;->openCompose(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public openThread(JLjava/lang/String;)V
    .registers 5

    .line 285
    iput-wide p1, p0, Lcom/atd/groupme/sms/SmsPanel;->currentThreadId:J

    .line 286
    iput-object p3, p0, Lcom/atd/groupme/sms/SmsPanel;->currentAddress:Ljava/lang/String;

    .line 287
    iget-object p3, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 288
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 289
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->refreshThreadDetail()V

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsPanel;->markThreadRead(J)V

    .line 291
    return-void
.end method

.method public restoreHostChrome()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBar:Landroid/view/View;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBarOriginalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->hostToolbar:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsPanel;->hostToolbarOriginalTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_14

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/atd/groupme/sms/SmsPanel;->writeToolbarTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 240
    :cond_14
    return-void
.end method

.method public setHostAppBar(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBar:Landroid/view/View;

    .line 224
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/atd/groupme/sms/SmsPanel;->hostAppBarOriginalVisibility:I

    .line 225
    :cond_a
    iput-object p2, p0, Lcom/atd/groupme/sms/SmsPanel;->hostToolbar:Landroid/view/View;

    .line 226
    if-eqz p2, :cond_19

    .line 227
    invoke-direct {p0, p2}, Lcom/atd/groupme/sms/SmsPanel;->readToolbarTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsPanel;->hostToolbarOriginalTitle:Ljava/lang/CharSequence;

    .line 228
    const-string p1, "Messages"

    invoke-direct {p0, p2, p1}, Lcom/atd/groupme/sms/SmsPanel;->writeToolbarTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 230
    :cond_19
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 231
    return-void
.end method

.method public showList()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 214
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 215
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->refreshThreadList()V

    .line 216
    return-void
.end method

.method public toggleSearch()V
    .registers 5

    .line 378
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 379
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 380
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsPanel;->updateHostChrome()V

    .line 382
    :cond_11
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    if-nez v0, :cond_16

    return-void

    .line 383
    :cond_16
    nop

    .line 384
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 386
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4c

    .line 388
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 390
    if-eqz v0, :cond_44

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    .line 391
    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 390
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 393
    :cond_44
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsPanel;->threadListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_5d

    .line 395
    :cond_4c
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 396
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 397
    if-eqz v0, :cond_5d

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsPanel;->threadSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 399
    :cond_5d
    :goto_5d
    return-void
.end method
