.class public abstract Lcom/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/c;


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Landroid/util/DisplayMetrics;

.field protected c:Lcom/a/a/a/i;

.field private d:Lcom/a/a/a/j;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/a/a/a/i;Lcom/a/a/a/j;)V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/i;

    .line 156
    iput-object p3, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/j;

    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/d;->b:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/d;->b:Landroid/util/DisplayMetrics;

    .line 163
    iget-object v0, p0, Lcom/a/a/a/d;->b:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xef

    const/16 v5, 0x20

    const/4 v4, 0x7

    .line 253
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 254
    :try_start_1
    invoke-direct {p0}, Lcom/a/a/a/d;->b()V

    .line 255
    if-eqz p3, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/a/a/a/d;->a()V

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/d;->c()[B

    move-result-object v0

    .line 261
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    array-length v1, v0

    if-nez v1, :cond_1

    .line 264
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 279
    :goto_1
    return-object v0

    .line 258
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/a/a/a/d;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 270
    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1359
    :cond_1
    :try_start_5
    array-length v1, v0

    if-le v1, v6, :cond_2

    .line 1361
    invoke-direct {p0}, Lcom/a/a/a/d;->b()V

    .line 1362
    const/16 v0, 0x14

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/d;->a(IJ)V

    .line 1363
    invoke-direct {p0}, Lcom/a/a/a/d;->c()[B

    move-result-object v0

    .line 1367
    :cond_2
    array-length v1, v0

    if-ge v1, v6, :cond_5

    .line 1369
    array-length v1, v0

    rsub-int v1, v1, 0xef

    new-array v1, v1, [B

    .line 1370
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1371
    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v0

    int-to-byte v3, v3

    .line 1372
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1373
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1374
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1385
    :goto_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1386
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1387
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1390
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1391
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1392
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1394
    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 1398
    new-instance v2, Lcom/a/a/a/b;

    invoke-direct {v2}, Lcom/a/a/a/b;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/a/a/a/b;->a([B[B)V

    .line 1401
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1411
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 1413
    const/4 v0, 0x0

    const/16 v2, 0x20

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1418
    :cond_3
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1419
    new-instance v2, Lcom/a/b/a/a;

    invoke-direct {v2, v0}, Lcom/a/b/a/a;-><init>([B)V

    invoke-virtual {v2, v1}, Lcom/a/b/a/a;->a([B)V

    .line 1406
    :cond_4
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/i;

    invoke-interface {v0, v1}, Lcom/a/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1378
    :cond_5
    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, v0

    int-to-byte v2, v2

    .line 1379
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1380
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_2

    .line 273
    :catch_1
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 276
    :catch_2
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/j;

    invoke-interface {v0}, Lcom/a/a/a/j;->a()V

    .line 321
    return-void
.end method

.method private c()[B
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/j;

    invoke-interface {v0}, Lcom/a/a/a/j;->b()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method protected final a(IJ)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/a/a/a/j;->a(IJ)V

    .line 294
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/j;

    invoke-interface {v0, p1, p2}, Lcom/a/a/a/j;->a(ILjava/lang/String;)V

    .line 308
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method
