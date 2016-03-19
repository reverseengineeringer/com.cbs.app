.class final Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;->a:Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;-><init>(Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;->a:Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->d()V

    .line 150
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->h:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;->a:Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->b()V

    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 144
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->h:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, p1, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " error message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 159
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->h:Ljava/lang/String;

    .line 130
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cbs-svod://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    invoke-static {p2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;->a:Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
