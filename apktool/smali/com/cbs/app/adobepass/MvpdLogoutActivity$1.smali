.class final Lcom/cbs/app/adobepass/MvpdLogoutActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/adobepass/MvpdLogoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/adobepass/MvpdLogoutActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cbs/app/adobepass/MvpdLogoutActivity$1;->a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 120
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/adobepass/MvpdLogoutActivity$1;->a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    const-class v2, Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    iget-object v1, p0, Lcom/cbs/app/adobepass/MvpdLogoutActivity$1;->a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/cbs/app/adobepass/MvpdLogoutActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/cbs/app/adobepass/MvpdLogoutActivity$1;->a:Lcom/cbs/app/adobepass/MvpdLogoutActivity;

    invoke-virtual {v0}, Lcom/cbs/app/adobepass/MvpdLogoutActivity;->finish()V

    .line 112
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return v0
.end method
