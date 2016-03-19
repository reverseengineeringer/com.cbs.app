.class final Lcom/cbs/app/view/AbstractWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/AbstractWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/AbstractWebViewActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/AbstractWebViewActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cbs/app/view/AbstractWebViewActivity$1;->a:Lcom/cbs/app/view/AbstractWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity$1;->a:Lcom/cbs/app/view/AbstractWebViewActivity;

    invoke-static {v0}, Lcom/cbs/app/view/AbstractWebViewActivity;->a(Lcom/cbs/app/view/AbstractWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity$1;->a:Lcom/cbs/app/view/AbstractWebViewActivity;

    invoke-static {v0}, Lcom/cbs/app/view/AbstractWebViewActivity;->a(Lcom/cbs/app/view/AbstractWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 43
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity$1;->a:Lcom/cbs/app/view/AbstractWebViewActivity;

    invoke-static {v0}, Lcom/cbs/app/view/AbstractWebViewActivity;->a(Lcom/cbs/app/view/AbstractWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 46
    :cond_0
    return-void
.end method
