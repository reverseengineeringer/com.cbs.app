.class public final Lcom/google/android/gms/internal/ds;
.super Lcom/google/android/gms/internal/dm$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/b;

.field private b:Lcom/google/android/gms/internal/dt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dm$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31000
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32000
    :catch_0
    move-exception v0

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    move-object v0, v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v1, v1, Lcom/google/ads/a/a/a;

    if-eqz v1, :cond_2

    const-string v1, "adJson"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tagForChildDirectedTreatment"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/b/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    check-cast v0, Lcom/google/android/gms/ads/b/c;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/c;->d()Landroid/view/View;

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
    .locals 12

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/c/a/a;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 14000
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/c/a/a;

    move-object v9, v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/dr;

    iget-wide v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget v4, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    iget-object v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    iget-boolean v7, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    iget v8, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/dr;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/b;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/b;-><init>(Lcom/google/android/gms/ads/internal/reward/mediation/client/a;)V

    iget v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15000
    :catch_0
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ds;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 12

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/b/e;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 8000
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/b/e;

    move-object v9, v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/dr;

    iget-wide v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v4, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    iget-object v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    iget-boolean v7, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    iget v8, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/dr;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/dt;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dn;)V

    iget v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    move-object/from16 v0, p4

    invoke-direct {p0, p3, v3, v0}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v9

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/b/e;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/f;Landroid/os/Bundle;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9000
    :catch_0
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V
    .locals 12
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

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/b/g;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationAdapter is not a MediationNativeAdapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/b/g;

    move-object v11, v0

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/dw;

    iget-wide v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v4, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    iget-object v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    iget-boolean v7, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    iget v8, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/dw;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;)V

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/dt;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dn;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ds;->b:Lcom/google/android/gms/internal/dt;

    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ds;->b:Lcom/google/android/gms/internal/dt;

    iget v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    move-object/from16 v0, p4

    invoke-direct {p0, p3, v3, v0}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v11

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/b/g;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/h;Landroid/os/Bundle;Lcom/google/android/gms/ads/b/l;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12000
    :catch_0
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_3
    const/4 v8, 0x0

    goto :goto_2
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

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ds;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V
    .locals 11

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/b/c;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 4000
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/b/c;

    move-object v10, v0

    iget-object v2, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    if-eqz v2, :cond_1

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/dr;

    iget-wide v6, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v4, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    iget-object v6, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    iget-boolean v7, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    iget v8, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/dr;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/dt;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dn;)V

    iget v3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    move-object/from16 v0, p5

    invoke-direct {p0, p4, v3, v0}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget v3, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:I

    iget v7, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->c:I

    iget-object v8, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/google/android/gms/ads/f;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v7

    move-object v3, v10

    move-object v8, v2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/ads/b/c;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5000
    :catch_0
    move-exception v2

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v3, 0x0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/c/a/a;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16000
    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 17000
    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/c/a/a;

    move-object v9, v0

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/dr;

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    const-wide/16 v10, -0x1

    cmp-long v4, v6, v10

    if-nez v4, :cond_3

    :goto_1
    iget v4, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    iget-object v6, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    iget-boolean v7, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    iget v8, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/dr;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    iget v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    return-void

    :cond_2
    move-object v5, v3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 18000
    :catch_0
    move-exception v2

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/b/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 26000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    check-cast v0, Lcom/google/android/gms/ads/b/e;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/e;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 27000
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 28000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/b;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 29000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/b;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 30000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/c/a/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 20000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    return-void
.end method

.method public final g()Z
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/c/a/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22000
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 23000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    check-cast v0, Lcom/google/android/gms/ads/c/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/c/a/a;->d()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 24000
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final h()Lcom/google/android/gms/internal/dp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->b:Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/ads/b/i;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/b/j;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/du;

    check-cast v0, Lcom/google/android/gms/ads/b/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/du;-><init>(Lcom/google/android/gms/ads/b/j;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Lcom/google/android/gms/internal/dq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->b:Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dt;->o()Lcom/google/android/gms/ads/b/i;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/b/k;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/dv;

    check-cast v0, Lcom/google/android/gms/ads/b/k;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/dv;-><init>(Lcom/google/android/gms/ads/b/k;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v0, v0, Lcom/google/android/gms/internal/id;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a v2 MediationBannerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    check-cast v0, Lcom/google/android/gms/internal/id;

    invoke-interface {v0}, Lcom/google/android/gms/internal/id;->e()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    instance-of v0, v0, Lcom/google/android/gms/internal/ie;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a v2 MediationInterstitialAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ds;->a:Lcom/google/android/gms/ads/b/b;

    check-cast v0, Lcom/google/android/gms/internal/ie;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ie;->d()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
