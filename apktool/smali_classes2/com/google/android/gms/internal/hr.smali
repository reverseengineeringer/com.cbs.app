.class public final Lcom/google/android/gms/internal/hr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/hs;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/ViewGroup;

.field private d:Lcom/google/android/gms/ads/internal/overlay/zzk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/hs;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/hr;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/hs;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/hs;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hr;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/hr;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/overlay/zzk;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-object v0
.end method

.method public final a(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->a(IIII)V

    :cond_0
    return-void
.end method

.method public final a(IIIII)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bf;->a()Lcom/google/android/gms/internal/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->v()Lcom/google/android/gms/internal/be;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "vpr"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bf;->a()Lcom/google/android/gms/internal/bg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/be;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v2, p0, Lcom/google/android/gms/internal/hr;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    iget-object v4, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v4}, Lcom/google/android/gms/internal/hs;->w()Lcom/google/android/gms/internal/bf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/bf;->a()Lcom/google/android/gms/internal/bg;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/be;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzk;->a(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/hu;->a(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->d:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->l()V

    :cond_0
    return-void
.end method
