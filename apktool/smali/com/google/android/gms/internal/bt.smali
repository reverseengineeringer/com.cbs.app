.class public final Lcom/google/android/gms/internal/bt;
.super Lcom/google/android/gms/ads/formats/d;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bs;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/bn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bs;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bt;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1000
    instance-of v3, v0, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/bm$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    .line 0
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/bt;->b:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/bn;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bm;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to get image."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->d()Lcom/google/android/gms/internal/bm;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/bn;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bm;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/bt;->c:Lcom/google/android/gms/internal/bn;

    return-void

    :cond_2
    move-object v0, v1

    .line 1000
    goto :goto_1

    .line 0
    :catch_1
    move-exception v0

    const-string v2, "Failed to get icon."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private h()Lcom/google/android/gms/a/c;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->g()Lcom/google/android/gms/a/c;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to retrieve native ad engine."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bt;->h()Lcom/google/android/gms/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get headline."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get body."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/ads/formats/a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->c:Lcom/google/android/gms/internal/bn;

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->e()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get call to action."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->a:Lcom/google/android/gms/internal/bs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bs;->f()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get attribution."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
