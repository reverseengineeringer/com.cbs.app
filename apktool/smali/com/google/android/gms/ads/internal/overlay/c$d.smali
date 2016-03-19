.class final Lcom/google/android/gms/ads/internal/overlay/c$d;
.super Lcom/google/android/gms/internal/gr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/c;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c$d;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/c$d;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c$d;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Lcom/google/android/gms/ads/internal/overlay/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c$d;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c$d;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Lcom/google/android/gms/ads/internal/overlay/c;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c$d;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->e:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c$d;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->f:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/c$d$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c$d$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/c$d;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
