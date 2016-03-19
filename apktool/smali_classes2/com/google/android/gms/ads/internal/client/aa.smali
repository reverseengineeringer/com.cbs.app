.class public final Lcom/google/android/gms/ads/internal/client/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/dk;

.field private final b:Lcom/google/android/gms/ads/internal/client/k;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/ads/internal/client/a;

.field private f:Lcom/google/android/gms/ads/internal/client/u;

.field private g:[Lcom/google/android/gms/ads/d;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/ViewGroup;

.field private k:Lcom/google/android/gms/ads/doubleclick/a;

.field private l:Lcom/google/android/gms/ads/purchase/a;

.field private m:Lcom/google/android/gms/ads/purchase/b;

.field private n:Lcom/google/android/gms/ads/doubleclick/b;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/k;->a()Lcom/google/android/gms/ads/internal/client/k;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/aa;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;B)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/k;->a()Lcom/google/android/gms/ads/internal/client/k;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/aa;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;B)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/dk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->a:Lcom/google/android/gms/internal/dk;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->j:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/aa;->b:Lcom/google/android/gms/ads/internal/client/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/client/zzk;->a(Z)[Lcom/google/android/gms/ads/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    aget-object v3, v3, v4

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    const-string v1, "Ads by Google"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    sget-object v4, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/client/aa;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/k;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/u;->b()V
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

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/f;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 10000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/a;)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->k:Lcom/google/android/gms/ads/doubleclick/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/m;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/m;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/w;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 13000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/b;)V
    .locals 2

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->n:Lcom/google/android/gms/ads/doubleclick/b;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/bl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/ads/doubleclick/b;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/internal/bk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 15000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/a;)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->e:Lcom/google/android/gms/ads/internal/client/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/e;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 11000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/z;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-nez v0, :cond_9

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7000
    :catch_0
    move-exception v0

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_1
    :goto_0
    return-void

    .line 4000
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->b()Lcom/google/android/gms/ads/internal/client/h;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/aa;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/aa;->a:Lcom/google/android/gms/internal/dk;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/u;

    move-result-object v0

    .line 3000
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/f;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/f;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/q;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->e:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/e;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->e:Lcom/google/android/gms/ads/internal/client/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/e;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/p;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->k:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/m;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->k:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/m;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/w;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->l:Lcom/google/android/gms/ads/purchase/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/internal/ex;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->l:Lcom/google/android/gms/ads/purchase/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ex;-><init>(Lcom/google/android/gms/ads/purchase/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/internal/es;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->m:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/internal/fc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->m:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fc;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/internal/ew;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->n:Lcom/google/android/gms/ads/doubleclick/b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/internal/bl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->n:Lcom/google/android/gms/ads/doubleclick/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/ads/doubleclick/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/internal/bk;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->c()Lcom/google/android/gms/ads/internal/client/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/x;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->o:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5000
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/u;->a()Lcom/google/android/gms/a/c;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-nez v0, :cond_a

    .line 0
    :cond_9
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/client/k;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/z;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->a:Lcom/google/android/gms/internal/dk;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/z;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dk;->a(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 5000
    :cond_a
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->j:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 6000
    :catch_1
    move-exception v0

    const/4 v0, 0x5

    :try_start_5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/purchase/a;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->m:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->l:Lcom/google/android/gms/ads/purchase/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ex;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ex;-><init>(Lcom/google/android/gms/ads/purchase/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/internal/es;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 14000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/purchase/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->l:Lcom/google/android/gms/ads/purchase/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->m:Lcom/google/android/gms/ads/purchase/b;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/aa;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fc;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/internal/ew;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 16000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->h:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->o:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/aa;->o:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 17000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/aa;->b([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/d;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/u;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    .line 2000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/d;)V
    .locals 4

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/aa;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/aa;->g:[Lcom/google/android/gms/ads/d;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/u;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    .line 12000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/u;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 8000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/aa;->f:Lcom/google/android/gms/ads/internal/client/u;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/u;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    .line 9000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method
