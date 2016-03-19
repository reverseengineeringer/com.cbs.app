.class public final Lcom/google/android/gms/internal/fa;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/io",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/dz;

.field private final c:Lcom/google/android/gms/internal/y;

.field private final d:Lcom/google/android/gms/internal/kc;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/y;Lcom/google/android/gms/internal/kc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/io",
            "<*>;>;",
            "Lcom/google/android/gms/internal/dz;",
            "Lcom/google/android/gms/internal/y;",
            "Lcom/google/android/gms/internal/kc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fa;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fa;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/fa;->b:Lcom/google/android/gms/internal/dz;

    iput-object p3, p0, Lcom/google/android/gms/internal/fa;->c:Lcom/google/android/gms/internal/y;

    iput-object p4, p0, Lcom/google/android/gms/internal/fa;->d:Lcom/google/android/gms/internal/kc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fa;->e:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fa;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fa;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/io;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/lc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/lc;->a(J)V

    .line 2000
    invoke-static {v1}, Lcom/google/android/gms/internal/io;->a(Lcom/google/android/gms/internal/lc;)Lcom/google/android/gms/internal/lc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fa;->d:Lcom/google/android/gms/internal/kc;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/io;Lcom/google/android/gms/internal/lc;)V

    goto :goto_0

    .line 0
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fa;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 1000
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->c()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 0
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/fa;->b:Lcom/google/android/gms/internal/dz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/io;)Lcom/google/android/gms/internal/gs;

    move-result-object v1

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/gs;->d:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->m()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/lc; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/li;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/lc;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/lc;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/lc;->a(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fa;->d:Lcom/google/android/gms/internal/kc;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/io;Lcom/google/android/gms/internal/lc;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/io;->a(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/jk;

    move-result-object v1

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/jk;->b:Lcom/google/android/gms/internal/y$a;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/fa;->c:Lcom/google/android/gms/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/jk;->b:Lcom/google/android/gms/internal/y$a;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/y;->a(Ljava/lang/String;Lcom/google/android/gms/internal/y$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/io;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->l()V

    iget-object v4, p0, Lcom/google/android/gms/internal/fa;->d:Lcom/google/android/gms/internal/kc;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/io;Lcom/google/android/gms/internal/jk;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/lc; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
