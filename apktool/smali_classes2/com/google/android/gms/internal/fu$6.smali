.class final Lcom/google/android/gms/internal/fu$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/k;

.field final synthetic c:Lcom/google/android/gms/internal/fu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$6;->c:Lcom/google/android/gms/internal/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$6;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/fu$6;->b:Lcom/google/android/gms/ads/internal/request/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fu$6;->c:Lcom/google/android/gms/internal/fu;

    iget-object v2, p0, Lcom/google/android/gms/internal/fu$6;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fu;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/fu$6;->b:Lcom/google/android/gms/ads/internal/request/k;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/request/k;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/Throwable;Z)V

    .line 1000
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-object v0, v1

    goto :goto_0

    .line 2000
    :catch_1
    move-exception v0

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method
