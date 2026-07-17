.class Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;
.super Ljava/lang/Object;
.source "MmsHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/MmsHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolvedNetwork"
.end annotation


# instance fields
.field final cb:Landroid/net/ConnectivityManager$NetworkCallback;

.field final cm:Landroid/net/ConnectivityManager;

.field final network:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .registers 4

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->network:Landroid/net/Network;

    .line 306
    iput-object p2, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->cm:Landroid/net/ConnectivityManager;

    .line 307
    iput-object p3, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->cb:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 308
    return-void
.end method


# virtual methods
.method release()V
    .registers 3

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->cb:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    .line 311
    :goto_9
    return-void
.end method
