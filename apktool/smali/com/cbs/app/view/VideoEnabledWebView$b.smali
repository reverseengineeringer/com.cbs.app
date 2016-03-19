.class final Lcom/cbs/app/view/VideoEnabledWebView$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/VideoEnabledWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/VideoEnabledWebView;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/VideoEnabledWebView;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/VideoEnabledWebView;B)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/cbs/app/view/VideoEnabledWebView$b;-><init>(Lcom/cbs/app/view/VideoEnabledWebView;)V

    return-void
.end method


# virtual methods
.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->e(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->c(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    const v2, 0x7f030114

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cbs/app/view/VideoEnabledWebView;->b(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/view/View;)Landroid/view/View;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->e(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onHideCustomView()V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/cbs/app/view/VideoEnabledWebView;->b()Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->a()Z

    .line 195
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 188
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->b(Lcom/cbs/app/view/VideoEnabledWebView;)Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->b(Lcom/cbs/app/view/VideoEnabledWebView;)Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-interface {v0, v1}, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;->a(Lcom/cbs/app/view/VideoEnabledWebView;)V

    .line 179
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/VideoEnabledWebView;->b()Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/cbs/app/view/VideoEnabledWebView;->c(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 181
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    new-instance v2, Lcom/cbs/app/view/VideoEnabledWebView$a;

    iget-object v3, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v3}, Lcom/cbs/app/view/VideoEnabledWebView;->c(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cbs/app/view/VideoEnabledWebView$a;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 182
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v1}, Lcom/cbs/app/view/VideoEnabledWebView;->d(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/view/VideoEnabledWebView;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v1}, Lcom/cbs/app/view/VideoEnabledWebView;->d(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/view/VideoEnabledWebView;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0, p1}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/view/View;)Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/VideoEnabledWebView;->setFullscreen(Z)V

    .line 186
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/VideoEnabledWebView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView$b;->a:Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-static {v0, p2}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method
