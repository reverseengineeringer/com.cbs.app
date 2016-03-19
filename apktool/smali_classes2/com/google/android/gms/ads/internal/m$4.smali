.class final Lcom/google/android/gms/ads/internal/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/gk;

.field final synthetic c:Lcom/google/android/gms/ads/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/m;Ljava/lang/String;Lcom/google/android/gms/internal/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/m$4;->c:Lcom/google/android/gms/ads/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/m$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/m$4;->b:Lcom/google/android/gms/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m$4;->c:Lcom/google/android/gms/ads/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/by;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m$4;->b:Lcom/google/android/gms/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/internal/gk;->w:Lcom/google/android/gms/ads/internal/formats/h$a;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/by;->a(Lcom/google/android/gms/internal/bu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method
