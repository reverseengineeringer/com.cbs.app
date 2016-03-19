.class public final Lcom/comscore/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:J

.field protected b:J

.field protected c:J

.field private d:Lcom/comscore/a/b;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/comscore/b/e;->b:J

    iput-boolean v2, p0, Lcom/comscore/b/e;->e:Z

    iput-boolean v2, p0, Lcom/comscore/b/e;->f:Z

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/comscore/b/e;->a:J

    iget-wide v0, p0, Lcom/comscore/b/e;->a:J

    iput-wide v0, p0, Lcom/comscore/b/e;->c:J

    iput-object p1, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    return-void
.end method

.method private static a(Lcom/comscore/utils/l;)J
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "lastMeasurementProcessedTimestamp"

    invoke-virtual {p0, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(Z)V
    .locals 8

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->f()Lcom/comscore/utils/i;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/b/e;->a(Lcom/comscore/utils/l;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "processKeepAlive("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ") timeSinceLastTransmission="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " currentTimeout="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/comscore/b/e;->c:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/comscore/b/e;->c:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    sget-object v1, Lcom/comscore/b/d;->f:Lcom/comscore/b/d;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/a/b;->a(Lcom/comscore/b/d;Ljava/util/HashMap;Z)V

    :goto_1
    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    const-string v1, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/comscore/b/d;->f:Lcom/comscore/b/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/i;->a(Lcom/comscore/b/d;Ljava/util/HashMap;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-wide v0, p0, Lcom/comscore/b/e;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/comscore/b/e;->a(J)V

    return-void
.end method

.method public final a(I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 0
    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/b/e;->c()V

    iput-boolean v4, p0, Lcom/comscore/b/e;->e:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/b/e;->b:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/comscore/b/e;->b:J

    .line 2000
    :cond_2
    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/comscore/b/e;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-wide v5, p0, Lcom/comscore/b/e;->a:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;JZJ)Z

    iput-boolean v4, p0, Lcom/comscore/b/e;->f:Z

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/comscore/b/e;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/comscore/b/e;->b:J

    iput-wide p1, p0, Lcom/comscore/b/e;->c:J

    iget-boolean v0, p0, Lcom/comscore/b/e;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/comscore/b/e;->a(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/b/e;->e:Z

    invoke-virtual {p0}, Lcom/comscore/b/e;->c()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/comscore/b/e;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/b/e;->f:Z

    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/comscore/b/e;->d:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/comscore/b/e;->f:Z

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/comscore/b/e;->a(Z)V

    goto :goto_0
.end method
