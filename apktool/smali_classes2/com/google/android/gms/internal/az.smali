.class public final Lcom/google/android/gms/internal/az;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/io",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/io",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/y;

.field private final e:Lcom/google/android/gms/internal/kc;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/li;->b:Z

    sput-boolean v0, Lcom/google/android/gms/internal/az;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/y;Lcom/google/android/gms/internal/kc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/io",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/io",
            "<*>;>;",
            "Lcom/google/android/gms/internal/y;",
            "Lcom/google/android/gms/internal/kc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/az;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/az;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/az;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/az;->d:Lcom/google/android/gms/internal/y;

    iput-object p4, p0, Lcom/google/android/gms/internal/az;->e:Lcom/google/android/gms/internal/kc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/az;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/az;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/az;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/az;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/li;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/az;->d:Lcom/google/android/gms/internal/y;

    invoke-interface {v0}, Lcom/google/android/gms/internal/y;->a()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/az;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/io;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/az;->f:Z

    if-eqz v0, :cond_1

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/az;->d:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/y;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/y$a;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/az;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-wide v6, v4, Lcom/google/android/gms/internal/y$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_4

    move v1, v2

    .line 0
    :goto_1
    if-eqz v1, :cond_5

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/io;->a(Lcom/google/android/gms/internal/y$a;)Lcom/google/android/gms/internal/io;

    iget-object v1, p0, Lcom/google/android/gms/internal/az;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1000
    goto :goto_1

    .line 0
    :cond_5
    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/gs;

    iget-object v5, v4, Lcom/google/android/gms/internal/y$a;->a:[B

    iget-object v6, v4, Lcom/google/android/gms/internal/y$a;->g:Ljava/util/Map;

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/gs;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/jk;

    move-result-object v5

    const-string v1, "cache-hit-parsed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    .line 2000
    iget-wide v6, v4, Lcom/google/android/gms/internal/y$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_6

    move v1, v2

    .line 0
    :goto_2
    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/az;->e:Lcom/google/android/gms/internal/kc;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/io;Lcom/google/android/gms/internal/jk;)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 2000
    goto :goto_2

    .line 0
    :cond_7
    const-string v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/io;->a(Lcom/google/android/gms/internal/y$a;)Lcom/google/android/gms/internal/io;

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/google/android/gms/internal/jk;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/az;->e:Lcom/google/android/gms/internal/kc;

    new-instance v4, Lcom/google/android/gms/internal/az$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/az$1;-><init>(Lcom/google/android/gms/internal/az;Lcom/google/android/gms/internal/io;)V

    invoke-interface {v1, v0, v5, v4}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/io;Lcom/google/android/gms/internal/jk;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
