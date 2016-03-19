.class public final Lcom/google/android/gms/ads/internal/client/g;
.super Lcom/google/android/gms/a/f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/f",
        "<",
        "Lcom/google/android/gms/ads/internal/client/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/ads/internal/client/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/g;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/g;->a:Lcom/google/android/gms/ads/internal/client/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.AdLoaderBuilderCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/s;
    .locals 2

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/client/g;->a:Lcom/google/android/gms/ads/internal/client/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/g;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/s;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/s;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/c;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/g;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/t;

    const v2, 0x7bd338

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/google/android/gms/ads/internal/client/t;->a(Lcom/google/android/gms/a/c;Ljava/lang/String;Lcom/google/android/gms/internal/dl;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/s$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/s;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/f$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    .line 2000
    :catch_0
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3000
    :catch_1
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 4000
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/t$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/t;

    move-result-object v0

    .line 0
    return-object v0
.end method
