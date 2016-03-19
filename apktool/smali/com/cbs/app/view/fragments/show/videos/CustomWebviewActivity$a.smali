.class final Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;->a:Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;B)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;-><init>(Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->a()Ljava/lang/String;

    .line 75
    if-eqz p2, :cond_2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cbs-svod://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cbs://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    :cond_0
    invoke-static {p2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->a()Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;->a:Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;

    invoke-static {v1, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity$a;->a:Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/CustomWebviewActivity;->finish()V

    .line 83
    :cond_1
    const/4 v0, 0x1

    .line 85
    :cond_2
    return v0
.end method
