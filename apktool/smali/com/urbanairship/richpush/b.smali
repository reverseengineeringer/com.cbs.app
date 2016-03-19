.class public final Lcom/urbanairship/richpush/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/urbanairship/richpush/b$a;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/urbanairship/richpush/d;

.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/urbanairship/richpush/b$a;

    invoke-direct {v0}, Lcom/urbanairship/richpush/b$a;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/b;->a:Lcom/urbanairship/richpush/b$a;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/b;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/urbanairship/richpush/d;

    invoke-direct {v0, p1}, Lcom/urbanairship/richpush/d;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/b;-><init>(Lcom/urbanairship/richpush/d;Ljava/util/concurrent/Executor;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/richpush/d;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/b;->c:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/b;->d:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    .line 87
    iput-object p1, p0, Lcom/urbanairship/richpush/b;->g:Lcom/urbanairship/richpush/d;

    .line 88
    iput-object p2, p0, Lcom/urbanairship/richpush/b;->h:Ljava/util/concurrent/Executor;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/richpush/b;)Lcom/urbanairship/richpush/d;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->g:Lcom/urbanairship/richpush/d;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/richpush/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->c:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 384
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 385
    new-instance v1, Lcom/urbanairship/richpush/b$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/richpush/b$2;-><init>(Lcom/urbanairship/richpush/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/urbanairship/richpush/c;
    .locals 2

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 224
    :cond_0
    sget-object v1, Lcom/urbanairship/richpush/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/c;

    monitor-exit v1

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/c;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a()V
    .locals 8

    .prologue
    .line 329
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->g:Lcom/urbanairship/richpush/d;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/d;->a()Ljava/util/List;

    move-result-object v0

    .line 332
    sget-object v1, Lcom/urbanairship/richpush/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 336
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 338
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/urbanairship/richpush/b;->d:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 341
    iget-object v5, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 342
    iget-object v5, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/c;

    .line 1312
    iget-boolean v6, v0, Lcom/urbanairship/richpush/c;->a:Z

    .line 348
    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    :cond_0
    iget-object v6, p0, Lcom/urbanairship/richpush/b;->d:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 354
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 355
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/urbanairship/richpush/c;->b:Z

    .line 356
    iget-object v6, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/urbanairship/richpush/c;->b:Z

    .line 363
    iget-object v6, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 368
    :cond_3
    iget-boolean v6, v0, Lcom/urbanairship/richpush/c;->b:Z

    if-eqz v6, :cond_4

    .line 369
    iget-object v6, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    :cond_4
    iget-object v6, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 374
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    invoke-direct {p0}, Lcom/urbanairship/richpush/b;->b()V

    .line 377
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/urbanairship/richpush/b;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/richpush/b$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/richpush/b$1;-><init>(Lcom/urbanairship/richpush/b;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    sget-object v2, Lcom/urbanairship/richpush/b;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/richpush/c;

    .line 252
    if-eqz v1, :cond_0

    .line 253
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/urbanairship/richpush/c;->b:Z

    .line 254
    iget-object v4, p0, Lcom/urbanairship/richpush/b;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v4, p0, Lcom/urbanairship/richpush/b;->f:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/urbanairship/richpush/b;->b()V

    .line 260
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
