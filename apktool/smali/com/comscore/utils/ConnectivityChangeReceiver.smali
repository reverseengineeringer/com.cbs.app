.class public Lcom/comscore/utils/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:J

.field protected d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;

.field private final f:Lcom/comscore/a/b;


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 5000
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->j()Lcom/comscore/b/e;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/comscore/b/e;->a(J)V

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    const-wide/16 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->d()V

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    :cond_3
    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 6000
    iget-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->U()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/comscore/utils/p;

    invoke-direct {v2, p0}, Lcom/comscore/utils/p;-><init>(Lcom/comscore/utils/ConnectivityChangeReceiver;)V

    iput-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    .line 0
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scheduleFlushTask(): Flushing in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "cancelFlushTask()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->e:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->b:Z

    invoke-direct {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "flushing"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/comscore/a/b;->p(Z)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/comscore/utils/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onConnectedWifi()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v0

    .line 2000
    invoke-static {v0}, Lcom/comscore/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-direct {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->O()Lcom/comscore/utils/m;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/m;->b:Lcom/comscore/utils/m;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->O()Lcom/comscore/utils/m;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/m;->e:Lcom/comscore/utils/m;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/comscore/utils/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3000
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onConnectedMobile()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "|||cs_3g|||"

    invoke-direct {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->O()Lcom/comscore/utils/m;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/m;->a:Lcom/comscore/utils/m;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->O()Lcom/comscore/utils/m;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/m;->d:Lcom/comscore/utils/m;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/comscore/utils/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4000
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->f:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDisconnected()"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/utils/ConnectivityChangeReceiver;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
