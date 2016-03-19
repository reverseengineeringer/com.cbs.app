.class public abstract Lcom/google/android/gms/ads/internal/a;
.super Lcom/google/android/gms/ads/internal/client/u$a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/a;
.implements Lcom/google/android/gms/ads/internal/overlay/j;
.implements Lcom/google/android/gms/ads/internal/request/a$a;
.implements Lcom/google/android/gms/internal/ce;
.implements Lcom/google/android/gms/internal/fh$a;
.implements Lcom/google/android/gms/internal/go;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/bg;

.field protected b:Lcom/google/android/gms/internal/be;

.field protected c:Lcom/google/android/gms/internal/be;

.field d:Z

.field protected final e:Lcom/google/android/gms/ads/internal/n;

.field protected final f:Lcom/google/android/gms/ads/internal/zzq;

.field protected transient g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field protected final h:Lcom/google/android/gms/internal/w;

.field protected final i:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/n;Lcom/google/android/gms/ads/internal/d;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/u$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v0, Lcom/google/android/gms/ads/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/n;-><init>(Lcom/google/android/gms/ads/internal/a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/n;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/a;->i:Lcom/google/android/gms/ads/internal/d;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gw;->b(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm;->i()Lcom/google/android/gms/internal/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/w;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 0
    const-string v0, "ufe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 18000
    :catch_0
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 19000
    :catch_1
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method private r()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22000
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/q;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 23000
    :catch_0
    move-exception v1

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/a/c;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gx;->d()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget v0, v0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->requestLayout()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/p;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->m:Lcom/google/android/gms/ads/internal/client/p;

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/q;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/w;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->o:Lcom/google/android/gms/ads/internal/client/w;

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/x;)V
    .locals 1

    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->p:Lcom/google/android/gms/ads/internal/client/x;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/bk;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setOnCustomRenderedAdLoadedListener is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/es;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setInAppPurchaseListener is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ew;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setPlayStorePurchaseParams is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/gk$a;)V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    iget-object v3, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v4, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->n:J

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/bg;->a(J)Lcom/google/android/gms/internal/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "stc"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    iget-object v1, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/be;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "arf"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->a()Lcom/google/android/gms/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/internal/be;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    const-string v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->g:Lcom/google/android/gms/internal/gr;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->k:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->o:Lcom/google/android/gms/ads/internal/client/w;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->o:Lcom/google/android/gms/ads/internal/client/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 14000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gl;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzq;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/client/q;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 29000
    :catch_0
    move-exception v1

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/e;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/i;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/i;->b()Lcom/google/android/gms/ads/internal/client/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/i;->a()Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object p1

    .line 0
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_1

    .line 4000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/a;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5000
    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    .line 6000
    new-instance v1, Lcom/google/android/gms/internal/bg;

    sget-object v0, Lcom/google/android/gms/internal/ax;->G:Lcom/google/android/gms/internal/at;

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 6000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "load_ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/bg;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    new-instance v0, Lcom/google/android/gms/internal/be;

    invoke-direct {v0, v6, v7, v4, v4}, Lcom/google/android/gms/internal/be;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/be;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/be;

    new-instance v0, Lcom/google/android/gms/internal/be;

    invoke-direct {v0, v6, v7, v4, v4}, Lcom/google/android/gms/internal/be;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/be;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/internal/be;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->a()Lcom/google/android/gms/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/be;

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") to get test ads on this device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/bg;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/bg;)Z
.end method

.method a(Lcom/google/android/gms/internal/gk;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/n;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->b(Lcom/google/android/gms/internal/gk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->b()V

    .line 1000
    :cond_0
    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->o:Lcom/google/android/gms/ads/internal/client/w;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->r:Lcom/google/android/gms/internal/ew;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->q:Lcom/google/android/gms/internal/es;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->x:Lcom/google/android/gms/internal/bk;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->p:Lcom/google/android/gms/ads/internal/client/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->a(Z)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->removeAllViews()V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->b()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->c()V

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    .line 0
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/gk;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->c:Lcom/google/android/gms/internal/be;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "awr"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    iget v0, p1, Lcom/google/android/gms/internal/gk;->d:I

    if-eq v0, v5, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/gk;->d:I

    if-eq v0, v7, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzq;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gm;->a(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gk;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/gk;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9000
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/gk;->d:I

    if-eq v0, v5, :cond_4

    iget v0, p1, Lcom/google/android/gms/internal/gk;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->a(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->A:Lcom/google/android/gms/internal/gp;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v1, Lcom/google/android/gms/internal/gp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gp;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->A:Lcom/google/android/gms/internal/gp;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->h:Lcom/google/android/gms/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/internal/gk;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/internal/gk;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    .line 10000
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/gk;->t:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gl;->a(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/gk;->u:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gl;->b(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gl;->a(Z)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gk;->k:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gl;->b(Z)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    const-string v2, "is_mraid"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gk;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    const-string v2, "is_mediation"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gk;->k:Z

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    const-string v2, "is_video"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->b:Lcom/google/android/gms/internal/be;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ttc"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm;->d()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm;->d()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->a:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/bg;)Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/a;->p()Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "0"

    goto :goto_1

    :cond_9
    const-string v0, "0"

    goto :goto_2

    :cond_a
    const-string v0, "0"

    goto :goto_3
.end method

.method protected b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 1

    .prologue
    .line 0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    :goto_0
    return-void

    .line 17000
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->e:Lcom/google/android/gms/ads/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
.end method

.method protected final c(Lcom/google/android/gms/internal/gk;)V
    .locals 3

    .prologue
    .line 0
    if-nez p1, :cond_1

    .line 30000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    .line 31000
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gl;->a()V

    iget-object v0, p1, Lcom/google/android/gms/internal/gk;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/gk;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->g:Lcom/google/android/gms/internal/gr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-nez v0, :cond_1

    .line 11000
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    .line 12000
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->l:Lcom/google/android/gms/internal/gl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gl;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->m:Lcom/google/android/gms/ads/internal/client/p;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->m:Lcom/google/android/gms/ads/internal/client/p;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/p;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13000
    :catch_0
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq;->a(Z)V

    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-nez v0, :cond_1

    .line 15000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    :goto_0
    return-void

    .line 16000
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk;->f:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 2

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/ThinAdSizeParcel;-><init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    return v0
.end method

.method public final m()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/a;->r()Z

    return-void
.end method

.method protected n()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20000
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/q;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 21000
    :catch_0
    move-exception v1

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method protected final o()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24000
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/q;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 25000
    :catch_0
    move-exception v1

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method protected p()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26000
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/a;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzq;->n:Lcom/google/android/gms/ads/internal/client/q;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/q;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 27000
    :catch_0
    move-exception v1

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/a;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/gk;)V

    return-void
.end method
