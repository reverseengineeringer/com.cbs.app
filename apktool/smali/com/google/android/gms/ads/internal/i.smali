.class public final Lcom/google/android/gms/ads/internal/i;
.super Lcom/google/android/gms/ads/internal/client/r$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/internal/client/q;

.field private final c:Lcom/google/android/gms/internal/dl;

.field private final d:Lcom/google/android/gms/internal/bv;

.field private final e:Lcom/google/android/gms/internal/bw;

.field private final f:Lcom/google/android/gms/internal/jp;
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

.field private final g:Lcom/google/android/gms/internal/jp;
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

.field private final h:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/m;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/client/q;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dl;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/ads/internal/client/q;",
            "Lcom/google/android/gms/internal/bv;",
            "Lcom/google/android/gms/internal/bw;",
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/by;",
            ">;",
            "Lcom/google/android/gms/internal/jp",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bx;",
            ">;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/r$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->m:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/i;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/i;->c:Lcom/google/android/gms/internal/dl;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/i;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/ads/internal/client/q;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/bw;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/bv;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/jp;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/jp;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/i;->h:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/i;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/i;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/i;->l:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/bv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/bv;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/bw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/bw;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/jp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/jp;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->e:Lcom/google/android/gms/internal/bw;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->d:Lcom/google/android/gms/internal/bv;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->f:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jp;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/ads/internal/client/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->b:Lcom/google/android/gms/ads/internal/client/q;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/internal/jp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->g:Lcom/google/android/gms/internal/jp;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/internal/i;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/i;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/ads/internal/i;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->h:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/i$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/i$1;-><init>(Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    .line 1000
    sget-object v1, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/i;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/i;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/m;->l()Z

    move-result v0

    :goto_0
    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final c()Lcom/google/android/gms/ads/internal/m;
    .locals 6

    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/i;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/i;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/i;->c:Lcom/google/android/gms/internal/dl;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/i;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method
