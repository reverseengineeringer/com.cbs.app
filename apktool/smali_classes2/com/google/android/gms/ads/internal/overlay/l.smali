.class public final Lcom/google/android/gms/ads/internal/overlay/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final d:Lcom/google/android/gms/internal/be;

.field private final e:Lcom/google/android/gms/internal/bg;

.field private final f:Lcom/google/android/gms/internal/gz;

.field private final g:[J

.field private final h:[Ljava/lang/String;

.field private i:Lcom/google/android/gms/internal/be;

.field private j:Lcom/google/android/gms/internal/be;

.field private k:Lcom/google/android/gms/internal/be;

.field private l:Lcom/google/android/gms/internal/be;

.field private m:Z

.field private n:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private o:Z

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gz$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gz$b;-><init>()V

    const-string v1, "min_1"

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$b;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/gz$b;

    move-result-object v0

    const-string v1, "1_5"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$b;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/gz$b;

    move-result-object v0

    const-string v1, "5_10"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$b;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/gz$b;

    move-result-object v0

    const-string v1, "10_20"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$b;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/gz$b;

    move-result-object v0

    const-string v1, "20_30"

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$b;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/gz$b;

    move-result-object v0

    const-string v1, "30_max"

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$b;->a(Ljava/lang/String;DD)Lcom/google/android/gms/internal/gz$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$b;->a()Lcom/google/android/gms/internal/gz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/internal/gz;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:J

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/l;->d:Lcom/google/android/gms/internal/be;

    sget-object v0, Lcom/google/android/gms/internal/ax;->v:Lcom/google/android/gms/internal/at;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    :cond_0
    return-void

    :cond_1
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:[Ljava/lang/String;

    array-length v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2000
    :catch_0
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/internal/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Lcom/google/android/gms/internal/be;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/internal/be;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vfr"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Lcom/google/android/gms/internal/be;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->d:Lcom/google/android/gms/internal/be;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vpc"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/internal/be;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Lcom/google/android/gms/ads/internal/overlay/zzi;

    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ax;->u:Lcom/google/android/gms/internal/at;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Z

    if-nez v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v2, "native-player-metrics"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "player"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/overlay/zzi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/internal/gz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gz$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fps_c_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/gz$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/gz$a;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fps_p_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/gz$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/gz$a;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fh_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const-string v3, "gmob-apps"

    invoke-static {v0, v2, v3, v1, v6}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    iput-boolean v6, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Z

    :cond_3
    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .locals 14

    .prologue
    .line 0
    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Lcom/google/android/gms/internal/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->l:Lcom/google/android/gms/internal/be;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Lcom/google/android/gms/internal/be;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vff"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->d:Lcom/google/android/gms/internal/be;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vtt"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->l:Lcom/google/android/gms/internal/be;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->c()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/internal/gz;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/gz;->a(D)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:J

    .line 5000
    sget-object v0, Lcom/google/android/gms/internal/ax;->w:Lcom/google/android/gms/internal/at;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 5000
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->f()I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:[J

    aget-wide v6, v1, v0

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_6

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:[Ljava/lang/String;

    .line 7000
    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v10

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x3f

    const/4 v1, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_4

    const/4 v6, 0x0

    move v8, v6

    move-wide v6, v4

    move-wide v4, v2

    :goto_2
    const/16 v2, 0x8

    if-ge v8, v2, :cond_3

    invoke-virtual {v10, v8, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v11

    add-int/2addr v3, v11

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-le v2, v3, :cond_2

    const-wide/16 v2, 0x1

    :goto_3
    long-to-int v11, v4

    shl-long/2addr v2, v11

    or-long/2addr v6, v2

    add-int/lit8 v2, v8, 0x1

    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    move v8, v2

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_1

    :cond_4
    const-string v1, "%016X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5000
    aput-object v1, v9, v0

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Lcom/google/android/gms/internal/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Lcom/google/android/gms/internal/be;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Lcom/google/android/gms/internal/be;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vfp"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Lcom/google/android/gms/internal/bg;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Lcom/google/android/gms/internal/be;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    return-void
.end method
