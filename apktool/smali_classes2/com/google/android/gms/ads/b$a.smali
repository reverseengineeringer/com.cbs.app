.class public final Lcom/google/android/gms/ads/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/internal/client/s;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b$a;->b:Lcom/google/android/gms/ads/internal/client/s;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dk;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/ads/internal/client/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dk;)Lcom/google/android/gms/ads/internal/client/s;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/s;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->b:Lcom/google/android/gms/ads/internal/client/s;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/f;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/s;->a(Lcom/google/android/gms/ads/internal/client/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 3000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->b:Lcom/google/android/gms/ads/internal/client/s;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;-><init>(Lcom/google/android/gms/ads/formats/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/s;->a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 4000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/c$a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->b:Lcom/google/android/gms/ads/internal/client/s;

    new-instance v1, Lcom/google/android/gms/internal/cb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/ads/formats/c$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/s;->a(Lcom/google/android/gms/internal/bv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 2000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->b:Lcom/google/android/gms/ads/internal/client/s;

    new-instance v1, Lcom/google/android/gms/internal/cc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cc;-><init>(Lcom/google/android/gms/ads/formats/d$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/s;->a(Lcom/google/android/gms/internal/bw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0
.end method

.method public final a()Lcom/google/android/gms/ads/b;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/b;

    iget-object v1, p0, Lcom/google/android/gms/ads/b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/b$a;->b:Lcom/google/android/gms/ads/internal/client/s;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/s;->a()Lcom/google/android/gms/ads/internal/client/r;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
