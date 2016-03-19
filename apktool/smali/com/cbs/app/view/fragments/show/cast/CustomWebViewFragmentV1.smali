.class public Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;
    }
.end annotation


# static fields
.field protected static final h:Ljava/lang/String;


# instance fields
.field private i:Lcom/cbs/app/view/VideoEnabledWebView;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->j:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/VideoEnabledWebView;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_2

    move v1, v0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 101
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 104
    :cond_0
    instance-of v1, v0, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    if-eqz v1, :cond_1

    .line 105
    check-cast v0, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    .line 106
    invoke-interface {v0, p1}, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;->a(Lcom/cbs/app/view/VideoEnabledWebView;)V

    .line 109
    :cond_1
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public final b(Lcom/cbs/app/view/VideoEnabledWebView;)V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 118
    :cond_0
    instance-of v1, v0, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    .line 120
    invoke-interface {v0, p1}, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;->b(Lcom/cbs/app/view/VideoEnabledWebView;)V

    .line 122
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->destroy()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    const-string v1, "pageUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->j:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url in customWebviewfragment : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_1
    new-instance v0, Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/view/VideoEnabledWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    .line 58
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    new-instance v1, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1$a;-><init>(Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;B)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/VideoEnabledWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 59
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0, p0}, Lcom/cbs/app/view/VideoEnabledWebView;->setWebVideoListener(Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;)V

    .line 60
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->destroy()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->onPause()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/cast/CustomWebViewFragmentV1;->i:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->onResume()V

    .line 80
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 81
    return-void
.end method
