.class public Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Lcom/cbs/app/view/model/MVPDConfig;

.field private final d:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 113
    new-instance v0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->d:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/cbs/app/view/model/MVPDConfig;)Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "mvpd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    new-instance v1, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mvpd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->c:Lcom/cbs/app/view/model/MVPDConfig;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v1, "pageTitle"

    const-string v2, "live-tv|provider|signin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "evar_6"

    const-string v2, "liveTV|provider|signin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "evar_10"

    const-string v2, "provider_signin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/analytics/Action;->cX:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const v0, 0x7f030084

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x7f0f0227

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 89
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->d:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    new-instance v2, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment$a;-><init>(Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 93
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 101
    const v0, 0x7f0f0228

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLoginFragment;->b:Landroid/view/View;

    .line 102
    return-object v1
.end method
