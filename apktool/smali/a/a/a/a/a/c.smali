.class public La/a/a/a/a/c;
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
            "La/a/a/a/a/d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 517
    const/16 v0, 0x25

    iput v0, p0, La/a/a/a/a/c;->b:I

    .line 518
    const/16 v0, 0x11

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 519
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 545
    const/16 v0, 0x25

    iput v0, p0, La/a/a/a/a/c;->b:I

    .line 546
    const/16 v0, 0x11

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 547
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    .line 2335
    if-nez p0, :cond_0

    .line 2336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The object to build a hash code for must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2338
    :cond_0
    new-instance v1, La/a/a/a/a/c;

    const/16 v0, 0x11

    const/16 v2, 0x25

    invoke-direct {v1, v0, v2}, La/a/a/a/a/c;-><init>(II)V

    .line 2339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2340
    invoke-static {p0, v0, v1, v3, p1}, La/a/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/c;Z[Ljava/lang/String;)V

    .line 2341
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2342
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2343
    invoke-static {p0, v0, v1, v3, p1}, La/a/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/c;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 2927
    :cond_1
    iget v0, v1, La/a/a/a/a/c;->c:I

    .line 455
    return v0
.end method

.method private a(J)La/a/a/a/a/c;
    .locals 5

    .prologue
    .line 782
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 783
    return-object p0
.end method

.method private static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 488
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_1

    .line 490
    new-instance v1, La/a/a/a/a/d;

    invoke-direct {v1, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    const-class v1, La/a/a/a/a/c;

    monitor-enter v1

    .line 493
    :try_start_0
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 497
    :cond_0
    monitor-exit v1

    .line 499
    :cond_1
    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/c;Z[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "La/a/a/a/a/c;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 173
    .line 1151
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v2

    .line 1152
    if-eqz v2, :cond_0

    new-instance v3, La/a/a/a/a/d;

    invoke-direct {v3, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    :goto_0
    if-eqz v1, :cond_1

    .line 197
    :goto_1
    return-void

    :cond_0
    move v1, v0

    .line 1152
    goto :goto_0

    .line 1467
    :cond_1
    :try_start_0
    const-class v1, La/a/a/a/a/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1468
    :try_start_1
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1469
    sget-object v2, La/a/a/a/a/c;->a:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1471
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    :try_start_2
    invoke-static {}, La/a/a/a/a/c;->a()Ljava/util/Set;

    move-result-object v1

    new-instance v2, La/a/a/a/a/d;

    invoke-direct {v2, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 179
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 180
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 181
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, v4}, La/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-nez v4, :cond_3

    .line 186
    :try_start_3
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    invoke-direct {p2, v3}, La/a/a/a/a/c;->b(Ljava/lang/Object;)La/a/a/a/a/c;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1471
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 196
    :catchall_1
    move-exception v0

    invoke-static {p0}, La/a/a/a/a/c;->a(Ljava/lang/Object;)V

    throw v0

    .line 191
    :catch_0
    move-exception v0

    :try_start_6
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 196
    :cond_4
    invoke-static {p0}, La/a/a/a/a/c;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/Object;)La/a/a/a/a/c;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 816
    if-nez p1, :cond_1

    .line 817
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 847
    :cond_0
    :goto_0
    return-object p0

    .line 820
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 823
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    .line 824
    check-cast p1, [J

    .line 3796
    if-nez p1, :cond_2

    .line 3797
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto :goto_0

    .line 3799
    :cond_2
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 3800
    invoke-direct {p0, v2, v3}, La/a/a/a/a/c;->a(J)La/a/a/a/a/c;

    .line 3799
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 825
    :cond_3
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 826
    check-cast p1, [I

    .line 4758
    if-nez p1, :cond_4

    .line 4759
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto :goto_0

    .line 4761
    :cond_4
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 5744
    iget v3, p0, La/a/a/a/a/c;->c:I

    iget v4, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, La/a/a/a/a/c;->c:I

    .line 4761
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 827
    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    .line 828
    check-cast p1, [S

    .line 5894
    if-nez p1, :cond_6

    .line 5895
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto :goto_0

    .line 5897
    :cond_6
    array-length v0, p1

    :goto_3
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    .line 6880
    iget v3, p0, La/a/a/a/a/c;->c:I

    iget v4, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, La/a/a/a/a/c;->c:I

    .line 5897
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 829
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_9

    .line 830
    check-cast p1, [C

    .line 7657
    if-nez p1, :cond_8

    .line 7658
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto :goto_0

    .line 7660
    :cond_8
    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    .line 8643
    iget v3, p0, La/a/a/a/a/c;->c:I

    iget v4, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, La/a/a/a/a/c;->c:I

    .line 7660
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 831
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    .line 832
    check-cast p1, [B

    .line 9623
    if-nez p1, :cond_a

    .line 9624
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto/16 :goto_0

    .line 9626
    :cond_a
    array-length v0, p1

    :goto_5
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 10607
    iget v3, p0, La/a/a/a/a/c;->c:I

    iget v4, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, La/a/a/a/a/c;->c:I

    .line 9626
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 833
    :cond_b
    instance-of v0, p1, [D

    if-eqz v0, :cond_d

    .line 834
    check-cast p1, [D

    .line 10690
    if-nez p1, :cond_c

    .line 10691
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto/16 :goto_0

    .line 10693
    :cond_c
    array-length v0, p1

    :goto_6
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 11677
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, La/a/a/a/a/c;->a(J)La/a/a/a/a/c;

    .line 10693
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 835
    :cond_d
    instance-of v0, p1, [F

    if-eqz v0, :cond_f

    .line 836
    check-cast p1, [F

    .line 11724
    if-nez p1, :cond_e

    .line 11725
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto/16 :goto_0

    .line 11727
    :cond_e
    array-length v0, p1

    :goto_7
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 12710
    iget v3, p0, La/a/a/a/a/c;->c:I

    iget v4, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, La/a/a/a/a/c;->c:I

    .line 11727
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 837
    :cond_f
    instance-of v0, p1, [Z

    if-eqz v0, :cond_12

    .line 838
    check-cast p1, [Z

    .line 13585
    if-nez p1, :cond_10

    .line 13586
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto/16 :goto_0

    .line 13588
    :cond_10
    array-length v3, p1

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_0

    aget-boolean v0, p1, v2

    .line 14571
    iget v4, p0, La/a/a/a/a/c;->c:I

    iget v5, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v4, v5

    if-eqz v0, :cond_11

    move v0, v1

    :goto_9
    add-int/2addr v0, v4

    iput v0, p0, La/a/a/a/a/c;->c:I

    .line 13588
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 14571
    :cond_11
    const/4 v0, 0x1

    goto :goto_9

    .line 841
    :cond_12
    check-cast p1, [Ljava/lang/Object;

    .line 14860
    if-nez p1, :cond_13

    .line 14861
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto/16 :goto_0

    .line 14863
    :cond_13
    array-length v0, p1

    :goto_a
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 14864
    invoke-direct {p0, v2}, La/a/a/a/a/c;->b(Ljava/lang/Object;)La/a/a/a/a/c;

    .line 14863
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 844
    :cond_14
    iget v0, p0, La/a/a/a/a/c;->c:I

    iget v1, p0, La/a/a/a/a/c;->b:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/a/a/c;->c:I

    goto/16 :goto_0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 953
    .line 14927
    iget v0, p0, La/a/a/a/a/c;->c:I

    .line 953
    return v0
.end method
