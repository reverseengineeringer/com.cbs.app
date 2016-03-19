.class final Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f",
        "<",
        "Lcom/google/android/gms/cast/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/cast/b$c;

    .line 1000
    invoke-interface {p1}, Lcom/google/android/gms/cast/b$c;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "Unable to stop the remote display, result unsuccessful"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->b(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/view/Display;

    .line 0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "remote display stopped"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    goto :goto_0
.end method
