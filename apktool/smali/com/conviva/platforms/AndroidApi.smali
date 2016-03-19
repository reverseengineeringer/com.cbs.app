.class public Lcom/conviva/platforms/AndroidApi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/conviva/platforms/PlatformApi;


# instance fields
.field private _pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private _scheduledPollTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private _scheduledTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledPollTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledPollTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public createPollTask(Ljava/util/TimerTask;I)V
    .locals 7

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledPollTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledPollTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledPollTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public createTimer(Ljava/util/TimerTask;IILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p2

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/conviva/platforms/AndroidApi;->_scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
