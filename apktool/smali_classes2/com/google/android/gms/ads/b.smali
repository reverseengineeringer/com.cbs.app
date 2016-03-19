.class public Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/k;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/client/r;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/r;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/k;->a()Lcom/google/android/gms/ads/internal/client/k;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/r;Lcom/google/android/gms/ads/internal/client/k;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/r;Lcom/google/android/gms/ads/internal/client/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/ads/internal/client/r;

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/ads/internal/client/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/c;)V
    .locals 3

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/internal/client/z;

    move-result-object v0

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/ads/internal/client/r;

    iget-object v2, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/client/k;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/z;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/r;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
