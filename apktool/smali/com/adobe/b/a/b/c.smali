.class public final Lcom/adobe/b/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/b/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/a/b/c;-><init>(Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/b/a/b/c;-><init>(Z)V

    .line 43
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/adobe/b/a/b/c;->c:Z

    .line 34
    iput-boolean v0, p0, Lcom/adobe/b/a/b/c;->d:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/b/c;->e:Ljava/util/List;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/b/a/b/c;->a:J

    .line 48
    iput-boolean p1, p0, Lcom/adobe/b/a/b/c;->c:Z

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/a/b/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method private declared-synchronized a(Lcom/adobe/b/a/b/b;Lcom/adobe/b/a/b;)V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/adobe/b/a/b/c;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/adobe/b/a/b/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adobe/b/a/b/c$2;

    invoke-direct {v1, p0}, Lcom/adobe/b/a/b/c$2;-><init>(Lcom/adobe/b/a/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 133
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/adobe/b/a/b/c;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/adobe/b/a/b/c;->c:Z

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/adobe/b/a/b/c;->c:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/b/a/b/c;->d:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/b/a/b/c;->d:Z

    .line 93
    invoke-direct {p0}, Lcom/adobe/b/a/b/c;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adobe/b/a/b/c;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/adobe/b/a/b/c;->c()V

    return-void
.end method

.method static synthetic c(Lcom/adobe/b/a/b/c;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/adobe/b/a/b/c;->a:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/adobe/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iput-boolean v2, p0, Lcom/adobe/b/a/b/c;->d:Z

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/b/b;

    .line 102
    iget-object v1, p0, Lcom/adobe/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    new-instance v1, Lcom/adobe/b/a/b/c$1;

    invoke-direct {v1, p0}, Lcom/adobe/b/a/b/c$1;-><init>(Lcom/adobe/b/a/b/c;)V

    invoke-direct {p0, v0, v1}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/b;Lcom/adobe/b/a/b;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/b/a/b/c;->c:Z

    .line 77
    invoke-direct {p0}, Lcom/adobe/b/a/b/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/adobe/b/a/b/b;)V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/a/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0}, Lcom/adobe/b/a/b/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
