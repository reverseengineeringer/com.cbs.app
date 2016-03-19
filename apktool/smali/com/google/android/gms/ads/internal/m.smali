.class public final Lcom/google/android/gms/ads/internal/m;
.super Lcom/google/android/gms/ads/internal/b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/formats/d;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/m$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/m$2;-><init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/ads/internal/formats/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/formats/e;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/m$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/m$3;-><init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/ads/internal/formats/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/bx;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->u:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bx;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 1

    const-string v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bk;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/bv;)V
    .locals 1

    const-string v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->s:Lcom/google/android/gms/internal/bv;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/bw;)V
    .locals 1

    const-string v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->t:Lcom/google/android/gms/internal/bw;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/es;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V
    .locals 9

    .prologue
    .line 0
    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p1, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gk$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/m$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/m$1;-><init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/gk$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->d()Lcom/google/android/gms/internal/fh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/m;->j:Lcom/google/android/gms/internal/dl;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/fh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/internal/fh$a;Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/fi;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdRenderer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/jp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/by;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->y:Ljava/util/List;

    return-void
.end method

.method protected final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/gk;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/n;->d()Z

    move-result v0

    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z
    .locals 13

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/gk;->k:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->h()Lcom/google/android/gms/internal/dp;

    move-result-object v12

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->i()Lcom/google/android/gms/internal/dq;

    move-result-object v9

    if-eqz v12, :cond_2

    .line 2000
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/d;

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->d()Lcom/google/android/gms/internal/bm;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->d()Lcom/google/android/gms/internal/bm;

    move-result-object v4

    :goto_0
    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->f()D

    move-result-wide v6

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->h()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v12}, Lcom/google/android/gms/internal/dp;->l()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/bm;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/a;Landroid/os/Bundle;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/formats/g;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    invoke-direct {v1, v2, p0, v3, v12}, Lcom/google/android/gms/ads/internal/formats/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/dp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/d;->a(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/formats/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z

    move-result v0

    :goto_2
    return v0

    .line 2000
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 0
    :cond_2
    if-eqz v9, :cond_4

    .line 3000
    :try_start_1
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/e;

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/bm;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->d()Lcom/google/android/gms/internal/bm;

    move-result-object v4

    :goto_3
    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->f()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/dq;->j()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/bm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/a;Landroid/os/Bundle;)V

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/formats/g;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    invoke-direct {v1, v2, p0, v3, v9}, Lcom/google/android/gms/ads/internal/formats/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/dq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/e;->a(Lcom/google/android/gms/ads/internal/formats/h;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/formats/e;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1

    .line 3000
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 4000
    :cond_4
    const/4 v0, 0x5

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/internal/gk;->w:Lcom/google/android/gms/ads/internal/formats/h$a;

    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->t:Lcom/google/android/gms/internal/bw;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->w:Lcom/google/android/gms/ads/internal/formats/h$a;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/e;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/formats/e;)V

    goto :goto_1

    :cond_6
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->s:Lcom/google/android/gms/internal/bv;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/internal/gk;->w:Lcom/google/android/gms/ads/internal/formats/h$a;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/ads/internal/formats/d;)V

    goto :goto_1

    :cond_7
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/jp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/f;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/f;->k()Ljava/lang/String;

    move-result-object v0

    .line 6000
    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/m$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/ads/internal/m$4;-><init>(Lcom/google/android/gms/ads/internal/m;Ljava/lang/String;Lcom/google/android/gms/internal/gk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 7000
    :cond_8
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/m;->a(I)Z

    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public final b(Lcom/google/android/gms/internal/jp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bx;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->u:Lcom/google/android/gms/internal/jp;

    return-void
.end method

.method public final d()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/m;->a(Lcom/google/android/gms/internal/gk;Z)V

    return-void
.end method

.method public final x()Lcom/google/android/gms/internal/jp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/by;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/m;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    return-object v0
.end method
