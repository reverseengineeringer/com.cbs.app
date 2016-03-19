.class public final Lcom/nielsen/app/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/j$a;
    }
.end annotation


# static fields
.field private static c:Lcom/nielsen/app/sdk/j;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nielsen/app/sdk/j$a;

.field private d:Lcom/nielsen/app/sdk/h;

.field private e:Lcom/nielsen/app/sdk/AppNative;

.field private f:Lcom/nielsen/app/sdk/b;

.field private g:Lcom/nielsen/app/sdk/w;

.field private h:Lcom/nielsen/app/sdk/h$c;

.field private i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/locks/Lock;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/j;->c:Lcom/nielsen/app/sdk/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->b:Lcom/nielsen/app/sdk/j$a;

    .line 208
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->d:Lcom/nielsen/app/sdk/h;

    .line 209
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->e:Lcom/nielsen/app/sdk/AppNative;

    .line 210
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->f:Lcom/nielsen/app/sdk/b;

    .line 212
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->g:Lcom/nielsen/app/sdk/w;

    .line 229
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->h:Lcom/nielsen/app/sdk/h$c;

    .line 381
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    .line 382
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->a:Ljava/util/Map;

    .line 453
    const-string v0, "99"

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    .line 457
    iput-wide v2, p0, Lcom/nielsen/app/sdk/j;->m:J

    .line 458
    iput-wide v2, p0, Lcom/nielsen/app/sdk/j;->n:J

    .line 476
    iput-object v1, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    .line 183
    invoke-static {}, Lcom/nielsen/app/sdk/o;->o()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->d:Lcom/nielsen/app/sdk/h;

    .line 185
    invoke-static {}, Lcom/nielsen/app/sdk/o;->l()Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->e:Lcom/nielsen/app/sdk/AppNative;

    .line 186
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->f:Lcom/nielsen/app/sdk/b;

    .line 188
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->g:Lcom/nielsen/app/sdk/w;

    .line 190
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->f:Lcom/nielsen/app/sdk/b;

    const-string v1, "nol_tsvFlag"

    const-string v2, "99"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/j;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/nielsen/app/sdk/j;->m:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/nielsen/app/sdk/j;
    .locals 2

    .prologue
    .line 201
    const-class v1, Lcom/nielsen/app/sdk/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/j;->c:Lcom/nielsen/app/sdk/j;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/nielsen/app/sdk/j;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/j;-><init>()V

    sput-object v0, Lcom/nielsen/app/sdk/j;->c:Lcom/nielsen/app/sdk/j;

    .line 204
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/j;->c:Lcom/nielsen/app/sdk/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/j;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/j;J)J
    .locals 1

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/nielsen/app/sdk/j;->n:J

    return-wide p1
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-wide v0, p0, Lcom/nielsen/app/sdk/j;->n:J

    .line 415
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final a(Lcom/nielsen/app/sdk/b$c;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 266
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    if-eqz p6, :cond_2

    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {p1, v0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "nol_tsvFlag"

    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 361
    if-nez v3, :cond_0

    .line 362
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 364
    :cond_0
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    .line 365
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move/from16 v0, p4

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 368
    :goto_1
    return v2

    .line 280
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->f:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/b;->e()Z

    move-result v2

    .line 281
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->g:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/w;->r()Z

    move-result v4

    .line 283
    if-eqz v2, :cond_3

    if-nez v4, :cond_6

    .line 285
    :cond_3
    const/16 v2, 0x49

    const-string v4, "ProcessorId(%d) : No config file yet or AppSdk offline. Use last TSV (%s) for cid (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 361
    if-nez v3, :cond_4

    .line 362
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 364
    :cond_4
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_5

    .line 365
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move/from16 v0, p4

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 366
    :cond_5
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .line 289
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->e:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v2, p2, p3}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetStreamType(J)Ljava/lang/String;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 291
    const-string v4, "nol_breakout"

    invoke-virtual {p1, v4, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_7
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v4

    .line 294
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 296
    const-string v4, "nol_devtime"

    invoke-virtual {p1, v4, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_8
    invoke-static {}, Lcom/nielsen/app/sdk/w;->m()Ljava/lang/String;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 300
    const-string v4, "nol_devtimezone"

    invoke-virtual {p1, v4, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 303
    const-string v2, "nol_id3Raw"

    move-object/from16 v0, p5

    invoke-virtual {p1, v2, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_a
    const-string v2, "nol_tsvURL"

    invoke-virtual {p1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 307
    :cond_b
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->f:Lcom/nielsen/app/sdk/b;

    const-string v4, "nol_tsvURL"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    :cond_c
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 311
    const/4 v4, 0x1

    new-array v4, v4, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 313
    invoke-virtual {p1, v2, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 314
    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&rnd="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    const/16 v2, 0x49

    const-string v5, "TSV request on processor(%d) : Sending message: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v2, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    new-instance v2, Lcom/nielsen/app/sdk/j$a;

    iget-object v5, p0, Lcom/nielsen/app/sdk/j;->d:Lcom/nielsen/app/sdk/h;

    invoke-direct {v2, p0, v5}, Lcom/nielsen/app/sdk/j$a;-><init>(Lcom/nielsen/app/sdk/j;Lcom/nielsen/app/sdk/h;)V

    iput-object v2, p0, Lcom/nielsen/app/sdk/j;->b:Lcom/nielsen/app/sdk/j$a;

    .line 1226
    new-instance v2, Lcom/nielsen/app/sdk/h$c;

    iget-object v5, p0, Lcom/nielsen/app/sdk/j;->d:Lcom/nielsen/app/sdk/h;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "TimeShiftValueHandler"

    iget-object v7, p0, Lcom/nielsen/app/sdk/j;->b:Lcom/nielsen/app/sdk/j$a;

    invoke-direct {v2, v5, v6, v7}, Lcom/nielsen/app/sdk/h$c;-><init>(Lcom/nielsen/app/sdk/h;Ljava/lang/String;Lcom/nielsen/app/sdk/h$d;)V

    iput-object v2, p0, Lcom/nielsen/app/sdk/j;->h:Lcom/nielsen/app/sdk/h$c;

    .line 1227
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->h:Lcom/nielsen/app/sdk/h$c;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/nielsen/app/sdk/h$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/nielsen/app/sdk/j;->i:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 324
    if-eqz v2, :cond_f

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 326
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    .line 328
    const-string v3, "nol_stationId"

    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {p1, v0, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/16 v3, 0x49

    const-string v4, "Processor(%d) : Received TSV (%s) for cid(%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 361
    :goto_2
    if-nez v2, :cond_d

    .line 362
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 364
    :cond_d
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_e

    .line 365
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 366
    :cond_e
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    :goto_3
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 368
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_1

    .line 335
    :cond_f
    const/16 v3, 0xb

    const/16 v5, 0x45

    :try_start_4
    const-string v6, "Failed request, %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v3, v5, v6, v7}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/j;->d(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 348
    :catch_0
    move-exception v3

    move-object v8, v2

    move-object v2, v3

    :goto_4
    const/4 v3, 0x1

    const/16 v4, 0xb

    const/16 v5, 0x45

    :try_start_5
    const-string v6, "Could not get the TSV for cid(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p6, v7, v9

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 352
    :try_start_6
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/j;->d(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 361
    :goto_5
    if-nez v8, :cond_15

    .line 362
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 364
    :goto_6
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_10

    .line 365
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 366
    :cond_10
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    goto :goto_3

    .line 343
    :cond_11
    const/16 v2, 0xb

    const/16 v4, 0x45

    :try_start_7
    const-string v5, "Failed parsing. There is no URL for the TSV request"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_12
    move-object v2, v3

    goto :goto_2

    .line 356
    :catch_1
    move-exception v2

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/16 v5, 0x45

    :try_start_8
    const-string v6, "Could not reset TSV for cid(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p6, v7, v9

    invoke-static/range {v2 .. v7}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 361
    :catchall_0
    move-exception v2

    move-object v3, v8

    :goto_7
    if-nez v3, :cond_13

    .line 362
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 364
    :cond_13
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_14

    .line 365
    iget-object v4, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move/from16 v0, p4

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 366
    :cond_14
    iget-object v3, p0, Lcom/nielsen/app/sdk/j;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_7

    .line 348
    :catch_2
    move-exception v2

    move-object v8, v3

    goto :goto_4

    :cond_15
    move-object v2, v8

    goto :goto_6
.end method

.method public final b(I)J
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-wide v0, p0, Lcom/nielsen/app/sdk/j;->m:J

    .line 432
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->a:Ljava/util/Map;

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->l:Ljava/lang/String;

    .line 490
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/j;->k:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/nielsen/app/sdk/j;->o:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 493
    return-void
.end method
