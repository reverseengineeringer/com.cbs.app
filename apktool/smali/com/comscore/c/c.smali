.class public final Lcom/comscore/c/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/comscore/a/b;

.field protected b:Ljava/util/concurrent/atomic/AtomicLong;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected f:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected g:Ljava/lang/Object;

.field private h:Lcom/comscore/b/a;


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/c/c;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/comscore/c/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/comscore/c/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    return-void
.end method

.method static synthetic a(Lcom/comscore/c/c;Lcom/comscore/c/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    .line 5000
    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMeasurmement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->R()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/comscore/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/comscore/c/c;->c(Lcom/comscore/c/b;)V

    instance-of v0, p1, Lcom/comscore/b/a;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/comscore/c/c;->b(Lcom/comscore/c/b;)V

    .line 6000
    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "c12"

    iget-object v2, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/comscore/c/b;->a(Lcom/comscore/c/a;)V

    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ak"

    iget-object v2, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v2}, Lcom/comscore/a/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/comscore/c/b;->a(Lcom/comscore/c/a;)V

    .line 5000
    :cond_0
    new-instance v0, Lcom/comscore/d/b;

    iget-object v1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-direct {v0, v1, p1}, Lcom/comscore/d/b;-><init>(Lcom/comscore/a/b;Lcom/comscore/c/b;)V

    invoke-virtual {v0}, Lcom/comscore/d/b;->a()Z

    .line 0
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    const-string v1, "q_dcc"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "q_dcf"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "q_dcc"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "q_dcf"

    invoke-virtual {v0, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 3000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 0
    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/comscore/utils/e;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "Unexpected error parsing storage data: "

    invoke-static {p0, v1}, Lcom/comscore/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final a(Lcom/comscore/c/b;)Z
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->U()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v1

    .line 2000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1000
    iget-object v4, p0, Lcom/comscore/c/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/comscore/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/comscore/c/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v4, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v2, "q_dcc"

    iget-object v3, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "q_dcf"

    iget-object v3, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/comscore/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x1770

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/comscore/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const-string v2, "q_dcc"

    iget-object v3, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 0
    :goto_2
    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "Data not sent"

    invoke-static {p0, v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1000
    :cond_3
    iget-object v4, p0, Lcom/comscore/c/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/comscore/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/comscore/c/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_4
    iget-object v4, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v4, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v2, "q_dcc"

    iget-object v3, p0, Lcom/comscore/c/c;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "q_dcf"

    iget-object v3, p0, Lcom/comscore/c/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move v1, v0

    goto :goto_2

    .line 0
    :cond_6
    iget-object v1, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v1

    new-instance v2, Lcom/comscore/c/e;

    invoke-direct {v2, p0, p1}, Lcom/comscore/c/e;-><init>(Lcom/comscore/c/c;Lcom/comscore/c/b;)V

    invoke-virtual {v1, v2, v0}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final b(Lcom/comscore/c/b;)V
    .locals 4

    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/c/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lcom/comscore/c/a;

    const-string v1, "ns_ap_ec"

    iget-object v2, p0, Lcom/comscore/c/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/comscore/c/b;->a(Lcom/comscore/c/a;)V

    goto :goto_0
.end method

.method public final c(Lcom/comscore/c/b;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/c/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/comscore/c/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    instance-of v0, p1, Lcom/comscore/b/a;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/comscore/b/a;

    .line 4000
    iget-object v2, p0, Lcom/comscore/c/c;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    iget-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    invoke-virtual {v0}, Lcom/comscore/b/a;->b()V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 0
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4000
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    invoke-virtual {p1}, Lcom/comscore/b/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/comscore/b/a;->a(Ljava/util/List;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 0
    :cond_2
    iget-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    invoke-virtual {v0}, Lcom/comscore/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comscore/c/a;

    invoke-virtual {p1, v0}, Lcom/comscore/c/b;->a(Lcom/comscore/c/a;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/c/c;->h:Lcom/comscore/b/a;

    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
