.class public final Lcom/google/android/gms/internal/ir;
.super Lcom/google/android/gms/common/internal/n;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n",
        "<",
        "Lcom/google/android/gms/internal/it;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/cast/internal/l;


# instance fields
.field private e:Lcom/google/android/gms/cast/b$b;

.field private f:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/l;

    const-string v1, "CastRemoteDisplayClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ir;->a:Lcom/google/android/gms/cast/internal/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/b$b;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V
    .locals 7

    const/16 v3, 0x53

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    sget-object v0, Lcom/google/android/gms/internal/ir;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "instance created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ir;->e:Lcom/google/android/gms/cast/b$b;

    iput-object p4, p0, Lcom/google/android/gms/internal/ir;->f:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/internal/it$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/it;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.service.START"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/is;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ir;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/it;->a(Lcom/google/android/gms/internal/is;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    return-object v0
.end method

.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ir;->a:Lcom/google/android/gms/cast/internal/l;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ir;->e:Lcom/google/android/gms/cast/b$b;

    iput-object v3, p0, Lcom/google/android/gms/internal/ir;->f:Lcom/google/android/gms/cast/CastDevice;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ir;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/it;

    invoke-interface {v0}, Lcom/google/android/gms/internal/it;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->c()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->c()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
