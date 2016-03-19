.class public final Lcom/google/android/gms/ads/internal/client/h;
.super Lcom/google/android/gms/a/f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/f",
        "<",
        "Lcom/google/android/gms/ads/internal/client/v;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dk;I)Lcom/google/android/gms/ads/internal/client/u;
    .locals 7

    .prologue
    .line 0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/v;

    const v5, 0x7bd338

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/v;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;II)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/u$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/u;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/f$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    .line 3000
    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x0

    goto :goto_0

    .line 3000
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/u;
    .locals 7

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dk;I)Lcom/google/android/gms/ads/internal/client/u;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/f;

    invoke-static {}, Lcom/google/android/gms/ads/internal/d;->a()Lcom/google/android/gms/ads/internal/d;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V

    :cond_1
    return-object v0
.end method

.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 4000
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/v$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/v;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/u;
    .locals 7

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dk;I)Lcom/google/android/gms/ads/internal/client/u;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2000
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v5}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/k;

    invoke-static {}, Lcom/google/android/gms/ads/internal/d;->a()Lcom/google/android/gms/ads/internal/d;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/d;)V

    :cond_1
    return-object v0
.end method
