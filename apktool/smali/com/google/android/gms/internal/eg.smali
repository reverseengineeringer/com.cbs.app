.class public final Lcom/google/android/gms/internal/eg;
.super Lcom/google/android/gms/internal/eh;

# interfaces
.implements Lcom/google/android/gms/internal/ci;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field private final h:Lcom/google/android/gms/internal/hs;

.field private final i:Landroid/content/Context;

.field private final j:Landroid/view/WindowManager;

.field private final k:Lcom/google/android/gms/internal/ap;

.field private l:F

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;Landroid/content/Context;Lcom/google/android/gms/internal/ap;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eh;-><init>(Lcom/google/android/gms/internal/hs;)V

    iput v0, p0, Lcom/google/android/gms/internal/eg;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->g:I

    iput-object p1, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    iput-object p2, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/eg;->k:Lcom/google/android/gms/internal/ap;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->j:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gw;->c(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/eg;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/eg;->g:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/eg;->b(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hu;->a(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/hs;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hs;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 0
    .line 2000
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->j:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/eg;->l:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eg;->m:I

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eg;->b:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eg;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/eg;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->d:I

    iget v0, p0, Lcom/google/android/gms/internal/eg;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->e:I

    .line 4000
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/eg;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->f:I

    iget v0, p0, Lcom/google/android/gms/internal/eg;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/eg;->g:I

    .line 5000
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/eg;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/eg;->c:I

    iget v3, p0, Lcom/google/android/gms/internal/eg;->d:I

    iget v4, p0, Lcom/google/android/gms/internal/eg;->e:I

    iget v5, p0, Lcom/google/android/gms/internal/eg;->l:F

    iget v6, p0, Lcom/google/android/gms/internal/eg;->m:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/eg;->a(IIIIFI)V

    .line 7000
    new-instance v0, Lcom/google/android/gms/internal/ef$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ef$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->k:Lcom/google/android/gms/internal/ap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ap;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef$a;->b(Z)Lcom/google/android/gms/internal/ef$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->k:Lcom/google/android/gms/internal/ap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ap;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef$a;->a(Z)Lcom/google/android/gms/internal/ef$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->k:Lcom/google/android/gms/internal/ap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ap;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef$a;->c(Z)Lcom/google/android/gms/internal/ef$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->k:Lcom/google/android/gms/internal/ap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ap;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef$a;->d(Z)Lcom/google/android/gms/internal/ef$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ef$a;->e(Z)Lcom/google/android/gms/internal/ef$a;

    move-result-object v0

    .line 8000
    new-instance v1, Lcom/google/android/gms/internal/ef;

    invoke-direct {v1, v0, v7}, Lcom/google/android/gms/internal/ef;-><init>(Lcom/google/android/gms/internal/ef$a;B)V

    .line 6000
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ef;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9000
    new-array v0, v9, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/hs;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    aget v0, v0, v8

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/eg;->a(II)V

    .line 10000
    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11000
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 10000
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/String;)V

    .line 0
    return-void

    .line 3000
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->a(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/eg;->d:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->a:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eg;->e:I

    goto/16 :goto_0

    .line 4000
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/hs;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eg;->f:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->h:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/eg;->g:I

    goto/16 :goto_1
.end method
