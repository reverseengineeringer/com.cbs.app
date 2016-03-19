.class public final Lcom/google/android/gms/ads/internal/k;
.super Lcom/google/android/gms/ads/internal/c;

# interfaces
.implements Lcom/google/android/gms/internal/cm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/k$a;,
        Lcom/google/android/gms/ads/internal/k$b;
    }
.end annotation


# instance fields
.field protected transient l:Z

.field private m:Z

.field private n:F

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/k;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "background"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/String;

    return-void
.end method

.method private B()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/k$a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/k$a;-><init>(Lcom/google/android/gms/ads/internal/k;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/k$a;->e()Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/k;->l:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const-string v2, "gmob-apps"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/gw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/k;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/k;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/k;->n:F

    return v0
.end method


# virtual methods
.method protected final A()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/hs;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->f()Lcom/google/android/gms/internal/hv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/internal/bg;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/ads/internal/d;

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/hv;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/hs;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ax;->S:Lcom/google/android/gms/internal/at;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v1

    .line 0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v11

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;ZLcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ei;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->w:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/hs;->b(Ljava/lang/String;)V

    return-object v10
.end method

.method public final a(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/k;->m:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/k;->n:F

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/bg;)Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/bg;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/gk;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->a(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/n;->d()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->B:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gk;Landroid/view/View;)Lcom/google/android/gms/internal/x;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    return-void
.end method

.method public final f_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/k;->q()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->f_()V

    return-void
.end method

.method public final g()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x5

    .line 0
    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-nez v0, :cond_1

    .line 3000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ax;->ae:Lcom/google/android/gms/internal/at;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/k;->l:Z

    if-nez v1, :cond_2

    .line 5000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    const-string v5, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/k;->a(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/gw;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/k;->a(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    .line 7000
    iget v0, v0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    if-ne v0, v10, :cond_5

    move v0, v10

    .line 0
    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gk;->k:Z

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 8000
    :catch_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/k;->B()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v4

    .line 7000
    goto :goto_2

    .line 0
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-nez v0, :cond_7

    .line 9000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0

    .line 0
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0

    .line 0
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/hs;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gk;)Lcom/google/android/gms/internal/x;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->g(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ax;->ap:Lcom/google/android/gms/internal/at;

    .line 11000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    new-instance v0, Lcom/google/android/gms/ads/internal/k$b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->o:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/ads/internal/k$b;-><init>(Lcom/google/android/gms/ads/internal/k;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/k$b;->e()Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :cond_a
    move-object v1, v3

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/k;->A()Z

    move-result v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZLjava/lang/String;ZF)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->p()I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget v6, v1, Lcom/google/android/gms/internal/gk;->g:I

    :cond_c
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v5, v2, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v8, v2, Lcom/google/android/gms/internal/gk;->v:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/internal/hs;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->c()Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    .line 12000
    invoke-static {v0, v1, v10}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    goto/16 :goto_0
.end method

.method protected final n()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/k;->B()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->n()Z

    move-result v0

    return v0
.end method

.method protected final p()Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/k;->l:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
