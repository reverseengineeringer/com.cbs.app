.class final Lcom/google/ads/interactivemedia/v3/impl/ab$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/ab;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/ab$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/ab;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/ab;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$1;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "Finished "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2152
    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    .line 72
    return-void

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 66
    const-string v0, "Started "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1152
    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    .line 67
    return-void

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    .line 78
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    const-string v0, "gmsg://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ab$1;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method
