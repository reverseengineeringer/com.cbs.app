.class final Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a()Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->b(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 68
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->c(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->c(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$1;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->c(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
