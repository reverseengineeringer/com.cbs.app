.class final Lcom/cbs/app/widget/CustomWebDialogFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/CustomWebDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/CustomWebDialogFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/widget/CustomWebDialogFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/widget/CustomWebDialogFragment$a;->a:Lcom/cbs/app/widget/CustomWebDialogFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/widget/CustomWebDialogFragment;B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/cbs/app/widget/CustomWebDialogFragment$a;-><init>(Lcom/cbs/app/widget/CustomWebDialogFragment;)V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/cbs/app/widget/CustomWebDialogFragment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/cbs/app/widget/CustomWebDialogFragment;->a()Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/cbs/app/widget/CustomWebDialogFragment;->a()Ljava/lang/String;

    .line 74
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cbs-svod://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    invoke-static {p2}, Lcom/cbs/app/view/utils/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/cbs/app/widget/CustomWebDialogFragment;->a()Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/cbs/app/widget/CustomWebDialogFragment$a;->a:Lcom/cbs/app/widget/CustomWebDialogFragment;

    invoke-virtual {v1}, Lcom/cbs/app/widget/CustomWebDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 79
    iget-object v0, p0, Lcom/cbs/app/widget/CustomWebDialogFragment$a;->a:Lcom/cbs/app/widget/CustomWebDialogFragment;

    invoke-static {v0}, Lcom/cbs/app/widget/CustomWebDialogFragment;->a(Lcom/cbs/app/widget/CustomWebDialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 80
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
