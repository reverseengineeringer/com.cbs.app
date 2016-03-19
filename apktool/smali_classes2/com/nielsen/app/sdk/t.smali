.class final Lcom/nielsen/app/sdk/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static f:Lcom/nielsen/app/sdk/t;

.field private static i:Z


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/s;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nielsen/app/sdk/b;

.field private e:Lcom/nielsen/app/sdk/w;

.field private g:Lcom/nielsen/app/sdk/v;

.field private h:Lcom/nielsen/app/sdk/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IMPRESSION"

    aput-object v1, v0, v3

    const-string v1, "VIEW"

    aput-object v1, v0, v2

    const-string v1, "PATTERN"

    aput-object v1, v0, v4

    const-string v1, "STREAM"

    aput-object v1, v0, v5

    const-string v1, "DAYPART"

    aput-object v1, v0, v6

    sput-object v0, Lcom/nielsen/app/sdk/t;->a:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ID3RAW"

    aput-object v1, v0, v3

    const-string v1, "DPR"

    aput-object v1, v0, v2

    const-string v1, "DPRID3"

    aput-object v1, v0, v4

    const-string v1, "MTVR"

    aput-object v1, v0, v5

    const-string v1, "OCR"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "LEGACY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DRM"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nielsen/app/sdk/t;->b:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/t;->f:Lcom/nielsen/app/sdk/t;

    .line 489
    sput-boolean v3, Lcom/nielsen/app/sdk/t;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    .line 113
    iput-object v1, p0, Lcom/nielsen/app/sdk/t;->d:Lcom/nielsen/app/sdk/b;

    .line 114
    iput-object v1, p0, Lcom/nielsen/app/sdk/t;->e:Lcom/nielsen/app/sdk/w;

    .line 398
    iput-object v1, p0, Lcom/nielsen/app/sdk/t;->g:Lcom/nielsen/app/sdk/v;

    .line 399
    iput-object v1, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;

    .line 81
    return-void
.end method

