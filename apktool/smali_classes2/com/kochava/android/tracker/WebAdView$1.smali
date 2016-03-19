.class final Lcom/kochava/android/tracker/WebAdView$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/WebAdView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/android/tracker/WebAdView;


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/WebAdView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kochava/android/tracker/WebAdView$1;->a:Lcom/kochava/android/tracker/WebAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 102
    sget-boolean v0, Lcom/kochava/android/tracker/c;->a:Z

    if-eqz v0, :cond_0

    .line 104
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    sget-boolean v0, Lcom/kochava/android/tracker/c;->a:Z

    if-eqz v0, :cond_0

    .line 73
    :cond_0
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    const-string v0, ""

    .line 76
    const-string v1, "\\?p=(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_1
    sget-boolean v1, Lcom/kochava/android/tracker/c;->a:Z

    if-eqz v1, :cond_2

    .line 86
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://market.android.com/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView$1;->a:Lcom/kochava/android/tracker/WebAdView;

    iget-object v0, v0, Lcom/kochava/android/tracker/WebAdView;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView$1;->a:Lcom/kochava/android/tracker/WebAdView;

    iget-object v0, v0, Lcom/kochava/android/tracker/WebAdView;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 95
    :goto_0
    return v4

    .line 93
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
