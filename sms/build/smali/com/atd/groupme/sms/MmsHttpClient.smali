.class public Lcom/atd/groupme/sms/MmsHttpClient;
.super Ljava/lang/Object;
.source "MmsHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final NETWORK_WAIT_MS:I = 0x7530

.field private static final READ_TIMEOUT_MS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "RetroGM.MmsHttpClient"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireMmsNetwork(Landroid/content/Context;)Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;
    .registers 9

    .line 315
    const-string v0, "RetroGM.MmsHttpClient"

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 316
    const/4 v1, 0x0

    if-nez p0, :cond_e

    return-object v1

    .line 317
    :cond_e
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 318
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 319
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 321
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 322
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 323
    new-instance v5, Lcom/atd/groupme/sms/MmsNetworkCallback;

    invoke-direct {v5, v3, v4}, Lcom/atd/groupme/sms/MmsNetworkCallback;-><init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 325
    :try_start_30
    invoke-virtual {p0, v2, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_33} :catch_71
    .catchall {:try_start_30 .. :try_end_33} :catchall_6a

    .line 332
    nop

    .line 334
    const-wide/16 v6, 0x7530

    :try_start_36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 335
    const-string v2, "MMS network not available within 30000ms"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_46} :catch_5c

    .line 337
    return-object v1

    .line 343
    :cond_47
    nop

    .line 344
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 345
    if-nez v0, :cond_56

    .line 346
    :try_start_50
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_55

    :catchall_54
    move-exception p0

    .line 347
    :goto_55
    return-object v1

    .line 349
    :cond_56
    new-instance v1, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;

    invoke-direct {v1, v0, p0, v5}, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;-><init>(Landroid/net/Network;Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-object v1

    .line 339
    :catch_5c
    move-exception v0

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 341
    :try_start_64
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_69

    :catchall_68
    move-exception p0

    .line 342
    :goto_69
    return-object v1

    .line 329
    :catchall_6a
    move-exception p0

    .line 330
    const-string v2, "requestNetwork failed"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return-object v1

    .line 326
    :catch_71
    move-exception p0

    .line 327
    const-string v2, "requestNetwork denied \u2014 falling back to default route"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    return-object v1
.end method

.method private static consumeBody(Ljava/io/InputStream;JZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    if-eqz p3, :cond_7

    .line 207
    invoke-static {p0, v0}, Lcom/atd/groupme/sms/MmsHttpClient;->readChunkedBody(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 208
    return-void

    .line 210
    :cond_7
    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-ltz p3, :cond_11

    .line 211
    invoke-static {p0, v0, p1, p2}, Lcom/atd/groupme/sms/MmsHttpClient;->readFixedBody(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;J)V

    .line 212
    return-void

    .line 214
    :cond_11
    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 215
    :goto_15
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1c

    goto :goto_15

    .line 216
    :cond_1c
    return-void
.end method

.method public static fetch(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 14

    .line 48
    const-string v0, "RetroGM.MmsHttpClient"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 50
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1c7

    const-string v5, "https"

    if-nez v4, :cond_3a

    :try_start_1d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported scheme: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v2

    .line 56
    :cond_3a
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 60
    const-string p0, "https not supported by raw-socket fetcher yet"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v2

    .line 63
    :cond_46
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 65
    if-gtz v4, :cond_52

    const/16 v4, 0x50

    .line 66
    :cond_52
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v1, "/"

    .line 69
    :cond_5e
    invoke-static {p0}, Lcom/atd/groupme/sms/MmsHttpClient;->ownPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 70
    nop

    .line 71
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_67
    .catchall {:try_start_1d .. :try_end_67} :catchall_1c7

    const-string v7, ""

    if-nez v6, :cond_94

    .line 72
    :try_start_6b
    const-string v6, "[^0-9+]"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X-MDN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\nX-Wap-MMS-Sender: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    :cond_94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " HTTP/1.1\r\nHost: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\r\nUser-Agent: Android-Mms/2.0\r\nAccept: application/vnd.wap.mms-message, application/vnd.wap.sic\r\nAccept-Language: en-US,en;q=0.9\r\nAccept-Charset: utf-8, iso-8859-1, us-ascii\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "Connection: close\r\n\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {p0}, Lcom/atd/groupme/sms/MmsHttpClient;->acquireMmsNetwork(Landroid/content/Context;)Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;

    move-result-object p0

    .line 99
    if-nez p0, :cond_c9

    move-object v5, v2

    goto :goto_cb

    :cond_c9
    iget-object v5, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->cm:Landroid/net/ConnectivityManager;

    .line 100
    :goto_cb
    if-nez p0, :cond_cf

    move-object v6, v2

    goto :goto_d1

    :cond_cf
    iget-object v6, p0, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->network:Landroid/net/Network;
    :try_end_d1
    .catchall {:try_start_6b .. :try_end_d1} :catchall_1c7

    .line 101
    :goto_d1
    nop

    .line 102
    const/4 v7, 0x0

    .line 104
    if-eqz v5, :cond_101

    if-eqz v6, :cond_101

    .line 105
    :try_start_d7
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v8
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_fd

    .line 107
    :try_start_db
    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result v7

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindProcessToNetwork rebound="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_db .. :try_end_f5} :catchall_f6

    .line 111
    goto :goto_102

    .line 109
    :catchall_f6
    move-exception v9

    .line 110
    :try_start_f7
    const-string v10, "bindProcessToNetwork threw"

    invoke-static {v0, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_102

    .line 136
    :catchall_fd
    move-exception v1

    move-object v8, v2

    goto/16 :goto_1b8

    .line 114
    :cond_101
    move-object v8, v2

    :goto_102
    if-eqz v7, :cond_10b

    if-eqz v6, :cond_10b

    .line 115
    invoke-virtual {v6, v3}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    goto :goto_10f

    .line 117
    :cond_10b
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 119
    :goto_10f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "raw socket connect "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " ("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "):"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " via "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    if-eqz v7, :cond_141

    const-string v6, "MMS-cellular (process-bound)"

    goto :goto_148

    .line 121
    :cond_141
    if-eqz v6, :cond_146

    const-string v6, "MMS-cellular (default fallback)"

    goto :goto_148

    .line 122
    :cond_146
    const-string v6, "default"

    :goto_148
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_158
    .catchall {:try_start_f7 .. :try_end_158} :catchall_1b7

    .line 125
    :try_start_158
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v9, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v4, 0x7530

    invoke-virtual {v3, v6, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 126
    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 127
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 128
    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "B request"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/atd/groupme/sms/MmsHttpClient;->readResponse(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1a0
    .catchall {:try_start_158 .. :try_end_1a0} :catchall_1b2

    .line 133
    :try_start_1a0
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1a3
    .catchall {:try_start_1a0 .. :try_end_1a3} :catchall_1b7

    .line 136
    if-eqz v5, :cond_1ac

    if-eqz v7, :cond_1ac

    .line 137
    :try_start_1a7
    invoke-virtual {v5, v8}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z
    :try_end_1aa
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_1ab

    goto :goto_1ac

    :catchall_1ab
    move-exception v3

    .line 139
    :cond_1ac
    :goto_1ac
    if-eqz p0, :cond_1b1

    :try_start_1ae
    invoke-virtual {p0}, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->release()V
    :try_end_1b1
    .catchall {:try_start_1ae .. :try_end_1b1} :catchall_1c7

    .line 131
    :cond_1b1
    return-object v1

    .line 133
    :catchall_1b2
    move-exception v1

    :try_start_1b3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 134
    throw v1
    :try_end_1b7
    .catchall {:try_start_1b3 .. :try_end_1b7} :catchall_1b7

    .line 136
    :catchall_1b7
    move-exception v1

    :goto_1b8
    if-eqz v5, :cond_1c1

    if-eqz v7, :cond_1c1

    .line 137
    :try_start_1bc
    invoke-virtual {v5, v8}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z
    :try_end_1bf
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_1c0

    goto :goto_1c1

    :catchall_1c0
    move-exception v3

    .line 139
    :cond_1c1
    :goto_1c1
    if-eqz p0, :cond_1c6

    :try_start_1c3
    invoke-virtual {p0}, Lcom/atd/groupme/sms/MmsHttpClient$ResolvedNetwork;->release()V

    .line 140
    :cond_1c6
    throw v1
    :try_end_1c7
    .catchall {:try_start_1c3 .. :try_end_1c7} :catchall_1c7

    .line 141
    :catchall_1c7
    move-exception p0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetch failed for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    return-object v2
.end method

.method private static ownPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 354
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 355
    if-nez p0, :cond_c

    return-object v0

    .line 356
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    const/16 v2, 0x21

    if-lt v1, v2, :cond_19

    .line 358
    :try_start_12
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_16} :catch_17
    .catchall {:try_start_12 .. :try_end_16} :catchall_1e

    return-object p0

    .line 359
    :catch_17
    move-exception p0

    .line 365
    goto :goto_26

    .line 361
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    return-object p0

    .line 363
    :catchall_1e
    move-exception p0

    .line 364
    const-string v1, "RetroGM.MmsHttpClient"

    const-string v2, "getLine1Number failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :goto_26
    return-object v0
.end method

.method private static parseStatus(Ljava/lang/String;)I
    .registers 4

    .line 265
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 266
    const/4 v2, -0x1

    if-gez v1, :cond_a

    return v2

    .line 267
    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 268
    if-gez v0, :cond_17

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_23} :catch_24

    return p0

    .line 271
    :catch_24
    move-exception p0

    .line 272
    return v2
.end method

.method private static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 279
    :cond_7
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_2c

    .line 280
    const/16 v2, 0xa

    const/16 v3, 0xd

    if-ne v1, v3, :cond_25

    .line 281
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 282
    if-eq v4, v2, :cond_2c

    if-gez v4, :cond_1c

    goto :goto_2c

    .line 283
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 284
    if-ltz v4, :cond_7

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    .line 287
    :cond_25
    if-ne v1, v2, :cond_28

    goto :goto_2c

    .line 288
    :cond_28
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    .line 290
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_36

    if-gez v1, :cond_36

    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_36
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private static readChunkedBody(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    :goto_0
    invoke-static {p0}, Lcom/atd/groupme/sms/MmsHttpClient;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-nez v0, :cond_7

    return-void

    .line 234
    :cond_7
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 235
    const/4 v2, 0x0

    if-gez v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 238
    const/16 v1, 0x10

    :try_start_1b
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_52

    .line 241
    nop

    .line 242
    if-nez v0, :cond_31

    .line 245
    :goto_22
    invoke-static {p0}, Lcom/atd/groupme/sms/MmsHttpClient;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 246
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    .line 247
    :cond_2f
    goto :goto_22

    .line 246
    :cond_30
    :goto_30
    return-void

    .line 249
    :cond_31
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v3, v1, [B

    .line 250
    nop

    .line 251
    :goto_3a
    if-lez v0, :cond_4e

    .line 252
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 253
    invoke-virtual {p0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 254
    if-gez v4, :cond_47

    return-void

    .line 255
    :cond_47
    if-eqz p1, :cond_4c

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 256
    :cond_4c
    sub-int/2addr v0, v4

    .line 257
    goto :goto_3a

    .line 259
    :cond_4e
    invoke-static {p0}, Lcom/atd/groupme/sms/MmsHttpClient;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 260
    goto :goto_0

    .line 239
    :catch_52
    move-exception p0

    .line 240
    return-void
.end method

.method private static readFixedBody(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 220
    nop

    .line 221
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_21

    .line 222
    int-to-long v2, v0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 223
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 224
    if-gez v2, :cond_19

    goto :goto_21

    .line 225
    :cond_19
    if-eqz p1, :cond_1e

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 226
    :cond_1e
    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 227
    goto :goto_5

    .line 228
    :cond_21
    :goto_21
    return-void
.end method

.method private static readResponse(Ljava/io/InputStream;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 154
    invoke-static {v0}, Lcom/atd/groupme/sms/MmsHttpClient;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 155
    const/4 v1, 0x0

    const-string v2, "RetroGM.MmsHttpClient"

    if-nez p0, :cond_16

    .line 156
    const-string p0, "empty response"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v1

    .line 159
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0}, Lcom/atd/groupme/sms/MmsHttpClient;->parseStatus(Ljava/lang/String;)I

    move-result v3

    .line 161
    if-gez v3, :cond_49

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad status line: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v1

    .line 167
    :cond_49
    const-wide/16 v4, -0x1

    .line 168
    const/4 p0, 0x0

    move v6, p0

    .line 170
    :goto_4d
    invoke-static {v0}, Lcom/atd/groupme/sms/MmsHttpClient;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 171
    if-eqz v7, :cond_9e

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5a

    goto :goto_9e

    .line 172
    :cond_5a
    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 173
    if-gez v8, :cond_63

    goto :goto_4d

    .line 174
    :cond_63
    invoke-virtual {v7, p0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 175
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 176
    const-string v8, "content-length"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 177
    :try_start_81
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_85} :catch_86

    goto :goto_9d

    :catch_86
    move-exception v7

    goto :goto_9d

    .line 178
    :cond_88
    const-string v8, "transfer-encoding"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "chunked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 179
    const/4 v6, 0x1

    .line 181
    :cond_9d
    :goto_9d
    goto :goto_4d

    .line 183
    :cond_9e
    :goto_9e
    const/16 v7, 0xc8

    if-lt v3, v7, :cond_ef

    const/16 v7, 0x12c

    if-lt v3, v7, :cond_a7

    goto :goto_ef

    .line 189
    :cond_a7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    if-eqz v6, :cond_b2

    .line 191
    invoke-static {v0, v1}, Lcom/atd/groupme/sms/MmsHttpClient;->readChunkedBody(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_ca

    .line 192
    :cond_b2
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_bc

    .line 193
    invoke-static {v0, v1, v4, v5}, Lcom/atd/groupme/sms/MmsHttpClient;->readFixedBody(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_ca

    .line 196
    :cond_bc
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 198
    :goto_c0
    invoke-virtual {v0, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_ca

    invoke-virtual {v1, v3, p0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c0

    .line 201
    :cond_ca
    :goto_ca
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "body="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " bytes"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 185
    :cond_ef
    :goto_ef
    invoke-static {v0, v4, v5, v6}, Lcom/atd/groupme/sms/MmsHttpClient;->consumeBody(Ljava/io/InputStream;JZ)V

    .line 186
    return-object v1
.end method
