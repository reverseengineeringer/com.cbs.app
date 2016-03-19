.class public Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;
    }
.end annotation


# static fields
.field protected static final h:Ljava/lang/String;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->i:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    const-string v1, "pageUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->i:Ljava/lang/String;

    .line 38
    :cond_0
    const v0, 0x7f0300e2

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 40
    const v0, 0x7f0f02c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 41
    if-eqz v0, :cond_1

    .line 42
    new-instance v2, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment$a;-><init>(Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 45
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 46
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 47
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/SettingsWebviewFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    :cond_1
    return-object v1
.end method
