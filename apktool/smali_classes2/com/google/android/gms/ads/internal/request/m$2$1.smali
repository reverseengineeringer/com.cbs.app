.class final Lcom/google/android/gms/ads/internal/request/m$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/m$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hl$c",
        "<",
        "Lcom/google/android/gms/internal/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/m$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/m$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/m$2$1;->a:Lcom/google/android/gms/ads/internal/request/m$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ad;

    .line 1000
    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/m$2$1;->a:Lcom/google/android/gms/ads/internal/request/m$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/m$2;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/m;->d_()Lcom/google/android/gms/internal/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/m$2$1;->a:Lcom/google/android/gms/ads/internal/request/m$2;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/m$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cn;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
