.class public final Lcom/google/android/gms/internal/dx;
.super Lcom/google/android/gms/internal/dm$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/a/h;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/a/g;",
        ">",
        "Lcom/google/android/gms/internal/dm$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/a/d",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/a/d;Lcom/google/ads/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/a/d",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dm$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/ads/a/h;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/ads/a/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    .prologue
    .line 0
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    invoke-interface {v0}, Lcom/google/ads/a/d;->b()Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/g;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/a/c;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    instance-of v0, v0, Lcom/google/ads/a/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    check-cast v0, Lcom/google/ads/a/e;

    invoke-interface {v0}, Lcom/google/ads/a/e;->c()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2000
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/reward/mediation/client/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    instance-of v0, v0, Lcom/google/ads/a/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 7000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/dy;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/dn;)V

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/String;)Lcom/google/ads/a/g;

    invoke-static {p2}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/ads/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8000
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/c;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dn;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    instance-of v0, v0, Lcom/google/ads/a/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 4000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/dy;

    invoke-direct {v0, p6}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/dn;)V

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    iget v0, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/dx;->a(Ljava/lang/String;)Lcom/google/ads/a/g;

    invoke-static {p2}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Lcom/google/ads/b;

    invoke-static {p3}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/ads/a/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5000
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    instance-of v0, v0, Lcom/google/ads/a/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dx;->a:Lcom/google/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 10000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 0
    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/google/android/gms/internal/dp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/dq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
