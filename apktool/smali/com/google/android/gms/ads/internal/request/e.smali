.class public final Lcom/google/android/gms/ads/internal/request/e;
.super Lcom/google/android/gms/common/internal/n;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n",
        "<",
        "Lcom/google/android/gms/ads/internal/request/j;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;I)V
    .locals 7

    .prologue
    .line 0
    const/16 v3, 0x8

    .line 1000
    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->a()Lcom/google/android/gms/common/internal/j;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    iput p5, p0, Lcom/google/android/gms/ads/internal/request/e;->a:I

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 0
    .line 2000
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/request/j$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/request/j;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public final c_()Lcom/google/android/gms/ads/internal/request/j;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/n;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/request/j;

    return-object v0
.end method