.method public static declared-synchronized a()Lcom/nielsen/app/sdk/t;
    .locals 7

    .prologue
    .line 124
    const-class v6, Lcom/nielsen/app/sdk/t;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/t;->f:Lcom/nielsen/app/sdk/t;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/nielsen/app/sdk/t;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/t;-><init>()V

    .line 128
    sput-object v0, Lcom/nielsen/app/sdk/t;->f:Lcom/nielsen/app/sdk/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    :try_start_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v1

    iput-object v1, v0, Lcom/nielsen/app/sdk/t;->d:Lcom/nielsen/app/sdk/b;

    .line 1093
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v1

    iput-object v1, v0, Lcom/nielsen/app/sdk/t;->e:Lcom/nielsen/app/sdk/w;

    .line 1105
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/t;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/nielsen/app/sdk/t;->f:Lcom/nielsen/app/sdk/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v0

    .line 1108
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/16 v3, 0x45

    :try_start_3
    const-string v4, "Could not initialize the processor manager object"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private declared-synchronized a(ILjava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->e:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->e:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v11

    .line 396
    :goto_0
    monitor-exit p0

    return v0

    .line 275
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/nielsen/app/sdk/o;->j()Lcom/nielsen/app/sdk/a;

    move-result-object v1

    .line 278
    const/4 v0, 0x1

    new-array v5, v0, [C

    const/4 v0, 0x0

    const/16 v2, 0x20

    aput-char v2, v5, v0

    .line 279
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->d:Lcom/nielsen/app/sdk/b;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v5}, Lcom/nielsen/app/sdk/b;->a(J[C)J

    move-result-wide v6

    .line 281
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/a;->c()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-nez v0, :cond_2

    move v0, v10

    .line 282
    :goto_1
    iget-object v2, p0, Lcom/nielsen/app/sdk/t;->d:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/b;->e()Z

    move-result v12

    .line 286
    if-eqz v0, :cond_6

    if-eqz v12, :cond_6

    .line 288
    new-instance v0, Lcom/nielsen/app/sdk/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    aget-char v8, v5, v8

    move v5, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nielsen/app/sdk/a$b;-><init>(Lcom/nielsen/app/sdk/a;JIIJCLjava/lang/String;)V

    .line 290
    :goto_2
    iget-object v1, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    .line 292
    iget-object v1, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nielsen/app/sdk/s;

    .line 293
    if-eqz v1, :cond_4

    .line 295
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/s;->a()I

    move-result v2

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 343
    const/16 v1, 0x8

    const/16 v2, 0x57

    const-string v3, "Inexpected message type (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move v0, v11

    .line 281
    goto :goto_1

    .line 300
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    .line 346
    :cond_3
    :pswitch_2
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/s;->b()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    .line 347
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :pswitch_3
    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    .line 325
    :sswitch_0
    :try_start_2
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/s;->e()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 351
    :cond_4
    const/16 v1, 0x8

    const/16 v2, 0x45

    const-string v3, "Could not send message(%s) to processor id(%d), it is not available"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 355
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/t;->g:Lcom/nielsen/app/sdk/v;

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;

    move v0, v10

    .line 358
    goto/16 :goto_0

    .line 361
    :cond_6
    packed-switch p1, :pswitch_data_2

    .line 385
    :cond_7
    :goto_4
    :pswitch_4
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v2, v1

    move v5, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/nielsen/app/sdk/a;->a(IIIJLjava/lang/String;)J

    .line 387
    if-eqz v12, :cond_9

    .line 389
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->g:Lcom/nielsen/app/sdk/v;

    if-nez v0, :cond_8

    .line 390
    new-instance v0, Lcom/nielsen/app/sdk/v;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/v;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/t;->g:Lcom/nielsen/app/sdk/v;

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->g:Lcom/nielsen/app/sdk/v;

    if-eqz v0, :cond_9

    .line 393
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->g:Lcom/nielsen/app/sdk/v;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/v;->b()V

    :cond_9
    move v0, v10

    .line 396
    goto/16 :goto_0

    .line 371
    :pswitch_5
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;

    if-nez v0, :cond_a

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/t;->a(I)Lcom/nielsen/app/sdk/s;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;

    .line 374
    :cond_a
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;

    if-eqz v0, :cond_7

    .line 376
    const/16 v0, 0x49

    const-string v2, "Send ID3 to default processor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 378
    new-instance v0, Lcom/nielsen/app/sdk/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    aget-char v8, v5, v8

    move v5, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nielsen/app/sdk/a$b;-><init>(Lcom/nielsen/app/sdk/a;JIIJCLjava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/s;->b()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    .line 380
    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 300
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 361
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 487
    sget-boolean v0, Lcom/nielsen/app/sdk/t;->i:Z

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/nielsen/app/sdk/s;
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/s;

    .line 172
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/s;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 437
    sget-boolean v1, Lcom/nielsen/app/sdk/t;->i:Z

    if-nez v1, :cond_0

    .line 449
    :goto_0
    return v0

    .line 445
    :cond_0
    const/16 v1, 0x49

    const-string v2, "PLAYHEAD: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 449
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/nielsen/app/sdk/t;->a(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 417
    const/16 v0, 0x49

    const-string v1, "METADATA: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 419
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nielsen/app/sdk/t;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nielsen/app/sdk/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 466
    sget-boolean v1, Lcom/nielsen/app/sdk/t;->i:Z

    if-nez v1, :cond_0

    .line 476
    :goto_0
    return v0

    .line 474
    :cond_0
    const/16 v1, 0x49

    const-string v2, "ID3: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 476
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/nielsen/app/sdk/t;->a(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 6

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v0, 0x0

    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 221
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->d:Lcom/nielsen/app/sdk/b;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/nielsen/app/sdk/b;->a(J[C)J

    move-result-wide v2

    .line 223
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/s;

    .line 224
    const/4 v5, 0x0

    aget-char v5, v1, v5

    invoke-virtual {v0, v2, v3, v5}, Lcom/nielsen/app/sdk/s;->a(JC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/t;->h:Lcom/nielsen/app/sdk/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 507
    const/16 v0, 0x49

    const-string v1, "PLAYINFO: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-direct {p0, v4, p1}, Lcom/nielsen/app/sdk/t;->a(ILjava/lang/String;)Z

    move-result v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    sput-boolean v4, Lcom/nielsen/app/sdk/t;->i:Z

    .line 513
    :cond_0
    return v0
.end method

.method public final close()V
    .locals 6

    .prologue
    .line 155
    .line 1142
    :try_start_0
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/t;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :goto_0
    return-void

    .line 1145
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/16 v3, 0x45

    const-string v4, "Problems while closing all the processors"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final declared-synchronized d()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nielsen/app/sdk/t;->d:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b;->b()Lcom/nielsen/app/sdk/b$c;

    move-result-object v1

    .line 240
    if-nez v1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No parameters management object on the configuration object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b$c;->d()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 244
    :goto_0
    if-ge v0, v2, :cond_1

    .line 248
    :try_start_2
    new-instance v3, Lcom/nielsen/app/sdk/s;

    invoke-direct {v3, v0, v1}, Lcom/nielsen/app/sdk/s;-><init>(ILcom/nielsen/app/sdk/b$c;)V

    .line 249
    invoke-virtual {v3}, Lcom/nielsen/app/sdk/s;->start()V

    .line 250
    iget-object v4, p0, Lcom/nielsen/app/sdk/t;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v3

    const/4 v3, 0x7

    const/16 v4, 0x45

    :try_start_3
    const-string v5, "Could not start data processor for index(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 256
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final f()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 529
    const/16 v0, 0x49

    const-string v1, "SESSION STOP"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 531
    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/nielsen/app/sdk/t;->a(ILjava/lang/String;)Z

    move-result v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    sput-boolean v3, Lcom/nielsen/app/sdk/t;->i:Z

    .line 535
    :cond_0
    return v0
.end method
