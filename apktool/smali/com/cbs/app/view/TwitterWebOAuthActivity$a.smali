.class final Lcom/cbs/app/view/TwitterWebOAuthActivity$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/TwitterWebOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/TwitterWebOAuthActivity;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;B)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;-><init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    sget-object v2, Lcom/cbs/app/view/AbstractWebViewActivity;->a:Ljava/lang/String;

    .line 181
    if-eqz p2, :cond_5

    .line 182
    iget-object v2, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-static {v2}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->a(Lcom/cbs/app/view/TwitterWebOAuthActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "signup"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move v1, v0

    .line 202
    :goto_1
    return v1

    .line 184
    :cond_1
    const-string v2, "denied"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 186
    iget-object v3, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-virtual {v3, v1, v2}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 187
    iget-object v1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-virtual {v1}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->finish()V

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 191
    const-string v3, "oauth_verifier"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    const-string v4, "oauth_token"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    if-eqz v3, :cond_3

    if-nez v2, :cond_4

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-static {v0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->b(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V

    goto :goto_1

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-static {v1}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->d(Lcom/cbs/app/view/TwitterWebOAuthActivity;)Lcom/cbs/app/service/social/TwitterOAuthImpl;

    move-result-object v1

    iget-object v4, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;->a:Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-static {v4}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->c(Lcom/cbs/app/view/TwitterWebOAuthActivity;)Lcom/cbs/app/service/social/OAuthBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
