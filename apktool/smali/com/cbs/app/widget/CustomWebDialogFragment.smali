.class public Lcom/cbs/app/widget/CustomWebDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/widget/CustomWebDialogFragment$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/cbs/app/widget/CustomWebDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/widget/CustomWebDialogFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->b:Landroid/webkit/WebView;

    .line 24
    iput-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->c:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->d:Landroid/app/Dialog;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/widget/CustomWebDialogFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/cbs/app/widget/CustomWebDialogFragment;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->d:Landroid/app/Dialog;

    .line 44
    iget-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 45
    iget-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const v0, 0x7f030091

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    const v0, 0x7f0f025a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->b:Landroid/webkit/WebView;

    .line 34
    iget-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->b:Landroid/webkit/WebView;

    .line 1054
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1055
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1056
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1057
    new-instance v2, Lcom/cbs/app/widget/CustomWebDialogFragment$a;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/widget/CustomWebDialogFragment$a;-><init>(Lcom/cbs/app/widget/CustomWebDialogFragment;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    invoke-virtual {p0}, Lcom/cbs/app/widget/CustomWebDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    const-string v2, "launchUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment;->c:Ljava/lang/String;

    .line 37
    return-object v1
.end method
