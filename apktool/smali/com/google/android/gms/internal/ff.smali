.class public final Lcom/google/android/gms/internal/ff;
.super Lcom/google/android/gms/internal/fd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private g:Lcom/google/android/gms/internal/fe;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/fh$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/fh$a;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ff;->c:Lcom/google/android/gms/internal/hs;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fe;-><init>(Lcom/google/android/gms/internal/hu$a;Lcom/google/android/gms/internal/hs;IIB)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ff;->g:Lcom/google/android/gms/internal/fe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->c:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hu$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->g:Lcom/google/android/gms/internal/fe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ff;->e:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fe;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    return-void

    :cond_0
    iget v3, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    iget v4, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    goto :goto_0
.end method

.method protected final b()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/ff;->g:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fe;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->g:Lcom/google/android/gms/internal/fe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method
