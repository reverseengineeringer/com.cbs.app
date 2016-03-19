.class public Lcom/cbs/app/androiddata/RequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private static final o:Ljava/lang/Object;

.field private static p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/cbs/app/androiddata/model/DeviceData;

.field private n:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/RequestHelper;->e:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/RequestHelper;->o:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/RequestHelper;->p:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v3, p0, Lcom/cbs/app/androiddata/RequestHelper;->c:Z

    .line 69
    iput-boolean v2, p0, Lcom/cbs/app/androiddata/RequestHelper;->f:Z

    .line 70
    iput-boolean v3, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z

    .line 71
    iput-boolean v2, p0, Lcom/cbs/app/androiddata/RequestHelper;->h:Z

    .line 72
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->i:J

    .line 74
    iput-boolean v3, p0, Lcom/cbs/app/androiddata/RequestHelper;->j:Z

    .line 99
    iput-boolean v2, p0, Lcom/cbs/app/androiddata/RequestHelper;->q:Z

    .line 93
    iput-object p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->b:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/cbs/app/androiddata/RequestHelper;->d:Ljava/lang/Class;

    .line 95
    iput-object p3, p0, Lcom/cbs/app/androiddata/RequestHelper;->a:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 97
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 5

    .prologue
    .line 513
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 514
    const/4 v1, 0x0

    .line 515
    if-eqz p1, :cond_0

    .line 517
    :try_start_0
    sget-object v0, Lcom/cbs/app/androiddata/RequestHelper;->e:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/cbs/app/androiddata/RequestHelper;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/ResponseModel;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 526
    :goto_0
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 527
    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 524
    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    .line 521
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 524
    goto :goto_0

    .line 522
    :catch_2
    move-exception v0

    .line 523
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error3: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/net/URL;[Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 6

    .prologue
    .line 226
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 227
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0}, Lcom/cbs/app/androiddata/RequestHelper;->a()Z

    move-result v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 236
    if-eqz v1, :cond_4

    .line 238
    const/4 v1, 0x0

    .line 240
    :cond_0
    if-lez v1, :cond_1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sleeping "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 243
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/androiddata/RequestHelper;->c(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    add-int/lit8 v1, v1, 0x1

    .line 250
    iget-boolean v3, p0, Lcom/cbs/app/androiddata/RequestHelper;->c:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 251
    :cond_2
    if-eqz v2, :cond_4

    .line 253
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->f:Z

    if-eqz v0, :cond_3

    .line 254
    invoke-static {v2}, Lcom/cbs/app/androiddata/RequestHelper;->c(Ljava/lang/String;)V

    .line 257
    :cond_3
    invoke-direct {p0, v2}, Lcom/cbs/app/androiddata/RequestHelper;->a(Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    .line 259
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/cbs/app/androiddata/Md5Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/cbs/app/androiddata/CacheEntry;

    invoke-direct {v2, v0}, Lcom/cbs/app/androiddata/CacheEntry;-><init>(Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 264
    iget-wide v4, p0, Lcom/cbs/app/androiddata/RequestHelper;->i:J

    invoke-virtual {v2, v4, v5}, Lcom/cbs/app/androiddata/CacheEntry;->setTimeToLive(J)V

    .line 266
    iget-boolean v3, p0, Lcom/cbs/app/androiddata/RequestHelper;->h:Z

    invoke-virtual {v2, v3}, Lcom/cbs/app/androiddata/CacheEntry;->setShowIfExpired(Z)V

    .line 267
    invoke-static {v1, v2}, Lcom/cbs/app/androiddata/MemoryCache;->a(Ljava/lang/String;Lcom/cbs/app/androiddata/CacheEntry;)V

    .line 270
    :cond_4
    return-object v0

    .line 244
    :catch_0
    move-exception v2

    .line 245
    const-string v3, "RequestHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 420
    const/4 v1, 0x0

    .line 422
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "HmacSHA1"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 423
    const-string v2, "HmacSHA1"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 424
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 426
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 428
    new-instance v2, Lorg/apache/commons/codec/binary/Hex;

    invoke-direct {v2}, Lorg/apache/commons/codec/binary/Hex;-><init>()V

    invoke-virtual {v2, v0}, Lorg/apache/commons/codec/binary/Hex;->encode([B)[B

    move-result-object v2

    .line 430
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 438
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 437
    goto :goto_0

    .line 433
    :catch_1
    move-exception v0

    .line 434
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 437
    goto :goto_0

    .line 435
    :catch_2
    move-exception v0

    .line 436
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error3: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 560
    const/4 v4, 0x0

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 563
    const-wide/16 v2, 0x0

    .line 564
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 566
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "://"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    sget-object v1, Lcom/cbs/app/androiddata/RequestHelper;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 568
    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 572
    :goto_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 573
    add-long/2addr v0, v6

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/androiddata/RequestHelper;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 579
    const-string v0, "302a6a0d70a7e9b967f91d39fef3e387816e3095925ae4537bce96063311f9c5"

    .line 582
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/cbs/app/androiddata/RequestHelper;->b(Ljava/lang/String;)[B

    move-result-object v0

    const-string v6, "AES"

    invoke-direct {v1, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 583
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 585
    invoke-static {}, Lcom/cbs/app/androiddata/RequestHelper;->b()[B

    move-result-object v6

    .line 586
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 587
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 589
    const-string v1, "UTF-8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 590
    array-length v0, v6

    array-length v1, v7

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 591
    array-length v0, v6

    int-to-short v0, v0

    .line 592
    invoke-static {v0}, Lcom/cbs/app/androiddata/RequestHelper;->a(S)[B

    move-result-object v0

    .line 595
    const/4 v1, 0x0

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    aput-byte v9, v8, v1

    .line 596
    const/4 v1, 0x1

    const/4 v9, 0x1

    aget-byte v0, v0, v9

    aput-byte v0, v8, v1

    .line 598
    array-length v9, v6

    move v1, v5

    move-object v0, v2

    :goto_1
    if-ge v1, v9, :cond_0

    aget-byte v2, v6, v1

    .line 599
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput-byte v2, v8, v10

    .line 600
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 603
    :cond_0
    array-length v2, v7

    move-object v1, v0

    move v0, v5

    :goto_2
    if-ge v0, v2, :cond_1

    aget-byte v5, v7, v0

    .line 604
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-byte v5, v8, v6

    .line 605
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 608
    :cond_1
    invoke-static {v8}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 609
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    .line 625
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "final at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 626
    return-object v0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error1: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 624
    goto :goto_3

    .line 612
    :catch_1
    move-exception v0

    .line 613
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error2: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 624
    goto :goto_3

    .line 614
    :catch_2
    move-exception v0

    .line 615
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error3: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 624
    goto :goto_3

    .line 616
    :catch_3
    move-exception v0

    .line 617
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error4: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 624
    goto :goto_3

    .line 618
    :catch_4
    move-exception v0

    .line 619
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error5: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 624
    goto/16 :goto_3

    .line 620
    :catch_5
    move-exception v0

    .line 621
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error6: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 624
    goto/16 :goto_3

    .line 622
    :catch_6
    move-exception v0

    .line 623
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error7: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto/16 :goto_3

    :cond_2
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 682
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 683
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 685
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 688
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "res head -> "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    goto :goto_0

    .line 691
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 276
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 285
    :goto_0
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    move v4, v1

    move v1, v3

    .line 2107
    :goto_1
    iget-boolean v5, p0, Lcom/cbs/app/androiddata/RequestHelper;->q:Z

    .line 287
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    const/4 v5, 0x7

    if-ge v1, v5, :cond_3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connectedCounter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 290
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 295
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    .line 297
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    .line 283
    goto :goto_0

    .line 291
    :catch_0
    move-exception v4

    .line 292
    const-string v5, "RequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "e.msg: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v4, v3

    .line 295
    goto :goto_3

    :cond_2
    move v4, v3

    .line 300
    :cond_3
    return v4
.end method

.method private static a(S)[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 641
    new-array v1, v3, [B

    .line 642
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 643
    rsub-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x8

    .line 644
    ushr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-object v1
.end method

.method private varargs b(Ljava/net/URL;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 330
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 333
    if-eqz p2, :cond_9

    array-length v0, p2

    if-le v0, v11, :cond_9

    .line 334
    const/4 v0, 0x0

    aget-object v6, p2, v0

    .line 335
    aget-object v0, p2, v11

    .line 337
    iget-boolean v2, p0, Lcom/cbs/app/androiddata/RequestHelper;->j:Z

    if-eqz v2, :cond_0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "at="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_0
    array-length v2, p2

    const/4 v3, 0x3

    if-le v2, v3, :cond_8

    .line 351
    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v2, v1

    .line 353
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "urlStr: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 355
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/androiddata/DataManager;->getConfiguration()Lcom/cbs/app/androiddata/DataManagerConfiguration;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 357
    const-string v1, "http://"

    const-string v3, "https://"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 360
    :goto_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 363
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "hostUrl2: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 367
    const-wide/16 v4, 0x0

    .line 368
    sget-object v1, Lcom/cbs/app/androiddata/RequestHelper;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "serverOffsetLongObj: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 370
    if-eqz v1, :cond_1

    .line 371
    sget-object v1, Lcom/cbs/app/androiddata/RequestHelper;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 373
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "localServerTimeOffset: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 375
    iget-boolean v1, p0, Lcom/cbs/app/androiddata/RequestHelper;->j:Z

    if-nez v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/cbs/app/androiddata/RequestHelper;->m:Lcom/cbs/app/androiddata/model/DeviceData;

    invoke-virtual {v1}, Lcom/cbs/app/androiddata/model/DeviceData;->a()Ljava/lang/String;

    move-result-object v1

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "jsonDeviceData: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 379
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "base64DeviceData: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 382
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    const-wide/16 v8, 0x12c

    add-long/2addr v4, v8

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "expires: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 385
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 386
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "?"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "endpoint: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/cbs/app/androiddata/RequestHelper;->l:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/cbs/app/androiddata/RequestHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "API_KEY: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/cbs/app/androiddata/RequestHelper;->k:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 392
    const-string v8, "Accept"

    const-string v9, "application/json; charset=utf-8"

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v8, "device-data"

    invoke-virtual {v0, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v7, "api-key"

    iget-object v8, p0, Lcom/cbs/app/androiddata/RequestHelper;->k:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v7, "req-expires"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, "signature"

    invoke-virtual {v0, v4, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_2
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 401
    const-string v1, "User-Agent"

    const-string v4, "CBSAndroid"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 403
    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 404
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 405
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 406
    const-string v1, "POST"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 408
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_3
    const-string v1, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 412
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 2740
    :try_start_0
    new-instance v2, Lcom/cbs/app/androiddata/CBSSSLSocketFactory;

    invoke-direct {v2}, Lcom/cbs/app/androiddata/CBSSSLSocketFactory;-><init>()V

    .line 2741
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :cond_4
    :goto_4
    return-object v0

    .line 342
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 386
    :cond_6
    const-string v1, ""

    goto/16 :goto_3

    .line 2743
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_4

    .line 2745
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_4

    :cond_7
    move-object v3, v0

    goto/16 :goto_2

    :cond_8
    move-object v2, v1

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_4
.end method

.method private static b()[B
    .locals 4

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 653
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 654
    const/16 v0, 0x10

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 660
    :goto_0
    return-object v0

    .line 657
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 658
    :goto_1
    const-string v2, "RequestHelper"

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 632
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 633
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 634
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 633
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 637
    :cond_0
    return-object v2
.end method

.method private varargs c(Ljava/net/URL;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 447
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/androiddata/RequestHelper;->b(Ljava/net/URL;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 449
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z

    if-nez v0, :cond_0

    .line 450
    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->f:Z

    if-eqz v0, :cond_2

    .line 3666
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 3667
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3669
    if-eqz v0, :cond_1

    .line 3671
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3672
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "req head -> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    const-string v1, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 508
    :goto_1
    return-object v0

    .line 456
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p2, v0

    .line 457
    array-length v1, p2

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "method: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 459
    const/4 v1, 0x3

    aget-object v5, p2, v1

    .line 460
    if-eqz v0, :cond_3

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postBody: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 3701
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3705
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 3706
    :try_start_3
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v0, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3707
    :try_start_4
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3710
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3712
    if-eqz v3, :cond_3

    .line 3713
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 483
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "responseCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 486
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->f:Z

    if-eqz v0, :cond_4

    .line 487
    invoke-static {v4}, Lcom/cbs/app/androiddata/RequestHelper;->a(Ljava/net/HttpURLConnection;)V

    .line 497
    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/androiddata/Util;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3709
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 3710
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3712
    :cond_5
    if-eqz v3, :cond_6

    .line 3713
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3709
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 725
    if-eqz p0, :cond_0

    .line 726
    const-string v0, "},"

    const-string v1, "},\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 727
    const-string v1, ">"

    const-string v2, ">\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 728
    const-string v1, "\","

    const-string v2, "\",\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 729
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 732
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 115
    .line 116
    if-eqz p1, :cond_9

    array-length v0, p1

    if-lez v0, :cond_9

    .line 119
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    sget-object v6, Lcom/cbs/app/androiddata/RequestHelper;->o:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :try_start_1
    sget-object v0, Lcom/cbs/app/androiddata/RequestHelper;->p:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1311
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hostUrl: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 1312
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1313
    const-string v7, "HEAD"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 1315
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "serverTimeOffset responseCode: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 1316
    const-string v7, "Date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1318
    sub-long/2addr v8, v10

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "serverTimeOffset: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "putting: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " with: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 1321
    sget-object v0, Lcom/cbs/app/androiddata/RequestHelper;->p:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :try_start_4
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->q:Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_3

    .line 221
    :cond_1
    :goto_1
    return-object v1

    .line 1323
    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 216
    :catch_1
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 217
    :goto_2
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    move-object v1, v0

    .line 221
    goto :goto_1

    .line 136
    :cond_3
    const/4 v0, 0x1

    :try_start_7
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/cbs/app/androiddata/Md5Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 143
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v3, v1

    move v0, v2

    move-object v2, v1

    .line 182
    :cond_4
    :goto_4
    :try_start_8
    iget-boolean v4, p0, Lcom/cbs/app/androiddata/RequestHelper;->q:Z

    if-nez v4, :cond_1

    .line 189
    if-eqz v0, :cond_5

    .line 190
    invoke-direct {p0, v5, p1}, Lcom/cbs/app/androiddata/RequestHelper;->a(Ljava/net/URL;[Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_5

    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z

    if-eqz v0, :cond_5

    .line 195
    new-instance v0, Lcom/cbs/app/androiddata/CacheEntry;

    invoke-direct {v0, v2}, Lcom/cbs/app/androiddata/CacheEntry;-><init>(Lcom/cbs/app/androiddata/ResponseModel;)V

    .line 197
    iget-wide v4, p0, Lcom/cbs/app/androiddata/RequestHelper;->i:J

    invoke-virtual {v0, v4, v5}, Lcom/cbs/app/androiddata/CacheEntry;->setTimeToLive(J)V

    .line 199
    iget-boolean v4, p0, Lcom/cbs/app/androiddata/RequestHelper;->h:Z

    invoke-virtual {v0, v4}, Lcom/cbs/app/androiddata/CacheEntry;->setShowIfExpired(Z)V

    .line 200
    invoke-static {v6, v0}, Lcom/cbs/app/androiddata/MemoryCache;->a(Ljava/lang/String;Lcom/cbs/app/androiddata/CacheEntry;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    move-object v0, v2

    .line 204
    :try_start_9
    iget-boolean v2, p0, Lcom/cbs/app/androiddata/RequestHelper;->q:Z

    if-nez v2, :cond_1

    .line 210
    iget-boolean v1, p0, Lcom/cbs/app/androiddata/RequestHelper;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 212
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 213
    invoke-virtual {v3}, Lcom/cbs/app/androiddata/CacheEntry;->getResponseModel()Lcom/cbs/app/androiddata/ResponseModel;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v0

    goto :goto_3

    .line 148
    :cond_6
    :try_start_a
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z

    if-eqz v0, :cond_8

    .line 149
    invoke-static {v6}, Lcom/cbs/app/androiddata/MemoryCache;->a(Ljava/lang/String;)Lcom/cbs/app/androiddata/CacheEntry;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/cbs/app/androiddata/CacheEntry;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "cache valid: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 153
    invoke-virtual {v3}, Lcom/cbs/app/androiddata/CacheEntry;->getResponseModel()Lcom/cbs/app/androiddata/ResponseModel;
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v0

    .line 162
    :try_start_b
    sget-object v7, Lcom/cbs/app/androiddata/RequestHelper;->e:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    sget-object v7, Lcom/cbs/app/androiddata/RequestHelper;->e:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v8, p0, Lcom/cbs/app/androiddata/RequestHelper;->d:Ljava/lang/Class;

    invoke-virtual {v7, v0, v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/ResponseModel;
    :try_end_b
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_1

    move-object v2, v0

    move v0, v4

    .line 176
    :goto_5
    if-nez v3, :cond_4

    .line 177
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "cache miss: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 216
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2

    .line 168
    :catch_3
    move-exception v0

    move v0, v2

    move-object v2, v1

    .line 173
    goto :goto_5

    .line 171
    :catch_4
    move-exception v0

    move v0, v2

    move-object v2, v1

    .line 172
    goto :goto_5

    .line 216
    :catch_5
    move-exception v1

    goto/16 :goto_2

    :cond_7
    move v0, v2

    move-object v2, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    move v0, v2

    move-object v2, v1

    goto/16 :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public getCbsAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/cbs/app/androiddata/ResponseModelListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->a:Lcom/cbs/app/androiddata/ResponseModelListener;

    return-object v0
.end method

.method public getSyncbakDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->m:Lcom/cbs/app/androiddata/model/DeviceData;

    return-object v0
.end method

.method public getSyncbakKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncbakSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 760
    iget-wide v0, p0, Lcom/cbs/app/androiddata/RequestHelper;->i:J

    return-wide v0
.end method

.method public setCbsAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->n:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public setIsCbsEndpont(Z)V
    .locals 0

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->j:Z

    .line 785
    return-void
.end method

.method public setRetry(Z)V
    .locals 0

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->c:Z

    .line 825
    return-void
.end method

.method public setShouldWeLogThisRequest(Z)V
    .locals 0

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->f:Z

    .line 777
    return-void
.end method

.method public setStaleOk(Z)V
    .locals 0

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->h:Z

    .line 757
    return-void
.end method

.method public setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->m:Lcom/cbs/app/androiddata/model/DeviceData;

    .line 809
    return-void
.end method

.method public setSyncbakKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->k:Ljava/lang/String;

    .line 793
    return-void
.end method

.method public setSyncbakSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->l:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setTtl(J)V
    .locals 1

    .prologue
    .line 764
    iput-wide p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->i:J

    .line 765
    return-void
.end method

.method public setUseCache(Z)V
    .locals 0

    .prologue
    .line 768
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/RequestHelper;->g:Z

    .line 769
    return-void
.end method
