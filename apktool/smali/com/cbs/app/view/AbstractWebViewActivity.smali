.class public abstract Lcom/cbs/app/view/AbstractWebViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/AsyncActivity;


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field protected b:Landroid/webkit/WebView;

.field private c:Landroid/app/Activity;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/cbs/app/view/AbstractWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/AbstractWebViewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/AbstractWebViewActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Lcom/cbs/app/view/MainApplication;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/MainApplication;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 34
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity;->b:Landroid/webkit/WebView;

    .line 35
    iget-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/AbstractWebViewActivity;->setContentView(Landroid/view/View;)V

    .line 36
    iput-object p0, p0, Lcom/cbs/app/view/AbstractWebViewActivity;->c:Landroid/app/Activity;

    .line 38
    iget-object v0, p0, Lcom/cbs/app/view/AbstractWebViewActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/cbs/app/view/AbstractWebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/AbstractWebViewActivity$1;-><init>(Lcom/cbs/app/view/AbstractWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 48
    return-void
.end method
