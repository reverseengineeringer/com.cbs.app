.class public final Lcom/google/android/gms/internal/ia;
.super Lcom/google/android/gms/internal/hu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hu;-><init>(Lcom/google/android/gms/internal/hs;Z)V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mraid.js"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/hu;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 6000
    :goto_0
    return-object v2

    .line 0
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/internal/hs;

    if-nez v2, :cond_1

    .line 1000
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/hu;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/hs;

    move-object v2, v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->k()Lcom/google/android/gms/internal/hu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hu;->f()V

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/ax;->F:Lcom/google/android/gms/internal/at;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shouldInterceptRequest("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5000
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v4}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    .line 6000
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "User-Agent"

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Cache-Control"

    const-string v6, "max-stale=3600"

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/ha;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ha;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ha;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/hj;

    move-result-object v2

    const-wide/16 v4, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Lcom/google/android/gms/internal/hj;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 0
    :cond_2
    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/ax;->E:Lcom/google/android/gms/internal/at;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ax;->D:Lcom/google/android/gms/internal/at;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v3

    .line 0
    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 6000
    :cond_4
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string v4, "application/javascript"

    const-string v5, "UTF-8"

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const-string v7, "UTF-8"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v5, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 0
    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not fetch MRAID JS. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7000
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/hu;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2
.end method
