.class public Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_HTTP_CODE:I = 0x98967f

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPHTTPAsyncTask"


# instance fields
.field private mUsingAndroidVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->mUsingAndroidVersion:Z

    .line 35
    const-string v0, "/data/local/tmp/test_tracking/enable_charels.txt"

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->mUsingAndroidVersion:Z

    .line 40
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v1, "WARNING ONLY for QA testing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method private checkRetry(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    add-int/lit8 v0, p1, -0x1

    .line 285
    if-nez v0, :cond_0

    .line 286
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] abort, %s, exhausted all attempts, url %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :goto_0
    return v0

    .line 289
    :cond_0
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] retry, %s, url %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getHttpStatusCode(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 268
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 270
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x1

    :try_start_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 280
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const v0, 0x98967f

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private httpConnect(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    const v5, 0x98967f

    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 101
    .line 105
    const/4 v2, 0x5

    .line 108
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 110
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 111
    invoke-virtual {v8}, Ljava/net/URL;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    :goto_0
    move-object v3, v4

    .line 125
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v9, "https"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 128
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 145
    :goto_2
    if-nez v2, :cond_17

    .line 264
    :cond_0
    :goto_3
    return-object v4

    .line 115
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v1, "[TRACKING] abort, url %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 131
    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    goto :goto_2

    .line 134
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    const-string v0, "socket creation error"

    invoke-direct {p0, v2, v0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->checkRetry(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_15

    move v0, v7

    .line 145
    :goto_4
    if-eqz v2, :cond_0

    move v13, v0

    move v0, v2

    move-object v2, v3

    move v3, v13

    .line 148
    :goto_5
    if-nez v3, :cond_16

    .line 153
    :cond_2
    :try_start_4
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v9, 0x1f4

    invoke-virtual {v2, v3, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    if-nez v0, :cond_14

    .line 174
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 178
    :catch_2
    move-exception v0

    .line 179
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] close connection exception, url %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 140
    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v1, "[TRACKING] abort, unknown socket creation error, url %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 145
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    .line 146
    throw v0

    .line 156
    :catch_4
    move-exception v3

    :try_start_7
    const-string v3, "socket connection timeout"

    invoke-direct {p0, v0, v3, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->checkRetry(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v3

    if-eqz v3, :cond_13

    move v0, v7

    .line 173
    :goto_6
    if-nez v3, :cond_4

    .line 174
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_8
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_3

    .line 178
    :catch_5
    move-exception v0

    .line 179
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] close connection exception, url %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 160
    :catch_6
    move-exception v3

    :try_start_9
    const-string v3, "unable to resolve host"

    invoke-direct {p0, v0, v3, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->checkRetry(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v3

    if-eqz v3, :cond_12

    move v0, v7

    .line 173
    :goto_7
    if-nez v3, :cond_4

    .line 174
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_a
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_3

    .line 178
    :catch_7
    move-exception v0

    .line 179
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] close connection exception, url %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 164
    :catch_8
    move-exception v1

    :try_start_b
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v3, "[TRACKING] abort, bad InetSocketAddress, url %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    invoke-static {v1, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 174
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_c
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_3

    .line 178
    :catch_9
    move-exception v0

    .line 179
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] close connection exception, url %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 168
    :catch_a
    move-exception v3

    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    const-string v3, "unable to connect"

    invoke-direct {p0, v0, v3, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->checkRetry(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v3

    if-nez v3, :cond_11

    move v0, v7

    .line 173
    :goto_8
    if-nez v3, :cond_4

    .line 174
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_e
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_3

    .line 178
    :catch_b
    move-exception v0

    .line 179
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] close connection exception, url %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 173
    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    .line 174
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_f
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_3

    .line 178
    :catch_c
    move-exception v0

    .line 179
    const-string v1, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] close connection exception, url %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 183
    :cond_3
    throw v1

    :cond_4
    move v13, v0

    move v0, v3

    move v3, v13

    .line 186
    :goto_9
    if-nez v3, :cond_2

    .line 192
    :try_start_10
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 193
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 194
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v0, 0x0

    invoke-direct {v1, v9, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "GET "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " HTTP/1.0\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Host: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-nez v0, :cond_5

    .line 199
    const-string v0, "VisualOn OSMP+ Player(Linux;Android)"

    .line 200
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "User-Agent: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    const-string v0, "Accept-Encoding: gzip\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 204
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v1

    .line 205
    :try_start_11
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 206
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move v3, v5

    .line 208
    :cond_6
    :goto_a
    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 209
    if-ne v3, v5, :cond_7

    .line 210
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->getHttpStatusCode(Ljava/lang/String;)I

    move-result v3

    goto :goto_a

    .line 213
    :cond_7
    const/16 v10, 0x12e

    if-eq v3, v10, :cond_8

    const/16 v10, 0x133

    if-ne v3, v10, :cond_9

    .line 215
    :cond_8
    const-string v10, ": "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    array-length v10, v0

    if-ne v10, v12, :cond_6

    const/4 v10, 0x0

    aget-object v10, v0, v10

    const-string v11, "Location"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 217
    const/4 v8, 0x1

    aget-object v4, v0, v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 221
    :cond_9
    :try_start_13
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_16
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-object v13, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v13

    .line 229
    :goto_b
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    :try_start_14
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 238
    :cond_a
    :goto_c
    if-eqz v4, :cond_f

    .line 240
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    move-object v4, v3

    .line 248
    :goto_d
    if-eq v1, v5, :cond_0

    .line 249
    const/16 v0, 0x190

    if-lt v1, v0, :cond_e

    .line 250
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] failed %d, url %s"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object p1, v3, v7

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 233
    :catch_d
    move-exception v0

    .line 234
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v8, "[TRACKING] close connection exception, url %s"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p1, v9, v6

    invoke-static {v2, v8, v9}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 241
    :catch_e
    move-exception v0

    .line 242
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v4, "[TRACKING] close inStream exception, url %s"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v2, v4, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v3

    .line 244
    goto :goto_d

    .line 225
    :catch_f
    move-exception v0

    move v1, v5

    move-object v3, v4

    :goto_e
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v8, "[TRACKING] abort, unknown exception, url %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v0, v8, v9}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 229
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    :try_start_17
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    .line 238
    :cond_b
    :goto_f
    if-eqz v4, :cond_f

    .line 240
    :try_start_18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    move-object v4, v3

    .line 244
    goto :goto_d

    .line 233
    :catch_10
    move-exception v0

    .line 234
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v8, "[TRACKING] close connection exception, url %s"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object p1, v9, v6

    invoke-static {v2, v8, v9}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 241
    :catch_11
    move-exception v0

    .line 242
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v4, "[TRACKING] close inStream exception, url %s"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v2, v4, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v3

    .line 244
    goto :goto_d

    .line 229
    :catchall_2
    move-exception v0

    :goto_10
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 231
    :try_start_19
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    .line 238
    :cond_c
    :goto_11
    if-eqz v4, :cond_d

    .line 240
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 244
    :cond_d
    :goto_12
    throw v0

    .line 233
    :catch_12
    move-exception v1

    .line 234
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v3, "[TRACKING] close connection exception, url %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v2, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 241
    :catch_13
    move-exception v1

    .line 242
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v3, "[TRACKING] close inStream exception, url %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 253
    :cond_e
    sparse-switch v1, :sswitch_data_0

    .line 259
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] done %d, url %s"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object p1, v3, v7

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 256
    :sswitch_0
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING] re-direct %d, url %s -> %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object p1, v3, v7

    aput-object v4, v3, v12

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 229
    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_10

    .line 225
    :catch_14
    move-exception v0

    move-object v3, v4

    move-object v4, v1

    move v1, v5

    goto/16 :goto_e

    :catch_15
    move-exception v0

    move-object v13, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v13

    goto/16 :goto_e

    :catch_16
    move-exception v0

    move-object v13, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v13

    goto/16 :goto_e

    :cond_f
    move-object v4, v3

    goto/16 :goto_d

    :cond_10
    move v1, v5

    move-object v3, v4

    goto/16 :goto_b

    :cond_11
    move v0, v6

    goto/16 :goto_8

    :cond_12
    move v0, v6

    goto/16 :goto_7

    :cond_13
    move v0, v6

    goto/16 :goto_6

    :cond_14
    move v3, v6

    goto/16 :goto_9

    :cond_15
    move v0, v6

    goto/16 :goto_4

    :cond_16
    move-object v3, v2

    move v2, v0

    goto/16 :goto_1

    :cond_17
    move v0, v2

    move-object v2, v3

    move v3, v6

    goto/16 :goto_5

    :cond_18
    move v1, v0

    goto/16 :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->mUsingAndroidVersion:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->doInBackground_HttpUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->doInBackground_socket([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected varargs doInBackground_HttpUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 59
    .line 62
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    :cond_0
    if-eqz v2, :cond_1

    .line 80
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :cond_1
    :goto_0
    const-string v0, "@@@VOOSMPHTTPAsyncTask"

    const-string v2, "[TRACKING], url is %s, result is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p1, v7

    aput-object v4, v3, v7

    aput-object v1, v3, v8

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_3
    const-string v2, "@@@VOOSMPHTTPAsyncTask"

    const-string v3, "[TRACKING], SocketTimeoutException, url is %s ."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, p1, v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 83
    :cond_2
    throw v0

    .line 75
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 73
    :catch_3
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2

    .line 70
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method protected varargs doInBackground_socket([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->httpConnect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs executeMultiThread([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 45
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPHTTPAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
