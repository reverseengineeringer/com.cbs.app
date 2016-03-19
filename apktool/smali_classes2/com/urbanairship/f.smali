.class abstract Lcom/urbanairship/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/e;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/urbanairship/f;->a:Z

    .line 37
    iput-boolean v0, p0, Lcom/urbanairship/f;->b:Z

    .line 38
    iput-boolean v0, p0, Lcom/urbanairship/f;->c:Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    .line 54
    :goto_0
    iput-object v0, v1, Lcom/urbanairship/f;->d:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/urbanairship/f$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/f$1;-><init>(Lcom/urbanairship/f;)V

    iput-object v0, p0, Lcom/urbanairship/f;->e:Ljava/lang/Runnable;

    .line 70
    return-void

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/f;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/f;->a:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/f;->c:Z

    .line 78
    iget-object v0, p0, Lcom/urbanairship/f;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/f;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/urbanairship/f;->d:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/f$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/f$2;-><init>(Lcom/urbanairship/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/f;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/f;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract c()V
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/f;->b:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    monitor-exit p0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/f;->b:Z

    .line 98
    iget-object v0, p0, Lcom/urbanairship/f;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/f;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
