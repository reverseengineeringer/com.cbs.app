.class public abstract Lcom/google/android/gms/ads/internal/c;
.super Lcom/google/android/gms/ads/internal/b;

# interfaces
.implements Lcom/google/android/gms/ads/internal/g;
.implements Lcom/google/android/gms/internal/ei;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/hs;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/hs;

    if-eqz v1, :cond_1

    .line 1000
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/hs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/bg;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v3

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move v8, v2

    move-object v9, p0

    move-object v11, p2

    move-object v12, p0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;ZLcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ei;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/gk$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hs;->b(Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->f()Lcom/google/android/gms/internal/hv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/internal/bg;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/c;->i:Lcom/google/android/gms/ads/internal/d;

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/hv;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/bk;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->x:Lcom/google/android/gms/internal/bk;

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V
    .locals 9

    iget v0, p1, Lcom/google/android/gms/internal/gk$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/c$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/c$1;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/gk$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p1, Lcom/google/android/gms/internal/gk$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->d()Lcom/google/android/gms/internal/fh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/c;->j:Lcom/google/android/gms/internal/dl;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/fh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/internal/fh$a;Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/fi;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/internal/c$2;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->a()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/gk;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->B:Landroid/view/View;

    new-instance v0, Lcom/google/android/gms/internal/gk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->k:Lcom/google/android/gms/internal/gk$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gk;-><init>(Lcom/google/android/gms/internal/gk$a;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/c;->b(Lcom/google/android/gms/internal/gk;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/gk;Z)V

    return-void
.end method

.method public final x()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->e()V

    return-void
.end method

.method public final y()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->o()Z

    return-void
.end method

.method public final z()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->n()Z

    return-void
.end method
