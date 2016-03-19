.class public Lcom/cbs/app/view/VideoEnabledWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/VideoEnabledWebView$b;,
        Lcom/cbs/app/view/VideoEnabledWebView$a;,
        Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;
    }
.end annotation


# static fields
.field public static final a:Landroid/view/ViewGroup$LayoutParams;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/View;

.field private h:Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 28
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/cbs/app/view/VideoEnabledWebView;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 30
    const-class v0, Lcom/cbs/app/view/VideoEnabledWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/VideoEnabledWebView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    .line 32
    iput-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    .line 41
    invoke-direct {p0, p1}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    .line 32
    iput-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    .line 46
    invoke-direct {p0, p1}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    .line 32
    iput-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    .line 51
    invoke-direct {p0, p1}, Lcom/cbs/app/view/VideoEnabledWebView;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, v1}, Lcom/cbs/app/view/VideoEnabledWebView;->clearCache(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->clearHistory()V

    .line 61
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 66
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->f:Landroid/app/Activity;

    .line 67
    new-instance v0, Lcom/cbs/app/view/VideoEnabledWebView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/view/VideoEnabledWebView$b;-><init>(Lcom/cbs/app/view/VideoEnabledWebView;B)V

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/VideoEnabledWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 68
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/VideoEnabledWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->g:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/cbs/app/view/VideoEnabledWebView;)Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->h:Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cbs/app/view/VideoEnabledWebView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/VideoEnabledWebView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/cbs/app/view/VideoEnabledWebView;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cbs/app/view/VideoEnabledWebView;->setFullscreen(Z)V

    .line 105
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 106
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 108
    iput-object v3, p0, Lcom/cbs/app/view/VideoEnabledWebView;->c:Landroid/widget/FrameLayout;

    .line 109
    iput-object v3, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->h:Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->h:Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    invoke-interface {v0, p0}, Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;->b(Lcom/cbs/app/view/VideoEnabledWebView;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->a()Z

    .line 94
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->stopLoading()V

    .line 96
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/cbs/app/view/VideoEnabledWebView;->goBack()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/view/VideoEnabledWebView;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    return-void

    .line 81
    :cond_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    iget-object v2, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/cbs/app/view/VideoEnabledWebView;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setWebVideoListener(Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/view/VideoEnabledWebView;->h:Lcom/cbs/app/view/VideoEnabledWebView$WebVideoListener;

    .line 72
    return-void
.end method
