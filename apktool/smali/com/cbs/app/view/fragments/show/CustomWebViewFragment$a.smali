.class final Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;B)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;-><init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 161
    invoke-static {}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->f()Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->d(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;Landroid/view/View;)Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->d(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->f(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 168
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->e(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->e()Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0, p2}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;Landroid/view/View;)Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->d(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->a(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->e(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->d(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$a;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->d(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 157
    return-void
.end method
