.class public Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;
.super Lcom/cbs/app/view/AbstractWebViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    const-string v1, "launchUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 34
    const v0, 0x7f0f025a

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->d:Landroid/webkit/WebView;

    .line 35
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;-><init>(Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/cbs/app/view/AbstractWebViewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 57
    :goto_1
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->finish()V

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
