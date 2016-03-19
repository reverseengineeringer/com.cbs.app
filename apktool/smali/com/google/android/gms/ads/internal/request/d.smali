.class public abstract Lcom/google/android/gms/ads/internal/request/d;
.super Lcom/google/android/gms/internal/gr;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/c$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/d$b;,
        Lcom/google/android/gms/ads/internal/request/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final b:Lcom/google/android/gms/ads/internal/request/c$a;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/d;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/d;->b:Lcom/google/android/gms/ads/internal/request/c$a;

    return-void
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/32 v2, 0xea60

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/ads/internal/request/j;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v0, 0x1

    .line 0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/ads/internal/request/g;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/g;-><init>(Lcom/google/android/gms/ads/internal/request/c$a;)V

    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/ads/internal/request/j;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/k;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return v0

    :catch_0
    move-exception v2

    .line 2000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/Throwable;Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->b:Lcom/google/android/gms/ads/internal/request/c$a;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/c$a;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 3000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 4000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :catch_3
    move-exception v2

    .line 5000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/d;->d()Lcom/google/android/gms/ads/internal/request/j;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d;->b:Lcom/google/android/gms/ads/internal/request/c$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/c$a;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/d;->a_()V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/request/d;->a(Lcom/google/android/gms/ads/internal/request/j;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->i()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ju;->b()J

    move-result-wide v0

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/d;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/d;->d:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->b:Lcom/google/android/gms/ads/internal/request/c$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d;->d:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/c$a;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/d;->a_()V

    throw v0

    .line 1000
    :cond_3
    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/request/d;->a(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->d:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->b:Lcom/google/android/gms/ads/internal/request/c$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d;->d:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/c$a;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    :goto_1
    monitor-exit v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->b:Lcom/google/android/gms/ads/internal/request/c$a;

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/c$a;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/d;->d:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract a_()V
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/d;->a_()V

    return-void
.end method

.method public abstract d()Lcom/google/android/gms/ads/internal/request/j;
.end method
