.class public final Lcom/google/ads/interactivemedia/v3/impl/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/ab$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab$a;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/ab$a;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/ab$a;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    .line 42
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ab$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/ab$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 81
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 82
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1014
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 1016
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 83
    :cond_1
    return-void
.end method

.method private static a(ZLcom/google/ads/interactivemedia/v3/impl/z;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 140
    if-eqz p0, :cond_1

    .line 141
    const-string v0, "Sending javascript msg: "

    .line 142
    :goto_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    :goto_1
    return-void

    .line 141
    :cond_1
    const-string v0, "Received msg: "

    goto :goto_0

    .line 144
    :cond_2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->b:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a()Lcom/google/ads/interactivemedia/v3/impl/z$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/z$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Channel: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->e()Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(ZLcom/google/ads/interactivemedia/v3/impl/z;Ljava/lang/String;)V

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/z;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(ZLcom/google/ads/interactivemedia/v3/impl/z;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab;->a:Lcom/google/ads/interactivemedia/v3/impl/ab$a;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab$a;->a(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 133
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    const-string v0, "Invalid internal message, ignoring. Please make sure the Google IMA SDK library is up to date. Message: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 127
    const-string v2, "IMASDK"

    const-string v3, "An internal error occured parsing message from javascript.  Message to be parsed: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
