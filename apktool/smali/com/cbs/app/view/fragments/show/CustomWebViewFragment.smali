.class public Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;,
        Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;
    }
.end annotation


# instance fields
.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/view/View;

.field private l:Landroid/webkit/WebChromeClient;

.field private m:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->k:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->l:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    const v0, 0x7f030067

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz v1, :cond_0

    .line 48
    const-string v0, "pageUrl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 52
    :goto_0
    const v0, 0x7f0f01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    .line 53
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    new-instance v3, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    new-instance v3, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;

    invoke-direct {v3, p0, v5}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;-><init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;B)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    new-instance v0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;

    invoke-direct {v0, p0, v5}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;-><init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;B)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->l:Landroid/webkit/WebChromeClient;

    .line 74
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->l:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 75
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 79
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 80
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 82
    const v0, 0x7f0f01ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->i:Landroid/widget/FrameLayout;

    .line 83
    const v0, 0x7f0f01ae

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->j:Landroid/widget/FrameLayout;

    .line 85
    return-object v2

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 125
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 104
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 105
    return-void
.end method
