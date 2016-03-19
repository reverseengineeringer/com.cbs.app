.class public final Lcom/google/android/gms/internal/ej;
.super Lcom/google/android/gms/a/f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ej$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/f",
        "<",
        "Lcom/google/android/gms/internal/el;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ej;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/ej;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdOverlayCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ek;
    .locals 3

    .prologue
    .line 0
    .line 1000
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ej$a;

    const-string v1, "Ad overlay requires the useClientJar flag in intent extras."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ej$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ej$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ej$a;->getMessage()Ljava/lang/String;

    .line 3000
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1000
    :cond_0
    :try_start_1
    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_1

    .line 2000
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/ej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ej;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/ek;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ej$a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)Lcom/google/android/gms/internal/ek;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/el;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/el;->a(Lcom/google/android/gms/a/c;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ek$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ek;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/f$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    .line 4000
    :catch_0
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-object v0, v1

    .line 0
    goto :goto_0

    .line 5000
    :catch_1
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-object v0, v1

    .line 0
    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 6000
    invoke-static {p1}, Lcom/google/android/gms/internal/el$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/el;

    move-result-object v0

    .line 0
    return-object v0
.end method
