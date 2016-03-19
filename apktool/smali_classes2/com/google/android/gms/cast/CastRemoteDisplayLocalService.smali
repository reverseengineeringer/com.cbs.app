.class public abstract Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$a;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/cast/internal/l;

.field private static final b:I

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static o:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# instance fields
.field private e:Lcom/google/android/gms/common/api/b;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$b;

.field private h:Landroid/app/Notification;

.field private i:Lcom/google/android/gms/cast/CastDevice;

.field private j:Landroid/view/Display;

.field private k:Landroid/content/Context;

.field private l:Landroid/content/ServiceConnection;

.field private m:Landroid/support/v7/media/MediaRouter;

.field private final n:Landroid/support/v7/media/MediaRouter$Callback;

.field private final p:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/l;

    const-string v1, "CastRemoteDisplayLocalService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Lcom/google/android/gms/cast/internal/l;

    sget v0, Lcom/google/android/gms/R$id;->cast_notification_id:I

    sput v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->n:Landroid/support/v7/media/MediaRouter$Callback;

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$a;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;B)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->p:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->i:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public static a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1000
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "Stopping Service"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->o:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v2, "Service is already being stopped"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/internal/l;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->o:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->o:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    const-string v1, "Stopping Service"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->m:Landroid/support/v7/media/MediaRouter;

    if-eqz v1, :cond_1

    const-string v1, "Setting default route"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->m:Landroid/support/v7/media/MediaRouter;

    iget-object v2, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->m:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->g:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$b;

    if-eqz v1, :cond_2

    const-string v1, "Unregistering notification receiver"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->g:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3000
    :cond_2
    const-string v1, "stopRemoteDisplaySession"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 4000
    const-string v1, "stopRemoteDisplay"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/b;->e()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v2, "Unable to stop the remote display as the API client is not ready"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/l;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5000
    :goto_1
    const-string v1, "Stopping the remote display Service"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopForeground(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopSelf()V

    .line 6000
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->m:Landroid/support/v7/media/MediaRouter;

    if-eqz v1, :cond_4

    const-string v1, "CastRemoteDisplayLocalService calls must be done on the main thread"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    const-string v1, "removeMediaRouterCallback"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->m:Landroid/support/v7/media/MediaRouter;

    iget-object v2, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->n:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 2000
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/b;->d()V

    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->k:Landroid/content/Context;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->l:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->k:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->l:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->l:Landroid/content/ServiceConnection;

    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->k:Landroid/content/Context;

    :cond_6
    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->f:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->h:Landroid/app/Notification;

    iput-object v4, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->j:Landroid/view/Display;

    goto/16 :goto_0

    .line 1000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4000
    :cond_7
    sget-object v1, Lcom/google/android/gms/cast/b;->b:Lcom/google/android/gms/cast/c;

    iget-object v2, v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->e:Lcom/google/android/gms/common/api/b;

    invoke-interface {v1, v2}, Lcom/google/android/gms/cast/c;->a(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;

    invoke-direct {v2, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/f;)V

    goto :goto_1

    .line 2000
    :catch_0
    move-exception v1

    const-string v1, "No need to unbind service, already unbound"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "[Instance: %s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->j:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/cast/internal/l;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a:Lcom/google/android/gms/cast/internal/l;

    return-object v0
.end method
