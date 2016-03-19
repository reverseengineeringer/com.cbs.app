.class final Lcom/comscore/utils/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/Runnable;

.field private d:Lcom/comscore/a/b;

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/comscore/a/b;JZJ)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/b/c;->c:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/comscore/utils/b/c;->d:Lcom/comscore/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    move-wide v0, p3

    :goto_0
    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/comscore/utils/b/c;->e:J

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/comscore/utils/b/c;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/utils/b/c;->f:J

    iput-boolean p5, p0, Lcom/comscore/utils/b/c;->h:Z

    iput-wide p6, p0, Lcom/comscore/utils/b/c;->g:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/b/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/b/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/comscore/utils/b/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/comscore/utils/b/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method final a()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/comscore/utils/b/c;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method final b()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/utils/b/c;->e:J

    return-wide v0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/comscore/utils/b/c;->h:Z

    return v0
.end method

.method final d()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/utils/b/c;->g:J

    return-wide v0
.end method

.method final e()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/b/c;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/comscore/utils/b/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/b/c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/comscore/utils/b/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/comscore/utils/b/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Unexpected error running asynchronous task: "

    invoke-static {v1, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/comscore/utils/b/c;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    const-string v1, "exception_ocurrences"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/b/c;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->V()V

    goto :goto_0
.end method
