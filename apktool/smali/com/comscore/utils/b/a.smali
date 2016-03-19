.class public final Lcom/comscore/utils/b/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/comscore/a/b;

.field private b:Lcom/comscore/utils/b/b;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/comscore/utils/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/b/a;->a:Lcom/comscore/a/b;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/comscore/utils/b/b;

    invoke-direct {v0, p0}, Lcom/comscore/utils/b/b;-><init>(Lcom/comscore/utils/b/a;)V

    iput-object v0, p0, Lcom/comscore/utils/b/a;->b:Lcom/comscore/utils/b/b;

    iget-object v0, p0, Lcom/comscore/utils/b/a;->b:Lcom/comscore/utils/b/b;

    invoke-virtual {v0}, Lcom/comscore/utils/b/b;->start()V

    return-void
.end method


# virtual methods
.method final a()J
    .locals 5

    const-wide/32 v0, 0xc350

    iget-object v2, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/b/c;

    invoke-virtual {v0}, Lcom/comscore/utils/b/c;->a()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method final a(Lcom/comscore/utils/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/b/c;

    invoke-virtual {v0}, Lcom/comscore/utils/b/c;->e()Ljava/lang/Runnable;

    move-result-object v2

    if-eq v2, p1, :cond_1

    instance-of v2, p1, Lcom/comscore/utils/b/c;

    if-eqz v2, :cond_0

    if-ne v0, p1, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;J)Z
    .locals 8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;JZJ)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Runnable;JZJ)Z
    .locals 9

    iget-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/comscore/utils/b/c;->e()Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v8, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/comscore/utils/b/c;

    iget-object v2, p0, Lcom/comscore/utils/b/a;->a:Lcom/comscore/a/b;

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/comscore/utils/b/c;-><init>(Ljava/lang/Runnable;Lcom/comscore/a/b;JZJ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/comscore/utils/b/a;->b:Lcom/comscore/utils/b/b;

    invoke-virtual {v0}, Lcom/comscore/utils/b/b;->a()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;Z)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/comscore/utils/b/a;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->U()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Unexpected error: "

    invoke-static {v2, v3}, Lcom/comscore/utils/b;->a(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method final b()Lcom/comscore/utils/b/c;
    .locals 6

    iget-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/b/c;

    invoke-virtual {v0}, Lcom/comscore/utils/b/c;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/utils/b/c;

    invoke-virtual {v0}, Lcom/comscore/utils/b/c;->e()Ljava/lang/Runnable;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/b/a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method
