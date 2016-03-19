.class public abstract Lcom/a/a/a/e;
.super Lcom/a/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/e$a;
    }
.end annotation


# static fields
.field static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:J

.field private static r:Lcom/a/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/a/a/a/e;->q:J

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/a/e;->d:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/a/a/a/i;Lcom/a/a/a/j;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/a/d;-><init>(Landroid/content/Context;Lcom/a/a/a/i;Lcom/a/a/a/j;)V

    .line 115
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/a/a/a/i;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    sget-object v0, Lcom/a/a/a/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/a/a/a/e;->o:Ljava/lang/String;

    .line 322
    :goto_0
    return-object v0

    .line 310
    :cond_0
    sget-object v0, Lcom/a/a/a/e;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 315
    :cond_1
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 316
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 317
    if-nez v0, :cond_2

    .line 318
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 322
    sput-object v0, Lcom/a/a/a/e;->o:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 325
    :catch_1
    move-exception v0

    .line 326
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/a/a/a/e;->r:Lcom/a/a/a/k;

    .line 417
    invoke-virtual {v1, p0, p1}, Lcom/a/a/a/k;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/a/a/a/k$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lcom/a/a/a/e;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 280
    :cond_0
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 285
    :cond_1
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 286
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    return-object v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 290
    :catch_1
    move-exception v0

    .line 291
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/a/a/a/i;)V
    .locals 17

    .prologue
    .line 88
    const-class v4, Lcom/a/a/a/e;

    monitor-enter v4

    :try_start_0
    sget-boolean v2, Lcom/a/a/a/e;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 91
    :try_start_1
    new-instance v2, Lcom/a/a/a/k;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/a/a/a/k;-><init>(Lcom/a/a/a/i;)V

    sput-object v2, Lcom/a/a/a/e;->r:Lcom/a/a/a/k;

    .line 94
    sput-object p0, Lcom/a/a/a/e;->n:Ljava/lang/String;
    :try_end_1
    .catch Lcom/a/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1439
    :try_start_2
    sget-object v2, Lcom/a/a/a/e;->r:Lcom/a/a/a/k;

    .line 2012
    const-string v3, "0ZnY30Jj0poskMNptPzOAUAoLJ3M+w62lTbrjj2yJsw="

    .line 1439
    invoke-virtual {v2, v3}, Lcom/a/a/a/k;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 1442
    sget-object v2, Lcom/a/a/a/e;->r:Lcom/a/a/a/k;

    .line 2016
    const-string v3, "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"

    .line 1442
    invoke-virtual {v2, v5, v3}, Lcom/a/a/a/k;->a([BLjava/lang/String;)[B

    move-result-object v6

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 1446
    if-nez v2, :cond_1

    .line 1451
    const-string v2, "dex"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 1452
    if-nez v2, :cond_1

    .line 1453
    new-instance v2, Lcom/a/a/a/e$a;

    invoke-direct {v2}, Lcom/a/a/a/e$a;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/a/a/a/k$a; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/a/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1516
    :catch_0
    move-exception v2

    .line 1517
    :try_start_3
    new-instance v3, Lcom/a/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Lcom/a/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :catch_1
    move-exception v2

    .line 109
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    move-object v3, v2

    .line 1458
    :try_start_4
    const-string v2, "ads"

    const-string v7, ".jar"

    invoke-static {v2, v7, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 1459
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1460
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1461
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/a/a/a/k$a; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/a/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1465
    :try_start_5
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 1466
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1467
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v2, v6, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2032
    const-string v6, "GNSTGQkASBJjdoPM3qUZH+W2cvDZ7y4NSc+DyQCptSITAZDDS+1XDHr50mVb5dta"

    .line 1471
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1470
    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 2092
    const-string v8, "x/c7MN7jOYlvQanQaA5kQ24VOO0cWRdM+3FsUpc5WCSkluZU++04QU+SPpASlM4c"

    .line 1473
    invoke-static {v5, v8}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1472
    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 3062
    const-string v9, "IpYbUFX/1Lq2SdNyrjP+SHtn/rxlRtA0Jr4BRMouE4VUk9kzzTKYpG0eF3RKbNRf"

    .line 1475
    invoke-static {v5, v9}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1474
    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 4052
    const-string v10, "VcUUwPGeTemkhZBWfA0dzhopeQMk8UmWNJUp1plwq5TYklBYIH8FmibbEPRb2/t8"

    .line 1477
    invoke-static {v5, v10}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1476
    invoke-virtual {v2, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 4102
    const-string v11, "6IoSJDu5YS+GiM9TLtm7+1wlH+WgGGjJALXDzx/p53YFoQ2QIFAw2DuEpBbGX4YM"

    .line 1479
    invoke-static {v5, v11}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1478
    invoke-virtual {v2, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 5042
    const-string v12, "2OzZqyjDGGeVPCdRn0SZjweOlEmTVEH/2I6FOErTAoqB/rBHpia1X11yzALkJV9Q"

    .line 1481
    invoke-static {v5, v12}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1480
    invoke-virtual {v2, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 5082
    const-string v13, "ubB2mzU1bFqDkuDzq0sZsy5gTUocAqqB2dNG1iii3lWzkYnY52nQ5klBR3XLwNL8"

    .line 1483
    invoke-static {v5, v13}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1482
    invoke-virtual {v2, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 6072
    const-string v14, "jlEcTd2rIYHNtjOJXeVHSY0waWduxdbpsAmB61jhLKM3J/X8S64pKP93o8lehC2U"

    .line 1485
    invoke-static {v5, v14}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1484
    invoke-virtual {v2, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 7022
    const-string v15, "YrbyZSSP4U9hc8jE2WPmFNgTN1z05H0vH9oE1FybYkm+ba2d6Fvv2ns+bDgjjsxY"

    .line 1487
    invoke-static {v5, v15}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1486
    invoke-virtual {v2, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 7036
    const-string v15, "pOBJLvaCxA4swTauHiPD1b5OmPvpwKqFh4DwgWd/rOU="

    .line 1491
    invoke-static {v5, v15}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    .line 1490
    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->e:Ljava/lang/reflect/Method;

    .line 7096
    const-string v6, "vvMYIcVorTU4oAddtqAIlXJgjNIJa8QVKq9612ASc1o="

    .line 1493
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    .line 1492
    invoke-virtual {v8, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->f:Ljava/lang/reflect/Method;

    .line 8066
    const-string v6, "1lvTXic8n3R7JEjgipB5q7vdz0HYYFQ3eI4rvSKT9fQ="

    .line 1495
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 1494
    invoke-virtual {v9, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->g:Ljava/lang/reflect/Method;

    .line 9056
    const-string v6, "IFcgchRiblF6SvZ04Mf3r4gD0jW7v92DEzsK/lIIQ6w="

    .line 1497
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v8, v9

    .line 1496
    invoke-virtual {v10, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->h:Ljava/lang/reflect/Method;

    .line 9106
    const-string v6, "AwYgqnENj21N72E08XR4MNWn/iMPoCZb222U80unU2g="

    .line 1499
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/view/MotionEvent;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/util/DisplayMetrics;

    aput-object v10, v8, v9

    .line 1498
    invoke-virtual {v11, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->i:Ljava/lang/reflect/Method;

    .line 10046
    const-string v6, "0iKk4oNP7JyNIYKEnVUDJ0DrlhQRJqtEhvwQRx6qZQc="

    .line 1502
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1501
    invoke-virtual {v12, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->j:Ljava/lang/reflect/Method;

    .line 10086
    const-string v6, "SyRjv4WYiA6ZWBzCfu5oNPjxfQ3TS9ELKWyLIoXKw88="

    .line 1504
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1503
    invoke-virtual {v13, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->k:Ljava/lang/reflect/Method;

    .line 11076
    const-string v6, "lpxMXoKWdChv8Zrq7NbZEHaw06Cqv88mVVhozulIi9E="

    .line 1506
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 1505
    invoke-virtual {v14, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/a/a/a/e;->l:Ljava/lang/reflect/Method;

    .line 12026
    const-string v6, "kRR7rs7/67KmJnHc39cGYo9VSbtX8D+K9iBRzr+ZWHw="

    .line 1508
    invoke-static {v5, v6}, Lcom/a/a/a/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v6, v8

    .line 1507
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/a/a/a/e;->m:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1512
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1514
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
    .catch Lcom/a/a/a/k$a; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/a/a/a/e$a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 100
    :try_start_7
    invoke-static {}, Lcom/a/a/a/e;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/a/a/a/e;->q:J

    .line 102
    const/4 v2, 0x1

    sput-boolean v2, Lcom/a/a/a/e;->d:Z
    :try_end_7
    .catch Lcom/a/a/a/e$a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 1512
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1513
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1514
    new-instance v6, Ljava/io/File;

    const-string v7, ".jar"

    const-string v8, ".dex"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1515
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/a/a/a/k$a; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/a/a/a/e$a; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1518
    :catch_3
    move-exception v2

    .line 1519
    :try_start_9
    new-instance v3, Lcom/a/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catch Lcom/a/a/a/e$a; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 88
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1520
    :catch_4
    move-exception v2

    .line 1521
    :try_start_a
    new-instance v3, Lcom/a/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1522
    :catch_5
    move-exception v2

    .line 1523
    new-instance v3, Lcom/a/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1524
    :catch_6
    move-exception v2

    .line 1525
    new-instance v3, Lcom/a/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1526
    :catch_7
    move-exception v2

    .line 1531
    new-instance v3, Lcom/a/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catch Lcom/a/a/a/e$a; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/a/a/a/e;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 225
    :cond_0
    sget-object v0, Lcom/a/a/a/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/a/a/a/i;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 362
    sget-object v0, Lcom/a/a/a/e;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/a/a/a/e;->p:Ljava/lang/String;

    .line 377
    :goto_0
    return-object v0

    .line 366
    :cond_0
    sget-object v0, Lcom/a/a/a/e;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 371
    :cond_1
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 372
    if-nez v0, :cond_2

    .line 373
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 376
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/a/a/a/i;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 377
    sput-object v0, Lcom/a/a/a/e;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 380
    :catch_1
    move-exception v0

    .line 381
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 229
    sget-object v0, Lcom/a/a/a/e;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 234
    :cond_0
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->e:Ljava/lang/reflect/Method;

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

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 237
    :catch_1
    move-exception v0

    .line 238
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/a/a/a/e;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 249
    :cond_0
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :cond_1
    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    sget-object v0, Lcom/a/a/a/e;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 268
    :cond_0
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->g:Ljava/lang/reflect/Method;

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

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :catch_1
    move-exception v0

    .line 272
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(Landroid/content/Context;)Ljava/util/ArrayList;
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
    .line 332
    sget-object v0, Lcom/a/a/a/e;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 338
    :cond_0
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 339
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 340
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 341
    :cond_1
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 346
    :catch_1
    move-exception v0

    .line 347
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :cond_2
    return-object v0
.end method

.method private static e()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 386
    sget-object v0, Lcom/a/a/a/e;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 391
    :cond_0
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->f:Ljava/lang/reflect/Method;

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

    .line 392
    :catch_0
    move-exception v0

    .line 393
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 394
    :catch_1
    move-exception v0

    .line 395
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e(Landroid/content/Context;)[I
    .locals 4

    .prologue
    .line 400
    sget-object v0, Lcom/a/a/a/e;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/a/e$a;-><init>()V

    throw v0

    .line 405
    :cond_0
    :try_start_0
    sget-object v0, Lcom/a/a/a/e;->m:Ljava/lang/reflect/Method;

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

    .line 406
    :catch_0
    move-exception v0

    .line 407
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 408
    :catch_1
    move-exception v0

    .line 409
    new-instance v1, Lcom/a/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/a/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 186
    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/a/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/a/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    :goto_1
    const/16 v0, 0x19

    :try_start_2
    invoke-static {}, Lcom/a/a/a/e;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/e;->a(IJ)V
    :try_end_2
    .catch Lcom/a/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/a/a/a/e;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/a/a/a/e;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/a/a/a/e;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/a/a/a/e;->a(IJ)V

    .line 206
    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/a/a/a/e;->a(IJ)V

    .line 207
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 209
    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/a/a/a/e;->a(IJ)V
    :try_end_3
    .catch Lcom/a/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 217
    :cond_0
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 121
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/a/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/a/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/a/a/a/e;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 134
    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/a/a/a/e;->a(IJ)V

    .line 136
    sget-wide v2, Lcom/a/a/a/e;->q:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 137
    const/16 v2, 0x11

    sget-wide v4, Lcom/a/a/a/e;->q:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/a/a/a/e;->a(IJ)V

    .line 138
    const/16 v0, 0x17

    sget-wide v2, Lcom/a/a/a/e;->q:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/e;->a(IJ)V
    :try_end_2
    .catch Lcom/a/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :cond_0
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/a/a/a/e;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 146
    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/a/a/a/e;->a(IJ)V

    .line 147
    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/a/a/a/e;->a(IJ)V
    :try_end_3
    .catch Lcom/a/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 153
    :goto_3
    const/16 v0, 0x21

    :try_start_4
    invoke-static {}, Lcom/a/a/a/e;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/e;->a(IJ)V
    :try_end_4
    .catch Lcom/a/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    :goto_4
    const/16 v0, 0x1b

    :try_start_5
    iget-object v1, p0, Lcom/a/a/a/e;->c:Lcom/a/a/a/i;

    invoke-static {p1, v1}, Lcom/a/a/a/e;->a(Landroid/content/Context;Lcom/a/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/a/a/a/e$a; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 165
    :goto_5
    const/16 v0, 0x1d

    :try_start_6
    iget-object v1, p0, Lcom/a/a/a/e;->c:Lcom/a/a/a/i;

    invoke-static {p1, v1}, Lcom/a/a/a/e;->b(Landroid/content/Context;Lcom/a/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/e;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/a/a/a/e$a; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 171
    :goto_6
    :try_start_7
    invoke-static {p1}, Lcom/a/a/a/e;->e(Landroid/content/Context;)[I

    move-result-object v0

    .line 172
    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/a/a/a/e;->a(IJ)V

    .line 173
    const/4 v1, 0x6

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/a/a/a/e;->a(IJ)V
    :try_end_7
    .catch Lcom/a/a/a/e$a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 180
    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method
