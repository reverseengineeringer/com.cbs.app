.class public La/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/b/b",
            "<",
            "La/a/a/a/a/d;",
            "La/a/a/a/a/d;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    .line 224
    return-void
.end method

.method private a(II)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-object p0

    .line 525
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(JJ)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-object p0

    .line 510
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "La/a/a/a/b/b",
            "<",
            "La/a/a/a/a/d;",
            "La/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, La/a/a/a/a/d;

    invoke-direct {v0, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    .line 136
    new-instance v1, La/a/a/a/a/d;

    invoke-direct {v1, p1}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    .line 137
    invoke-static {v0, v1}, La/a/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/b/b",
            "<",
            "La/a/a/a/a/d;",
            "La/a/a/a/a/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 271
    invoke-static {p0, p1, p2}, La/a/a/a/a/b;->b(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-static {p0, p1}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    const-class v1, La/a/a/a/a/b;

    monitor-enter v1

    .line 202
    :try_start_0
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 206
    :cond_0
    monitor-exit v1

    .line 208
    :cond_1
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static varargs b(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 326
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 374
    :goto_0
    return v0

    .line 329
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v3

    .line 330
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 339
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 355
    :cond_3
    :goto_1
    new-instance v4, La/a/a/a/a/b;

    invoke-direct {v4}, La/a/a/a/a/b;-><init>()V

    .line 357
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 358
    invoke-direct {v4, p0, p1}, La/a/a/a/a/b;->c(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2915
    :cond_4
    iget-boolean v0, v4, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 345
    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v1

    .line 349
    goto :goto_1

    :cond_6
    move v0, v3

    .line 353
    goto :goto_0

    .line 1420
    :cond_7
    :try_start_1
    invoke-static {p0, p1}, La/a/a/a/a/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 362
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2154
    :cond_9
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 2155
    invoke-static {p0, p1}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v5

    .line 2156
    invoke-virtual {v5}, La/a/a/a/b/b;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, La/a/a/a/b/b;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, La/a/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v6

    .line 2158
    if-eqz v1, :cond_d

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_d

    :cond_a
    move v1, v2

    .line 1396
    :goto_2
    if-nez v1, :cond_8

    .line 2172
    :try_start_2
    const-class v1, La/a/a/a/a/b;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2173
    :try_start_3
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_b

    .line 2174
    sget-object v5, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2176
    :cond_b
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2178
    :try_start_4
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 2179
    invoke-static {p0, p1}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v5

    .line 2180
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1403
    const/4 v1, 0x1

    invoke-static {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    move v1, v3

    .line 1404
    :goto_3
    array-length v6, v5

    if-ge v1, v6, :cond_7

    iget-boolean v6, v4, La/a/a/a/a/b;->b:Z

    if-eqz v6, :cond_7

    .line 1405
    aget-object v6, v5, v1

    .line 1406
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, La/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-nez v7, :cond_c

    .line 1411
    :try_start_5
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v7, v6}, La/a/a/a/a/b;->c(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1404
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    move v1, v3

    .line 2158
    goto :goto_2

    .line 2176
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1420
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {p0, p1}, La/a/a/a/a/b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 372
    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    .line 1415
    :catch_1
    move-exception v0

    :try_start_9
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_e
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 452
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-object p0

    .line 455
    :cond_1
    if-eq p1, p2, :cond_0

    .line 458
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 2939
    :cond_2
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 462
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    .line 465
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 466
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 3939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 472
    :cond_5
    instance-of v1, p1, [J

    if-eqz v1, :cond_9

    .line 473
    check-cast p1, [J

    check-cast p2, [J

    .line 4671
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 4674
    if-eq p1, p2, :cond_0

    .line 4677
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 4939
    :cond_6
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 4681
    :cond_7
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_8

    .line 5939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 4685
    :cond_8
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 4686
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-direct {p0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    .line 4685
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_9
    instance-of v1, p1, [I

    if-eqz v1, :cond_d

    .line 475
    check-cast p1, [I

    check-cast p2, [I

    .line 6702
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 6705
    if-eq p1, p2, :cond_0

    .line 6708
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    .line 6939
    :cond_a
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 6712
    :cond_b
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_c

    .line 7939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 6716
    :cond_c
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 6717
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    .line 6716
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 476
    :cond_d
    instance-of v1, p1, [S

    if-eqz v1, :cond_13

    .line 477
    check-cast p1, [S

    check-cast p2, [S

    .line 8733
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 8736
    if-eq p1, p2, :cond_0

    .line 8739
    if-eqz p1, :cond_e

    if-nez p2, :cond_f

    .line 8939
    :cond_e
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 8743
    :cond_f
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_10

    .line 9939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    :cond_10
    move v1, v0

    .line 8747
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, La/a/a/a/a/b;->b:Z

    if-eqz v2, :cond_0

    .line 8748
    aget-short v2, p1, v1

    aget-short v4, p2, v1

    .line 10537
    iget-boolean v5, p0, La/a/a/a/a/b;->b:Z

    if-eqz v5, :cond_11

    .line 10540
    if-ne v2, v4, :cond_12

    move v2, v3

    :goto_4
    iput-boolean v2, p0, La/a/a/a/a/b;->b:Z

    .line 8747
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    move v2, v0

    .line 10540
    goto :goto_4

    .line 478
    :cond_13
    instance-of v1, p1, [C

    if-eqz v1, :cond_19

    .line 479
    check-cast p1, [C

    check-cast p2, [C

    .line 10764
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 10767
    if-eq p1, p2, :cond_0

    .line 10770
    if-eqz p1, :cond_14

    if-nez p2, :cond_15

    .line 10939
    :cond_14
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 10774
    :cond_15
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_16

    .line 11939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    :cond_16
    move v1, v0

    .line 10778
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, La/a/a/a/a/b;->b:Z

    if-eqz v2, :cond_0

    .line 10779
    aget-char v2, p1, v1

    aget-char v4, p2, v1

    .line 12552
    iget-boolean v5, p0, La/a/a/a/a/b;->b:Z

    if-eqz v5, :cond_17

    .line 12555
    if-ne v2, v4, :cond_18

    move v2, v3

    :goto_6
    iput-boolean v2, p0, La/a/a/a/a/b;->b:Z

    .line 10778
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    move v2, v0

    .line 12555
    goto :goto_6

    .line 480
    :cond_19
    instance-of v1, p1, [B

    if-eqz v1, :cond_1f

    .line 481
    check-cast p1, [B

    check-cast p2, [B

    .line 12795
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 12798
    if-eq p1, p2, :cond_0

    .line 12801
    if-eqz p1, :cond_1a

    if-nez p2, :cond_1b

    .line 12939
    :cond_1a
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 12805
    :cond_1b
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_1c

    .line 13939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    :cond_1c
    move v1, v0

    .line 12809
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, La/a/a/a/a/b;->b:Z

    if-eqz v2, :cond_0

    .line 12810
    aget-byte v2, p1, v1

    aget-byte v4, p2, v1

    .line 14567
    iget-boolean v5, p0, La/a/a/a/a/b;->b:Z

    if-eqz v5, :cond_1d

    .line 14570
    if-ne v2, v4, :cond_1e

    move v2, v3

    :goto_8
    iput-boolean v2, p0, La/a/a/a/a/b;->b:Z

    .line 12809
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    move v2, v0

    .line 14570
    goto :goto_8

    .line 482
    :cond_1f
    instance-of v1, p1, [D

    if-eqz v1, :cond_24

    .line 483
    check-cast p1, [D

    check-cast p2, [D

    .line 14826
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 14829
    if-eq p1, p2, :cond_0

    .line 14832
    if-eqz p1, :cond_20

    if-nez p2, :cond_21

    .line 14939
    :cond_20
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 14836
    :cond_21
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_22

    .line 15939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 14840
    :cond_22
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 14841
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    .line 16588
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_23

    .line 16591
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    .line 14840
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 484
    :cond_24
    instance-of v1, p1, [F

    if-eqz v1, :cond_29

    .line 485
    check-cast p1, [F

    check-cast p2, [F

    .line 16857
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 16860
    if-eq p1, p2, :cond_0

    .line 16863
    if-eqz p1, :cond_25

    if-nez p2, :cond_26

    .line 16939
    :cond_25
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 16867
    :cond_26
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_27

    .line 17939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 16871
    :cond_27
    :goto_a
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 16872
    aget v1, p1, v0

    aget v2, p2, v0

    .line 18608
    iget-boolean v3, p0, La/a/a/a/a/b;->b:Z

    if-eqz v3, :cond_28

    .line 18611
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-direct {p0, v1, v2}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    .line 16871
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 486
    :cond_29
    instance-of v1, p1, [Z

    if-eqz v1, :cond_2f

    .line 487
    check-cast p1, [Z

    check-cast p2, [Z

    .line 18888
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 18891
    if-eq p1, p2, :cond_0

    .line 18894
    if-eqz p1, :cond_2a

    if-nez p2, :cond_2b

    .line 18939
    :cond_2a
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 18898
    :cond_2b
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2c

    .line 19939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    :cond_2c
    move v1, v0

    .line 18902
    :goto_b
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, La/a/a/a/a/b;->b:Z

    if-eqz v2, :cond_0

    .line 18903
    aget-boolean v2, p1, v1

    aget-boolean v4, p2, v1

    .line 20622
    iget-boolean v5, p0, La/a/a/a/a/b;->b:Z

    if-eqz v5, :cond_2d

    .line 20625
    if-ne v2, v4, :cond_2e

    move v2, v3

    :goto_c
    iput-boolean v2, p0, La/a/a/a/a/b;->b:Z

    .line 18902
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2e
    move v2, v0

    .line 20625
    goto :goto_c

    .line 490
    :cond_2f
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 20640
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 20643
    if-eq p1, p2, :cond_0

    .line 20646
    if-eqz p1, :cond_30

    if-nez p2, :cond_31

    .line 20939
    :cond_30
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 20650
    :cond_31
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_32

    .line 21939
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto/16 :goto_0

    .line 20654
    :cond_32
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 20655
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, La/a/a/a/a/b;->c(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    .line 20654
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method
