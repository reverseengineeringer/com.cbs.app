.class public final Lcom/google/android/gms/internal/hv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/hs;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/hv;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/hs;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/hw;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/hx;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/internal/hx;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/hw;-><init>(Lcom/google/android/gms/internal/hs;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {v0, v7, p3}, Lcom/google/android/gms/internal/gx;->a(Lcom/google/android/gms/internal/hs;Z)Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/hs;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/gx;->a(Lcom/google/android/gms/internal/hs;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/hs;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v7
.end method
