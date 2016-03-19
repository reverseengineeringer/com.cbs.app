.class final Lcom/google/android/gms/ads/internal/k$b;
.super Lcom/google/android/gms/internal/gr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/k;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/k;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k$b;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/k$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$b;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k$b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/k;->A()Z

    move-result v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/k$b;->c:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/k;->a(Lcom/google/android/gms/ads/internal/k;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/k;->b(Lcom/google/android/gms/ads/internal/k;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZLjava/lang/String;ZF)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->p()I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget v6, v1, Lcom/google/android/gms/internal/gk;->g:I

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v5, v5, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/k$b;->a:Lcom/google/android/gms/ads/internal/k;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v8, v8, Lcom/google/android/gms/internal/gk;->v:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/internal/hs;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/k$b$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/k$b$1;-><init>(Lcom/google/android/gms/ads/internal/k$b;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
