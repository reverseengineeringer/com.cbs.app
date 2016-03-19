.class public final Lcom/google/android/gms/ads/internal/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzq$zza;
    }
.end annotation


# instance fields
.field public A:Lcom/google/android/gms/internal/gp;

.field B:Landroid/view/View;

.field public C:I

.field D:Z

.field E:Z

.field private F:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gl;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:Lcom/google/android/gms/internal/hd;

.field private J:Z

.field private K:Z

.field private L:Z

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/m;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field f:Lcom/google/android/gms/ads/internal/zzq$zza;

.field public g:Lcom/google/android/gms/internal/gr;

.field public h:Lcom/google/android/gms/internal/fi;

.field public i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public j:Lcom/google/android/gms/internal/gk;

.field public k:Lcom/google/android/gms/internal/gk$a;

.field public l:Lcom/google/android/gms/internal/gl;

.field m:Lcom/google/android/gms/ads/internal/client/p;

.field n:Lcom/google/android/gms/ads/internal/client/q;

.field o:Lcom/google/android/gms/ads/internal/client/w;

.field p:Lcom/google/android/gms/ads/internal/client/x;

.field q:Lcom/google/android/gms/internal/es;

.field r:Lcom/google/android/gms/internal/ew;

.field s:Lcom/google/android/gms/internal/bv;

.field t:Lcom/google/android/gms/internal/bw;

.field u:Lcom/google/android/gms/internal/jp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bx;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/google/android/gms/internal/jp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/by;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field x:Lcom/google/android/gms/internal/bk;

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/google/android/gms/ads/internal/purchase/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;B)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->A:Lcom/google/android/gms/internal/gp;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->B:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->D:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->E:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->F:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzq;->G:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzq;->H:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzq;->J:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzq;->K:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->L:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ax;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm;->d()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ax;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->h()Lcom/google/android/gms/internal/gm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gm;->d()Lcom/google/android/gms/internal/ba;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ba;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzq;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzq;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/m;

    new-instance v1, Lcom/google/android/gms/ads/internal/h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/h;-><init>(Lcom/google/android/gms/ads/internal/zzq;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/m;-><init>(Lcom/google/android/gms/internal/i;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    new-instance v0, Lcom/google/android/gms/internal/hd;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/hd;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->I:Lcom/google/android/gms/internal/hd;

    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->v:Lcom/google/android/gms/internal/jp;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/zzq$zza;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzq$zza;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->I:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hd;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hu;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    aget v4, v2, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    aget v2, v2, v0

    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzq;->G:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzq;->H:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzq;->G:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzq;->H:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v2, v2, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzq;->G:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzq;->H:I

    if-nez p1, :cond_6

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/hu;->a(IIZ)V

    .line 2000
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->f:Lcom/google/android/gms/ads/internal/zzq$zza;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/ads/internal/zzq$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v4, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzq;->J:Z

    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzq;->K:Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 0
    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->F:Ljava/util/HashSet;

    return-object v0
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gl;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->F:Ljava/util/HashSet;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    if-nez v0, :cond_0

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->stopLoading()V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->g:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->g:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->c()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fi;->c()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->b:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->destroy()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->j:Lcom/google/android/gms/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk;->m:Lcom/google/android/gms/internal/dm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dm;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->K:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->L:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->K:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->L:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->b(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->L:Z

    return-void
.end method
