.class public final Lcom/google/android/gms/ads/internal/request/d$b;
.super Lcom/google/android/gms/ads/internal/request/d;

# interfaces
.implements Lcom/google/android/gms/common/api/b$b;
.implements Lcom/google/android/gms/common/api/b$c;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/ads/internal/request/e;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final d:Lcom/google/android/gms/ads/internal/request/c$a;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/d;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/d$b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/d$b;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/d$b;->d:Lcom/google/android/gms/ads/internal/request/c$a;

    sget-object v0, Lcom/google/android/gms/internal/ax;->A:Lcom/google/android/gms/internal/at;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->f:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->p()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb;->a()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/e;

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->d:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/request/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->a:Lcom/google/android/gms/ads/internal/request/e;

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->a:Lcom/google/android/gms/ads/internal/request/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/e;->p()V

    .line 0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 5000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/d$b;->e()Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    .line 3000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 4000
    new-instance v0, Lcom/google/android/gms/ads/internal/request/d$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/d$b;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/d$b;->d:Lcom/google/android/gms/ads/internal/request/c$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/d$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/c$a;)V

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->e()Ljava/util/concurrent/Future;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/d$b;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/gw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final a_()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d$b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->a:Lcom/google/android/gms/ads/internal/request/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/e;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->a:Lcom/google/android/gms/ads/internal/request/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/e;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->a:Lcom/google/android/gms/ads/internal/request/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/e;->c()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->f:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->p()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->f:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/google/android/gms/ads/internal/request/j;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/d$b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/d$b;->a:Lcom/google/android/gms/ads/internal/request/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/e;->c_()Lcom/google/android/gms/ads/internal/request/j;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
