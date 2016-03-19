.class public final Lcom/google/android/gms/internal/ca;
.super Lcom/google/android/gms/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/f",
        "<",
        "Lcom/google/android/gms/internal/bp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/bo;
    .locals 5

    .prologue
    .line 0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ca;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bp;

    const v4, 0x7bd338

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/a/c;Lcom/google/android/gms/a/c;Lcom/google/android/gms/a/c;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bo$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/f$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    .line 2000
    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x0

    goto :goto_0

    .line 2000
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/bo;
    .locals 1

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ca;->b(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/j;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/ads/internal/formats/j;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    :cond_1
    return-object v0
.end method

.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 3000
    invoke-static {p1}, Lcom/google/android/gms/internal/bp$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bp;

    move-result-object v0

    .line 0
    return-object v0
.end method
