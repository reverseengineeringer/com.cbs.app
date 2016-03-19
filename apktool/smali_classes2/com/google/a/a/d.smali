.class public abstract Lcom/google/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/c;


# instance fields
.field protected a:Landroid/util/DisplayMetrics;

.field protected b:Lcom/google/a/a/i;

.field private c:Lcom/google/a/a/j;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/google/a/a/d;->b:Lcom/google/a/a/i;

    .line 162
    iput-object p3, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/j;

    .line 165
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/d;->a:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/d;->a:Landroid/util/DisplayMetrics;

    .line 169
    iget-object v0, p0, Lcom/google/a/a/d;->a:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xef

    const/4 v4, 0x7

    .line 259
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 260
    :try_start_1
    invoke-direct {p0}, Lcom/google/a/a/d;->a()V

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/a/a/d;->b(Landroid/content/Context;)V

    .line 266
    invoke-direct {p0}, Lcom/google/a/a/d;->b()[B

    move-result-object v0

    .line 267
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    array-length v1, v0

    if-nez v1, :cond_0

    .line 270
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 276
    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1365
    :cond_0
    :try_start_5
    array-length v1, v0

    if-le v1, v5, :cond_1

    .line 1367
    invoke-direct {p0}, Lcom/google/a/a/d;->a()V

    .line 1368
    const/16 v0, 0x14

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/d;->a(IJ)V

    .line 1369
    invoke-direct {p0}, Lcom/google/a/a/d;->b()[B

    move-result-object v0

    .line 1373
    :cond_1
    array-length v1, v0

    if-ge v1, v5, :cond_2

    .line 1375
    array-length v1, v0

    rsub-int v1, v1, 0xef

    new-array v1, v1, [B

    .line 1376
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1377
    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v0

    int-to-byte v3, v3

    .line 1378
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1379
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1380
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1391
    :goto_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1392
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1393
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1396
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1397
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1398
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1399
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1400
    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 1404
    new-instance v2, Lcom/google/a/a/b;

    invoke-direct {v2}, Lcom/google/a/a/b;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/a/a/b;->a([B[B)V

    .line 1412
    iget-object v0, p0, Lcom/google/a/a/d;->b:Lcom/google/a/a/i;

    invoke-interface {v0, v1}, Lcom/google/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1384
    :cond_2
    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, v0

    int-to-byte v2, v2

    .line 1385
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1386
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :catch_2
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/j;

    invoke-interface {v0}, Lcom/google/a/a/j;->a()V

    .line 327
    return-void
.end method

.method private b()[B
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/j;

    invoke-interface {v0}, Lcom/google/a/a/j;->b()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 434
    if-eqz p1, :cond_0

    const-string v0, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 438
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 439
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 440
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v0, p0, Lcom/google/a/a/d;->b:Lcom/google/a/a/i;

    invoke-interface {v0, v1}, Lcom/google/a/a/i;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 444
    :cond_0
    return-object p1
.end method

.method protected final a(IJ)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/a/j;->a(IJ)V

    .line 300
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/a/a/j;

    invoke-interface {v0, p1, p2}, Lcom/google/a/a/j;->a(ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method
