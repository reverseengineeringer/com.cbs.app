.class final Lcom/adobe/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 83
    new-instance v1, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 92
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception opening URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    .line 30
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return v4

    .line 36
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/adobe/a/b/g;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 37
    if-eqz v5, :cond_3

    .line 38
    const/16 v1, 0x1388

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    const/16 v1, 0x1388

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 41
    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    goto :goto_0

    .line 51
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request Sent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 53
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 54
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move v1, v3

    :goto_2
    move v4, v1

    .line 70
    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    .line 63
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException while sending request, retrying. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :catch_2
    move-exception v1

    .line 66
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception while attempting to send hit : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 70
    goto/16 :goto_0

    .line 67
    :catch_3
    move-exception v1

    .line 69
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception while attempting to send hit : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    goto/16 :goto_0

    :cond_3
    move v1, v4

    goto :goto_2
.end method
