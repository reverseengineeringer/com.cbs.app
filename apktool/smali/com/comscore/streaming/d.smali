.class public final Lcom/comscore/streaming/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/streaming/d;->a(Ljava/util/Set;)V

    .line 0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/comscore/streaming/e;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/e;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    const-string v0, "ns_st_cn"

    .line 10000
    iget-object v1, p0, Lcom/comscore/streaming/d;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/comscore/utils/n;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 11000
    iput-object v1, p0, Lcom/comscore/streaming/d;->h:Ljava/lang/String;

    .line 10000
    :cond_0
    iget-object v1, p0, Lcom/comscore/streaming/d;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_bt"

    invoke-virtual {p0}, Lcom/comscore/streaming/d;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "ns_st_sq"

    iget v1, p0, Lcom/comscore/streaming/d;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/comscore/streaming/e;->e:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    const-string v0, "ns_st_pt"

    invoke-virtual {p0}, Lcom/comscore/streaming/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_pc"

    iget v1, p0, Lcom/comscore/streaming/d;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12000
    :cond_4
    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    .line 0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p2
.end method

.method protected final a()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/d;->b:I

    return-void
.end method

.method protected final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/d;->d:J

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/comscore/streaming/d;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method protected final a(Ljava/util/HashMap;Lcom/comscore/streaming/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/comscore/streaming/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    const-string v0, "ns_st_cn"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9000
    iput-object v0, p0, Lcom/comscore/streaming/d;->h:Ljava/lang/String;

    .line 0
    const-string v0, "ns_st_cn"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ns_st_bt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/d;->d:J

    const-string v0, "ns_st_bt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    const-string v0, "ns_st_cl"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/d;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_pn"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/d;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_tp"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/d;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_ub"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/d;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v0, "ns_st_br"

    invoke-direct {p0, v0, p1}, Lcom/comscore/streaming/d;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/comscore/streaming/g;->b:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const-string v0, "ns_st_sq"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/d;->c:I

    const-string v0, "ns_st_sq"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    sget-object v0, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_4

    const-string v0, "ns_st_pt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/d;->f:J

    const-string v0, "ns_st_pt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_2
    sget-object v0, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    const-string v0, "ns_st_pc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/d;->b:I

    const-string v0, "ns_st_pc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    .line 2000
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_cl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_cl"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_pn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_pn"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_tp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const-string v1, "ns_st_tp"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    :cond_5
    iput v4, p0, Lcom/comscore/streaming/d;->b:I

    .line 4000
    iput v4, p0, Lcom/comscore/streaming/d;->c:I

    .line 5000
    iput-wide v8, p0, Lcom/comscore/streaming/d;->d:J

    .line 6000
    iput-wide v6, p0, Lcom/comscore/streaming/d;->e:J

    .line 7000
    iput-wide v8, p0, Lcom/comscore/streaming/d;->f:J

    .line 8000
    iput-wide v6, p0, Lcom/comscore/streaming/d;->g:J

    .line 0
    return-void
.end method

.method protected final b()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/d;->c:I

    return-void
.end method

.method protected final b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/d;->f:J

    return-void
.end method

.method protected final b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/comscore/streaming/d;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/comscore/streaming/d;->a(Ljava/util/HashMap;Lcom/comscore/streaming/g;)V

    return-void
.end method

.method protected final c()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/d;->d:J

    iget-wide v2, p0, Lcom/comscore/streaming/d;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/d;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected final c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/d;->g:J

    return-void
.end method

.method protected final d()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/d;->f:J

    iget-wide v2, p0, Lcom/comscore/streaming/d;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/d;->g:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method protected final d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/comscore/streaming/d;->e:J

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/streaming/d;->g:J

    return-wide v0
.end method

.method protected final f()J
    .locals 2

    iget-wide v0, p0, Lcom/comscore/streaming/d;->e:J

    return-wide v0
.end method
