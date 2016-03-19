.class public final Lcom/comscore/streaming/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/comscore/streaming/d;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/util/HashMap;
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

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/streaming/f;->j:Z

    new-instance v0, Lcom/comscore/streaming/d;

    invoke-direct {v0}, Lcom/comscore/streaming/d;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comscore/streaming/f;->h:Ljava/util/HashMap;

    .line 1000
    invoke-virtual {p0, v1}, Lcom/comscore/streaming/f;->a(Ljava/util/Set;)V

    .line 0
    return-void
.end method

.method private f()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/f;->f:J

    iget-object v2, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v2}, Lcom/comscore/streaming/d;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v4}, Lcom/comscore/streaming/d;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private g()J
    .locals 6

    iget-wide v0, p0, Lcom/comscore/streaming/f;->g:J

    iget-object v2, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v2}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v4}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a()Lcom/comscore/streaming/d;
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    return-object v0
.end method

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
    const-string v0, "ns_st_bp"

    invoke-direct {p0}, Lcom/comscore/streaming/f;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_sp"

    iget v1, p0, Lcom/comscore/streaming/f;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_id"

    iget-object v1, p0, Lcom/comscore/streaming/f;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/comscore/streaming/f;->e:I

    if-lez v0, :cond_0

    const-string v0, "ns_st_bc"

    iget v1, p0, Lcom/comscore/streaming/f;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/e;->e:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "ns_st_pa"

    invoke-direct {p0}, Lcom/comscore/streaming/f;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ns_st_pp"

    iget v1, p0, Lcom/comscore/streaming/f;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_4

    .line 8000
    :cond_3
    iget-boolean v0, p0, Lcom/comscore/streaming/f;->j:Z

    .line 0
    if-nez v0, :cond_4

    const-string v0, "ns_st_pb"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/comscore/streaming/f;->j:Z

    .line 10000
    :cond_4
    iget-object v0, p0, Lcom/comscore/streaming/f;->h:Ljava/util/HashMap;

    .line 0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p2
.end method

.method protected final a(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/f;->c:I

    return-void
.end method

.method protected final a(J)V
    .locals 7

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addPlaybackTime("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->e()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/d;->c(J)V

    iget-object v2, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    iget-object v3, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v3}, Lcom/comscore/streaming/d;->d()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/d;->b(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/f;->g()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 11000
    iput-wide v2, p0, Lcom/comscore/streaming/f;->g:J

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPlaybackTime("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/f;->b:Ljava/lang/String;

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

    const-string v0, "ns_st_sp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/f;->c:I

    const-string v0, "ns_st_sp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    const-string v0, "ns_st_bc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/f;->e:I

    const-string v0, "ns_st_bc"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    const-string v0, "ns_st_bp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/f;->f:J

    const-string v0, "ns_st_bp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    const-string v0, "ns_st_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/comscore/streaming/f;->b:Ljava/lang/String;

    const-string v0, "ns_st_id"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/comscore/streaming/g;->d:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_4

    const-string v0, "ns_st_pa"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comscore/streaming/f;->g:J

    const-string v0, "ns_st_pa"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    sget-object v0, Lcom/comscore/streaming/g;->c:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/g;

    if-eq p2, v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    const-string v0, "ns_st_pp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/comscore/streaming/f;->d:I

    const-string v0, "ns_st_pp"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 8
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
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/comscore/streaming/f;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/comscore/streaming/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    iput-object v0, p0, Lcom/comscore/streaming/f;->b:Ljava/lang/String;

    .line 3000
    iput-wide v6, p0, Lcom/comscore/streaming/f;->f:J

    .line 4000
    iput-wide v6, p0, Lcom/comscore/streaming/f;->g:J

    .line 5000
    iput v4, p0, Lcom/comscore/streaming/f;->d:I

    .line 6000
    iput v4, p0, Lcom/comscore/streaming/f;->c:I

    .line 7000
    iput v4, p0, Lcom/comscore/streaming/f;->e:I

    .line 0
    iput-boolean v4, p0, Lcom/comscore/streaming/f;->j:Z

    return-void
.end method

.method protected final b()I
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/f;->c:I

    return v0
.end method

.method protected final b(J)V
    .locals 7

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addBufferingTime("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->f()J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/d;->d(J)V

    iget-object v2, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    iget-object v3, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v3}, Lcom/comscore/streaming/d;->c()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/comscore/streaming/d;->a(J)V

    invoke-direct {p0}, Lcom/comscore/streaming/f;->f()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 12000
    iput-wide v2, p0, Lcom/comscore/streaming/f;->f:J

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addBufferingTime("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/f;->d:I

    iget-object v0, p0, Lcom/comscore/streaming/f;->a:Lcom/comscore/streaming/d;

    invoke-virtual {v0}, Lcom/comscore/streaming/d;->a()V

    return-void
.end method

.method protected final d()V
    .locals 1

    iget v0, p0, Lcom/comscore/streaming/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/comscore/streaming/f;->e:I

    return-void
.end method

.method protected final e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/streaming/f;->i:I

    return-void
.end method
