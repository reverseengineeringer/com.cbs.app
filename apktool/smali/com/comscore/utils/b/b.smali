.class public final Lcom/comscore/utils/b/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:Lcom/comscore/utils/b/a;


# direct methods
.method constructor <init>(Lcom/comscore/utils/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/b/b;->a:Z

    iput-object p1, p0, Lcom/comscore/utils/b/b;->c:Lcom/comscore/utils/b/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/b/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v1, p0, Lcom/comscore/utils/b/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/b/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 0
    .line 1000
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/comscore/utils/b/b;->a:Z

    .line 0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/comscore/utils/b/b;->c:Lcom/comscore/utils/b/a;

    invoke-virtual {v0}, Lcom/comscore/utils/b/a;->b()Lcom/comscore/utils/b/c;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/comscore/utils/b/c;->run()V

    iget-object v0, p0, Lcom/comscore/utils/b/b;->c:Lcom/comscore/utils/b/a;

    invoke-virtual {v0, v5}, Lcom/comscore/utils/b/a;->a(Lcom/comscore/utils/b/c;)V

    invoke-virtual {v5}, Lcom/comscore/utils/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/b/b;->c:Lcom/comscore/utils/b/a;

    invoke-virtual {v5}, Lcom/comscore/utils/b/c;->e()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v5}, Lcom/comscore/utils/b/c;->d()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/comscore/utils/b/c;->c()Z

    move-result v4

    invoke-virtual {v5}, Lcom/comscore/utils/b/c;->d()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;JZJ)Z

    goto :goto_0

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/comscore/utils/b/b;->c:Lcom/comscore/utils/b/a;

    invoke-virtual {v0}, Lcom/comscore/utils/b/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3000
    iget-object v2, p0, Lcom/comscore/utils/b/b;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/comscore/utils/b/b;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 0
    :cond_2
    return-void
.end method
