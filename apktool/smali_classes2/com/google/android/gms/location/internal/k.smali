.class public final Lcom/google/android/gms/location/internal/k;
.super Lcom/google/android/gms/location/internal/a;


# instance fields
.field private final e:Lcom/google/android/gms/location/internal/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/location/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/j;)V

    new-instance v0, Lcom/google/android/gms/location/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/k;->a:Lcom/google/android/gms/location/internal/o;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/location/internal/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/o;)V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/internal/j;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/f;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/f;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/f;Landroid/os/Looper;Lcom/google/android/gms/location/internal/f;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/f;Landroid/os/Looper;Lcom/google/android/gms/location/internal/f;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/f;Lcom/google/android/gms/location/internal/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/internal/j;->a(Lcom/google/android/gms/location/f;Lcom/google/android/gms/location/internal/f;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/k;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/j;->a()V

    iget-object v0, p0, Lcom/google/android/gms/location/internal/k;->e:Lcom/google/android/gms/location/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/j;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/location/internal/a;->c()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
