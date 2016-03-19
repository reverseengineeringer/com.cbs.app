.class public final Lcom/google/android/gms/ads/internal/formats/g;
.super Lcom/google/android/gms/ads/internal/formats/h;


# instance fields
.field private a:Lcom/google/android/gms/internal/dp;

.field private b:Lcom/google/android/gms/internal/dq;

.field private final c:Lcom/google/android/gms/ads/internal/m;

.field private d:Lcom/google/android/gms/ads/internal/formats/h;

.field private e:Z

.field private f:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/aa;Lcom/google/android/gms/internal/m;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/g;->c:Lcom/google/android/gms/ads/internal/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/dp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/dq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 0
    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/g;->d()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->d:Lcom/google/android/gms/ads/internal/formats/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->d:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/h;->a()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->q()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dp;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dp;->i()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dq;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dq;->g()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/g;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/dp;->b(Lcom/google/android/gms/a/c;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->e:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/dq;->b(Lcom/google/android/gms/a/c;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    :try_start_4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->d:Lcom/google/android/gms/ads/internal/formats/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->d:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/formats/h;->a(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->c:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->e()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dp;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/dp;->a(Lcom/google/android/gms/a/c;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->b:Lcom/google/android/gms/internal/dq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dq;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->a:Lcom/google/android/gms/internal/dp;

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/dp;->a(Lcom/google/android/gms/a/c;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/formats/h;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/g;->d:Lcom/google/android/gms/ads/internal/formats/h;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/g;->e:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lcom/google/android/gms/internal/hs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
