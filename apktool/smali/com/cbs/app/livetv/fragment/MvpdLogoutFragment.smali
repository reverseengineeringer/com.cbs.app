.class public Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private final c:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    new-instance v0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->c:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;-><init>()V

    .line 40
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const v0, 0x7f030084

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    const v0, 0x7f0f0227

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 61
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    new-instance v2, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment$a;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment$a;-><init>(Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 65
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 73
    const v0, 0x7f0f0228

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/MvpdLogoutFragment;->b:Landroid/view/View;

    .line 74
    return-object v1
.end method
