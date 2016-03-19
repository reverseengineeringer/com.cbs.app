.class public abstract Lcom/google/a/a/e;
.super Lcom/google/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/e$a;
    }
.end annotation


# static fields
.field static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:J

.field private static u:Lcom/google/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/a/a/e;->t:J

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/a/a/e;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/a/d;-><init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V

    .line 119
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/google/a/a/e;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 267
    :cond_0
    sget-object v0, Lcom/google/a/a/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    sget-object v0, Lcom/google/a/a/e;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/google/a/a/e;->r:Ljava/lang/String;

    .line 395
    :goto_0
    return-object v0

    .line 383
    :cond_0
    sget-object v0, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 388
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 389
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 390
    if-nez v0, :cond_2

    .line 391
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 394
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 395
    sput-object v0, Lcom/google/a/a/e;->r:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/a/a/e;->u:Lcom/google/a/a/k;

    .line 518
    invoke-virtual {v1, p0, p1}, Lcom/google/a/a/k;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/k$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 522
    :catch_1
    move-exception v0

    .line 523
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/a/a/i;)V
    .locals 21

    .prologue
    .line 92
    const-class v4, Lcom/google/a/a/e;

    monitor-enter v4

    :try_start_0
    sget-boolean v2, Lcom/google/a/a/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 95
    :try_start_1
    new-instance v2, Lcom/google/a/a/k;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/google/a/a/k;-><init>(Lcom/google/a/a/i;)V

    sput-object v2, Lcom/google/a/a/e;->u:Lcom/google/a/a/k;

    .line 98
    sput-object p0, Lcom/google/a/a/e;->q:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1540
    :try_start_2
    sget-object v2, Lcom/google/a/a/e;->u:Lcom/google/a/a/k;

    .line 2012
    const-string v3, "dmFUD4yixjCLeIFssMn8+bpXZchyM7ZZjdHVe+zeIw0="

    .line 1540
    invoke-virtual {v2, v3}, Lcom/google/a/a/k;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 1543
    sget-object v2, Lcom/google/a/a/e;->u:Lcom/google/a/a/k;

    .line 2016
    const-string v3, "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"

    .line 1543
    invoke-virtual {v2, v5, v3}, Lcom/google/a/a/k;->a([BLjava/lang/String;)[B

    move-result-object v6

    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 1547
    if-nez v2, :cond_1

    .line 1552
    const-string v2, "dex"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1553
    if-nez v2, :cond_1

    .line 1554
    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2}, Lcom/google/a/a/e$a;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/a/a/k$a; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/google/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1636
    :catch_0
    move-exception v2

    .line 1637
    :try_start_3
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :catch_1
    move-exception v2

    .line 113
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    move-object v3, v2

    .line 1559
    :try_start_4
    const-string v2, "ads"

    const-string v7, ".jar"

    invoke-static {v2, v7, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 1560
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1561
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1562
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/a/a/k$a; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/google/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1566
    :try_start_5
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 1567
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1568
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1570
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v2, v6, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2062
    const-string v6, "13+D8YKo7JA4YclLYFLTkDoLYm79WC6PTAAgd/iaV5l4mfBjRCrtCqwg533KI4Aw"

    .line 1572
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1571
    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 2132
    const-string v8, "52UTclpblbgPZlv7Nj6v0rtDMPh43h349e01ntb69/chxdGasn3EykJHT0GFkNS+"

    .line 1574
    invoke-static {v5, v8}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1573
    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3102
    const-string v9, "PLcKoSXa/7Erhgptf0Tz500+Zs0BLV22dGPCJPuPX1GNC9pyFVkRFks19kPnvjsE"

    .line 1576
    invoke-static {v5, v9}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1575
    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 4082
    const-string v10, "BVu9+hfoVnCGMY+PLQku1FUwfoIHRy389bNZXV62hXZUkceukjyax4oNU/CRj5DY"

    .line 1578
    invoke-static {v5, v10}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1577
    invoke-virtual {v2, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 4142
    const-string v11, "lO2J0nQ8iUbwpSP7x7JVTRl9z6TOAokJraLnSEcbLEoX9aCYnEQiu/7d/0ADK+Kt"

    .line 1580
    invoke-static {v5, v11}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1579
    invoke-virtual {v2, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 5072
    const-string v12, "3STGKgBH0KW29J9eL7SkydCEoMJ5wVqqxnqpt7l1d/UdAE49dT9zzc+xme8GwL0S"

    .line 1582
    invoke-static {v5, v12}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1581
    invoke-virtual {v2, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 5122
    const-string v13, "R75TFH8UxzX6KzwmMOIAiEOgZ3w/LZFVVBMgCkszL4MS7jU6KCq3bFshhYLpG/lm"

    .line 1584
    invoke-static {v5, v13}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1583
    invoke-virtual {v2, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 6112
    const-string v14, "Cd51XF2SemCUJwXZiKeIYddl4xLKDa/a258CP7t9qBxOqbBbeoj3yUZZjpA6+SrQ"

    .line 1586
    invoke-static {v5, v14}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1585
    invoke-virtual {v2, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 7052
    const-string v15, "6Op3Osq/ycP+Tw/h0nZIOiaxu9PqhRTncsN3gXFfkXzFNVbOmFRaKWvs9L9+aZBY"

    .line 1588
    invoke-static {v5, v15}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1587
    invoke-virtual {v2, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 8042
    const-string v16, "/RcUmTOFoVKQmYTx4SXUI3MZ+V8YeEVVMyskmyn2LKriaejeXpUmZci+LjJRw7Qi"

    .line 1590
    move-object/from16 v0, v16

    invoke-static {v5, v0}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1589
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 9032
    const-string v17, "6LQAb447ICiHxbmOtmji3D4hpfwXiEjse1ir9OC50xqyamJ/KbX1/nX8AsL+bHcb"

    .line 1592
    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1591
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 9092
    const-string v18, "OJV6xVIR1eh7tYy9riemmYtkPaU/NBCWvnOl95ehf5cPSRNoet0V98Y76fm3gKIx"

    .line 1594
    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1593
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 10022
    const-string v19, "eHOtFwMll5L1Neq7FYSb/mAfmCK3mjwD+kcR5jCosVyfkrvUDmIwRjmV8+q2NHYn"

    .line 1596
    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1595
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 10066
    const-string v19, "GTcx0b8AlfY1ZowRGVcxzzHzJO55sJlZwAMsaBOasD4="

    .line 1600
    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 1599
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    .line 10136
    const-string v6, "H2mF8ih5ZQ8pxTr+44xGtS8h3iHalDiydTmNQvvB9PE="

    .line 1602
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 1601
    move-object/from16 v0, v19

    invoke-virtual {v8, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    .line 11106
    const-string v6, "6ZHRPIXbN2vTr12hv8v+TAgfU76HlS1m5AiZXFvaSto="

    .line 1604
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 1603
    invoke-virtual {v9, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    .line 12086
    const-string v6, "dx4bb6UNwy6nC3HkcVDqL3Rsfu1d3Z1Pe6GiKK6hZrw="

    .line 1606
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v8, v9

    .line 1605
    invoke-virtual {v10, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    .line 12146
    const-string v6, "yTAAp+clNbNF5Td/QjC7p5K6b33nl9lorC0oZXbsQ+A="

    .line 1608
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/view/MotionEvent;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/util/DisplayMetrics;

    aput-object v10, v8, v9

    .line 1607
    invoke-virtual {v11, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    .line 13076
    const-string v6, "qb4zfYvhFYr4xgO9UX/SM6bCi7jkPggWD8USiOhVgzo="

    .line 1611
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1610
    invoke-virtual {v12, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->i:Ljava/lang/reflect/Method;

    .line 13126
    const-string v6, "SOQAY/Yc8NWIdkLAhBUoY0hR/vEv4aG+caNKA29L5T8="

    .line 1613
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1612
    invoke-virtual {v13, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->j:Ljava/lang/reflect/Method;

    .line 14116
    const-string v6, "MR/p4pF6zrM2yOWsh7Kq5dbwUT5Plh7L/wEZR20DFJc="

    .line 1615
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1614
    invoke-virtual {v14, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->k:Ljava/lang/reflect/Method;

    .line 15056
    const-string v6, "q9p7XgEInfiuZrB/emAOSeQGTPIFmNmpVflkcIcq4bg="

    .line 1617
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1616
    invoke-virtual {v15, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->l:Ljava/lang/reflect/Method;

    .line 16046
    const-string v6, "b42TKHdy7hWPdEEpyazy/kll9Hb0px+6KEorIMPWagk="

    .line 1619
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1618
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->m:Ljava/lang/reflect/Method;

    .line 17036
    const-string v6, "1BCDmMTvausZ3wHdSO9fsXVYA9qCh8/EnuL2Cru5aZ8="

    .line 1622
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1621
    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->n:Ljava/lang/reflect/Method;

    .line 17096
    const-string v6, "foNiPa3eaLdvcAZc5cQJrbbRL+KJK+PxPLQjHS2rrNE="

    .line 1625
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1624
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/google/a/a/e;->o:Ljava/lang/reflect/Method;

    .line 18026
    const-string v6, "wzEQNL6fxZpDqLLHWbHIQaIaTEFKm5CSEQgkOmhzams="

    .line 1628
    invoke-static {v5, v6}, Lcom/google/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v6, v8

    .line 1627
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/a/a/e;->p:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1632
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1633
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1634
    new-instance v5, Ljava/io/File;

    const-string v6, ".jar"

    const-string v7, ".dex"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/a/a/k$a; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/google/a/a/e$a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    :try_start_7
    invoke-static {}, Lcom/google/a/a/e;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/a/a/e;->t:J

    .line 106
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/a/a/e;->c:Z
    :try_end_7
    .catch Lcom/google/a/a/e$a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 1632
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1633
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1634
    new-instance v6, Ljava/io/File;

    const-string v7, ".jar"

    const-string v8, ".dex"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1635
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/a/a/k$a; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/google/a/a/e$a; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1638
    :catch_3
    move-exception v2

    .line 1639
    :try_start_9
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catch Lcom/google/a/a/e$a; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 92
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1640
    :catch_4
    move-exception v2

    .line 1641
    :try_start_a
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1642
    :catch_5
    move-exception v2

    .line 1643
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1644
    :catch_6
    move-exception v2

    .line 1645
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1646
    :catch_7
    move-exception v2

    .line 1651
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catch Lcom/google/a/a/e$a; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method private static b()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 271
    sget-object v0, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 276
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    sget-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;

    .line 450
    :goto_0
    return-object v0

    .line 439
    :cond_0
    sget-object v0, Lcom/google/a/a/e;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 444
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 445
    if-nez v0, :cond_2

    .line 446
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 449
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 450
    sput-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 454
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 310
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 313
    :catch_1
    move-exception v0

    .line 314
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    sget-object v0, Lcom/google/a/a/e;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 291
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 299
    :catch_1
    move-exception v0

    .line 300
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :cond_1
    return-object v0
.end method

.method private static d()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 459
    sget-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 464
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 467
    :catch_1
    move-exception v0

    .line 468
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    sget-object v0, Lcom/google/a/a/e;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 344
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :catch_1
    move-exception v0

    .line 349
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 354
    sget-object v0, Lcom/google/a/a/e;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 359
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->n:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    return-object v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 363
    :catch_1
    move-exception v0

    .line 364
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static f(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Lcom/google/a/a/e;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 411
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 412
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 413
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 414
    :cond_1
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 419
    :catch_1
    move-exception v0

    .line 420
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 416
    :cond_2
    return-object v0
.end method

.method private static g(Landroid/content/Context;)[I
    .locals 4

    .prologue
    .line 473
    sget-object v0, Lcom/google/a/a/e;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 478
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 481
    :catch_1
    move-exception v0

    .line 482
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static h(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 487
    sget-object v0, Lcom/google/a/a/e;->o:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 492
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 495
    :catch_1
    move-exception v0

    .line 496
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static i(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 501
    sget-object v0, Lcom/google/a/a/e;->p:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 506
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 509
    :catch_1
    move-exception v0

    .line 510
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 125
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/a/a/e;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 138
    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V

    .line 140
    sget-wide v2, Lcom/google/a/a/e;->t:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 141
    const/16 v2, 0x11

    sget-wide v4, Lcom/google/a/a/e;->t:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V

    .line 142
    const/16 v0, 0x17

    sget-wide v2, Lcom/google/a/a/e;->t:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_2
    .catch Lcom/google/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :cond_0
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/google/a/a/e;->f(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 150
    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/a/a/e;->a(IJ)V

    .line 151
    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_3
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    :goto_3
    const/16 v0, 0x21

    :try_start_4
    invoke-static {}, Lcom/google/a/a/e;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_4
    .catch Lcom/google/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    :goto_4
    const/16 v0, 0x1b

    :try_start_5
    iget-object v1, p0, Lcom/google/a/a/e;->b:Lcom/google/a/a/i;

    invoke-static {p1, v1}, Lcom/google/a/a/e;->a(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/a/a/e$a; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 169
    :goto_5
    const/16 v0, 0x1d

    :try_start_6
    iget-object v1, p0, Lcom/google/a/a/e;->b:Lcom/google/a/a/i;

    invoke-static {p1, v1}, Lcom/google/a/a/e;->b(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/google/a/a/e$a; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 175
    :goto_6
    :try_start_7
    invoke-static {p1}, Lcom/google/a/a/e;->g(Landroid/content/Context;)[I

    move-result-object v0

    .line 176
    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V

    .line 177
    const/4 v1, 0x6

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_7
    .catch Lcom/google/a/a/e$a; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 183
    :goto_7
    :try_start_8
    invoke-static {p1}, Lcom/google/a/a/e;->h(Landroid/content/Context;)I

    move-result v0

    .line 184
    const/16 v1, 0xc

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_8
    .catch Lcom/google/a/a/e$a; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 190
    :goto_8
    :try_start_9
    invoke-static {p1}, Lcom/google/a/a/e;->i(Landroid/content/Context;)I

    move-result v0

    .line 191
    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_9
    .catch Lcom/google/a/a/e$a; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 197
    :goto_9
    const/16 v0, 0x22

    :try_start_a
    invoke-static {p1}, Lcom/google/a/a/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_a
    .catch Lcom/google/a/a/e$a; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 203
    :goto_a
    const/16 v0, 0x23

    :try_start_b
    invoke-static {p1}, Lcom/google/a/a/e;->e(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_b
    .catch Lcom/google/a/a/e$a; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 210
    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
