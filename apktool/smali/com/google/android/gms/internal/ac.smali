.class public final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aa;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/hs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/m;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->f()Lcom/google/android/gms/internal/hv;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v0, p1

    move v3, v2

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/hv;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/m;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/hs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/n;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->destroy()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/e;

    invoke-direct {v8, v5}, Lcom/google/android/gms/ads/internal/e;-><init>(B)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;ZLcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ei;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aa$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ac$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ac$6;-><init>(Lcom/google/android/gms/internal/ac;Lcom/google/android/gms/internal/aa$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/internal/hu$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ac$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ac$3;-><init>(Lcom/google/android/gms/internal/ac;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ac$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ac$2;-><init>(Lcom/google/android/gms/internal/ac;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ac$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ac$1;-><init>(Lcom/google/android/gms/internal/ac;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ae;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/af;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/af;-><init>(Lcom/google/android/gms/internal/ad;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ac$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ac$5;-><init>(Lcom/google/android/gms/internal/ac;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hu;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ac$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ac$4;-><init>(Lcom/google/android/gms/internal/ac;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Runnable;)V

    return-void
.end method
