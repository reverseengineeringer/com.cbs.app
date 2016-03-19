.class public abstract Lcom/google/android/gms/internal/fg;
.super Lcom/google/android/gms/internal/gr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fg$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/fh$a;

.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/lang/Object;

.field protected final d:Ljava/lang/Object;

.field protected final e:Lcom/google/android/gms/internal/gk$a;

.field protected f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/fh$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gr;-><init>(B)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fg;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fg;->e:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, p2, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/fh$a;

    return-void
.end method


# virtual methods
.method protected abstract a(I)Lcom/google/android/gms/internal/gk;
.end method

.method public final a()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/fg;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 1000
    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/fg;->e:Lcom/google/android/gms/internal/gk$a;

    iget v0, v0, Lcom/google/android/gms/internal/gk$a;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/fg;->a(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/fg$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fg;->a(I)Lcom/google/android/gms/internal/gk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/fg$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/fg$2;-><init>(Lcom/google/android/gms/internal/fg;Lcom/google/android/gms/internal/gk;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fg$a;->a()I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fg$a;->getMessage()Ljava/lang/String;

    .line 2000
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fg;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/fg$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/fg$1;-><init>(Lcom/google/android/gms/internal/fg;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fg$a;->getMessage()Ljava/lang/String;

    .line 3000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/fg;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fg;->f:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected abstract a(J)V
.end method

.method protected final a(Lcom/google/android/gms/internal/gk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/fh$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fh$a;->b(Lcom/google/android/gms/internal/gk;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
