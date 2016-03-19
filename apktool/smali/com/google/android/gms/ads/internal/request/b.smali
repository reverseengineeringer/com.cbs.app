.class public final Lcom/google/android/gms/ads/internal/request/b;
.super Lcom/google/android/gms/internal/gr;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/c$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/gr;

.field b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field c:Lcom/google/android/gms/internal/dd;

.field private final d:Lcom/google/android/gms/ads/internal/request/a$a;

.field private final e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/android/gms/internal/m;

.field private i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/request/a$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/request/b;->d:Lcom/google/android/gms/ads/internal/request/a$a;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/b;->e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/b;->h:Lcom/google/android/gms/internal/m;

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ad size format from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    array-length v7, v6

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_2
    if-ne v4, v0, :cond_4

    if-ne v5, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ad size number from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    goto :goto_1

    :cond_3
    iget v1, v8, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/request/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 11000
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/gk$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/dd;

    const-wide/16 v6, -0x1

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    move v5, p1

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/gk$a;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->d:Lcom/google/android/gms/ads/internal/request/a$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/a$a;->a(Lcom/google/android/gms/internal/gk$a;)V

    return-void

    .line 12000
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v2, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/request/b;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/ads/internal/request/b;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 1000
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->h:Lcom/google/android/gms/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/m;->a()Lcom/google/android/gms/internal/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/b$1;-><init>(Lcom/google/android/gms/ads/internal/request/b;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ax;->al:Lcom/google/android/gms/internal/at;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v2

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/b;->e:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    .line 3000
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    .line 4000
    new-instance v0, Lcom/google/android/gms/ads/internal/request/c$1;

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/request/c$1;-><init>(Landroid/content/Context;)V

    .line 5000
    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/c$b;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 6000
    new-instance v0, Lcom/google/android/gms/ads/internal/request/d$a;

    invoke-direct {v0, v3, v2, p0}, Lcom/google/android/gms/ads/internal/request/d$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/d$a;->e()Ljava/util/concurrent/Future;

    .line 0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/gr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/gr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "Could not start the ad request service."

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/ads/internal/request/b;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    .line 9000
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 8000
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 8000
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/request/d$b;

    invoke-direct {v0, v3, v2, p0}, Lcom/google/android/gms/ads/internal/request/d$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 11

    .prologue
    const/4 v5, -0x2

    const/4 v3, -0x3

    const/4 v0, 0x0

    const/4 v8, 0x3

    .line 13000
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/gr;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    if-eq v1, v3, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/b$a;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/b$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/ads/internal/request/b;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 14000
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->e:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->u:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z
    :try_end_3
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_2

    :try_start_4
    new-instance v1, Lcom/google/android/gms/internal/dd;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dd;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/dd;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_4 .. :try_end_4} :catch_0

    .line 0
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/request/b;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    :try_end_5
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->v:Z

    .line 15000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gm;->a(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/aj;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aj;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 16000
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 15000
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aj;->a()V

    .line 0
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->r:Ljava/lang/String;

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/gk$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->i:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/b;->c:Lcom/google/android/gms/internal/dd;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v8, v8, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/gk$a;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->d:Lcom/google/android/gms/ads/internal/request/a$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/a$a;->a(Lcom/google/android/gms/internal/gk$a;)V

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 14000
    :catch_1
    move-exception v0

    :try_start_7
    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse mediation config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/b;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/request/b$a;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_7
    .catch Lcom/google/android/gms/ads/internal/request/b$a; {:try_start_7 .. :try_end_7} :catch_0

    .line 0
    :catch_2
    move-exception v1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v10, v0

    goto :goto_2

    :cond_5
    move-object v4, v0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/b;->a:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->c()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
