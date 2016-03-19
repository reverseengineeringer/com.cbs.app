.class final Lcom/adobe/adobepass/accessenabler/api/f$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/adobepass/accessenabler/api/f;


# direct methods
.method constructor <init>(Lcom/adobe/adobepass/accessenabler/api/f;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/f$1;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    const-string v0, "PassiveAuthnService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 108
    const-string v0, "PassiveAuthnService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "/completePassiveAuthentication"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/authenticate/saml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f$1;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/f;->a(Lcom/adobe/adobepass/accessenabler/api/f;)Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f$1;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/f;->b(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/f$1;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/f;->c(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v2, "op_code"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/f$1;->a:Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/f;->c(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    const-string v0, "PassiveAuthnService"

    invoke-static {v0, p3}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "PassiveAuthnService"

    invoke-static {v0, p4}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "PassiveAuthnService"

    const-string v1, "Ignoring SSL certificate error."

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 97
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 89
    const-string v0, "PassiveAuthnService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
