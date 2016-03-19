.class Lcom/mdialog/android/stream/ClickThroughActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/stream/ClickThroughActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mdialog/android/stream/ClickThroughActivity;


# direct methods
.method private constructor <init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mdialog/android/stream/ClickThroughActivity$a;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mdialog/android/stream/ClickThroughActivity;Lcom/mdialog/android/stream/ClickThroughActivity$a;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/mdialog/android/stream/ClickThroughActivity$a;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$a;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 439
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$a;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 425
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$a;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->c(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 426
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$a;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 432
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity$a;->a:Lcom/mdialog/android/stream/ClickThroughActivity;

    invoke-static {v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->d(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 433
    return-void
.end method
