.class final Lcom/adobe/mobile/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/adobe/mobile/aj$b;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/adobe/mobile/aj$b;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    .line 335
    iput p3, p0, Lcom/adobe/mobile/aj$a;->c:I

    .line 336
    iput p4, p0, Lcom/adobe/mobile/aj$a;->d:I

    .line 337
    iput-object p5, p0, Lcom/adobe/mobile/aj$a;->e:Ljava/lang/String;

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/adobe/mobile/aj$b;IILjava/lang/String;B)V
    .locals 6

    .prologue
    const/16 v3, 0x2710

    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/adobe/mobile/aj$a;-><init>(Ljava/lang/String;Lcom/adobe/mobile/aj$b;IILjava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 490
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 494
    new-instance v1, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 503
    :goto_0
    return-object v0

    .line 497
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    const-string v1, "Cached Files - Exception opening URL(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 342
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 343
    const-string v1, "Cached Files - url is null and cannot be cached"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v1, v0}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    const-string v1, "Cached Files - given url is not valid and cannot be cached (\"%s\")"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v1, v0}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V

    goto :goto_0

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1286
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1287
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 362
    iget-object v3, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/adobe/mobile/aj$a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 367
    if-nez v3, :cond_3

    .line 368
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v1, v0}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V

    goto :goto_0

    .line 374
    :cond_3
    iget v4, p0, Lcom/adobe/mobile/aj$a;->c:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 375
    iget v4, p0, Lcom/adobe/mobile/aj$a;->d:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 377
    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/mobile/aj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/mobile/aj;->e(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 381
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 382
    const-string v6, "If-Modified-Since"

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_4
    if-eqz v4, :cond_5

    .line 385
    const-string v2, "If-None-Match"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 391
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0x130

    if-ne v2, v4, :cond_7

    .line 392
    const-string v2, "Cached Files - File has not been modified since last download. (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v2, :cond_6

    .line 394
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v2, v1}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 398
    :cond_7
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_9

    .line 399
    const-string v2, "Cached Files - File not found. (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v2, :cond_8

    .line 401
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v2, v1}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 481
    :catch_1
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 405
    :cond_9
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_b

    .line 406
    const-string v2, "Cached Files - File could not be downloaded from URL (%s) Response: (%d) Message: (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v2, :cond_a

    .line 408
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v2, v1}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    :cond_a
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 481
    :catch_2
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 413
    :cond_b
    if-eqz v1, :cond_c

    .line 414
    :try_start_6
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adobe/mobile/aj;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 417
    :cond_c
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 418
    const-string v1, "ETag"

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_d

    .line 421
    invoke-static {v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    :cond_d
    iget-object v4, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/mobile/aj$a;->e:Ljava/lang/String;

    invoke-static {v4, v2, v1, v5}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 427
    if-nez v4, :cond_f

    .line 428
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v1, :cond_e

    .line 429
    iget-object v1, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 479
    :cond_e
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 481
    :catch_3
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 434
    :cond_f
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    .line 435
    :try_start_9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 437
    const/16 v0, 0x1000

    :try_start_a
    new-array v0, v0, [B

    .line 440
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_13

    .line 441
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1

    .line 450
    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    :try_start_b
    const-string v2, "Cached Files - Timed out making request (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v2, :cond_10

    .line 452
    iget-object v2, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 473
    :cond_10
    if-eqz v0, :cond_11

    .line 474
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 476
    :cond_11
    if-eqz v1, :cond_12

    .line 477
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 479
    :cond_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    .line 481
    :catch_5
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 444
    :cond_13
    :try_start_d
    const-string v0, "Cached Files - Caching successful (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adobe/mobile/aj$a;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v0, :cond_14

    .line 447
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    invoke-interface {v0, v4}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 474
    :cond_14
    :try_start_e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 476
    if-eqz v2, :cond_15

    .line 477
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 479
    :cond_15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 481
    :catch_6
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 454
    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 455
    :goto_3
    :try_start_f
    const-string v4, "Cached Files - IOException while making request (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v0, :cond_16

    .line 457
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 473
    :cond_16
    if-eqz v1, :cond_17

    .line 474
    :try_start_10
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 476
    :cond_17
    if-eqz v2, :cond_18

    .line 477
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 479
    :cond_18
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 481
    :catch_8
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 459
    :catch_9
    move-exception v1

    move-object v2, v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 460
    :goto_4
    :try_start_11
    const-string v4, "Cached Files - Unexpected exception while attempting to get remote file (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v0, :cond_19

    .line 462
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 473
    :cond_19
    if-eqz v1, :cond_1a

    .line 474
    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 476
    :cond_1a
    if-eqz v2, :cond_1b

    .line 477
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 479
    :cond_1b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_0

    .line 481
    :catch_a
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 464
    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 465
    :goto_5
    :try_start_13
    const-string v4, "Cached Files - Unexpected error while attempting to get remote file (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    if-eqz v0, :cond_1c

    .line 467
    iget-object v0, p0, Lcom/adobe/mobile/aj$a;->a:Lcom/adobe/mobile/aj$b;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/adobe/mobile/aj$b;->a(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 473
    :cond_1c
    if-eqz v1, :cond_1d

    .line 474
    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 476
    :cond_1d
    if-eqz v2, :cond_1e

    .line 477
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 479
    :cond_1e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto/16 :goto_0

    .line 481
    :catch_c
    move-exception v0

    .line 482
    const-string v1, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 472
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 473
    :goto_6
    if-eqz v1, :cond_1f

    .line 474
    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 476
    :cond_1f
    if-eqz v2, :cond_20

    .line 477
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 479
    :cond_20
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 483
    :goto_7
    throw v0

    .line 481
    :catch_d
    move-exception v1

    .line 482
    const-string v2, "Cached Files - Exception while attempting to close streams (%s)"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 472
    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_6

    .line 464
    :catch_e
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catch_f
    move-exception v0

    goto :goto_5

    .line 459
    :catch_10
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_4

    .line 454
    :catch_12
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_3

    :catch_13
    move-exception v0

    goto/16 :goto_3

    .line 450
    :catch_14
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2

    :catch_15
    move-exception v1

    move-object v1, v2

    goto/16 :goto_2
.end method
