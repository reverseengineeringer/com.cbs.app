.class final Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;B)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;-><init>(Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    if-eqz p1, :cond_1

    .line 134
    if-eqz p2, :cond_1

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cbs-svod://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cbs://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    invoke-static {p2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment$b;->a:Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/CustomWebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 138
    const/4 v0, 0x1

    .line 141
    :cond_1
    return v0
.end method
