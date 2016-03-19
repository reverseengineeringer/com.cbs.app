.class public Lcom/flurry/sdk/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/bu;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ad",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/al;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/sdk/ad;

    invoke-direct {v0}, Lcom/flurry/sdk/ad;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/ad;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/al;->c:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/al;->d:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/flurry/sdk/al$1;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x1388

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/al$1;-><init>(Lcom/flurry/sdk/al;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/flurry/sdk/al;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/al;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/flurry/sdk/al$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/al$2;-><init>(Lcom/flurry/sdk/al;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 132
    new-instance v0, Lcom/flurry/sdk/bl;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/bl;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/flurry/sdk/al;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 134
    return-void
.end method

.method static synthetic a(Ljava/lang/Runnable;)Lcom/flurry/sdk/bu;
    .locals 5

    .prologue
    .line 25
    .line 1236
    const/4 v0, 0x0

    .line 1238
    instance-of v1, p0, Lcom/flurry/sdk/ak;

    if-eqz v1, :cond_0

    .line 1239
    check-cast p0, Lcom/flurry/sdk/ak;

    .line 1240
    invoke-virtual {p0}, Lcom/flurry/sdk/ak;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bu;

    .line 25
    :goto_0
    return-object v0

    .line 1241
    :cond_0
    instance-of v1, p0, Lcom/flurry/sdk/bu;

    if-eqz v1, :cond_1

    .line 1242
    check-cast p0, Lcom/flurry/sdk/bu;

    move-object v0, p0

    goto :goto_0

    .line 1244
    :cond_1
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/al;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown runnable class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/al;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/al;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/al;Lcom/flurry/sdk/bu;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/al;->a(Lcom/flurry/sdk/bu;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/bu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/al;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/al;->c(Ljava/lang/Object;Lcom/flurry/sdk/bu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/bu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/ad;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/al;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/bu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/ad;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ad;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/al;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/bu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    if-nez p1, :cond_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/al;->b(Ljava/lang/Object;Lcom/flurry/sdk/bu;)V

    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/al;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
