.class public Lcom/cbs/app/view/TwitterWebOAuthActivity;
.super Lcom/cbs/app/view/AbstractWebViewActivity;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/social/TwitterOAuthResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/TwitterWebOAuthActivity$a;
    }
.end annotation


# instance fields
.field private c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

.field private d:Lcom/cbs/app/service/social/OAuthBuilder;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->e:Ljava/lang/String;

    .line 175
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/TwitterWebOAuthActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    const-string v1, "message"

    const-string v2, "twitter_oauth_success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->finish()V

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V
    .locals 4

    .prologue
    .line 1162
    sget-object v0, Lcom/cbs/app/analytics/Action;->bm:Lcom/cbs/app/analytics/Action;

    .line 1163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1164
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string v2, "appState"

    const-string v3, "cbscom:Twitter Login"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v2, "pageTitle"

    const-string v3, "setting"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    const-string v2, "logintype"

    const-string v3, "twitter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string v2, "evar_70"

    const-string v3, "twitter login failed"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v2, "prop_70"

    const-string v3, "twitter login failed"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string v2, "evar_14"

    const-string v3, "twitter"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    invoke-static {p0, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 31
    return-void
.end method

.method static synthetic c(Lcom/cbs/app/view/TwitterWebOAuthActivity;)Lcom/cbs/app/service/social/OAuthBuilder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->d:Lcom/cbs/app/service/social/OAuthBuilder;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/TwitterWebOAuthActivity;)Lcom/cbs/app/service/social/TwitterOAuthImpl;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string v3, "="

    .line 1111
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1113
    array-length v5, v2

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v2, v0

    .line 1114
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1115
    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1116
    aget-object v7, v6, v1

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 98
    :goto_1
    return-void

    .line 88
    :pswitch_0
    const-string v0, "oauth_token"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->e:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/TwitterWebOAuthActivity$a;-><init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :pswitch_1
    invoke-static {p0, v4}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 94
    invoke-direct {p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->a()V

    goto :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p2, :cond_0

    .line 1125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b00e9

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "CBS"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "We are having issues connecting with Twitter. Sometimes this is associated with a bad time setting on your device. Please change your device settings  to \"Automatic Date and Time\" or you can correct the date manually."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/view/TwitterWebOAuthActivity$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity$3;-><init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Close"

    new-instance v2, Lcom/cbs/app/view/TwitterWebOAuthActivity$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity$2;-><init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Go to Settings"

    new-instance v2, Lcom/cbs/app/view/TwitterWebOAuthActivity$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity$1;-><init>(Lcom/cbs/app/view/TwitterWebOAuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Lcom/cbs/app/service/social/OAuthBuilder;

    invoke-direct {v0, p0}, Lcom/cbs/app/service/social/OAuthBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->d:Lcom/cbs/app/service/social/OAuthBuilder;

    .line 45
    new-instance v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-virtual {v0, p0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->setTwitterOAuthResponse(Lcom/cbs/app/service/social/TwitterOAuthResponse;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-virtual {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a()V

    .line 65
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->b:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->b:Landroid/webkit/WebView;

    .line 68
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 69
    invoke-super {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/cbs/app/view/AbstractWebViewActivity;->onStart()V

    .line 52
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->D(Landroid/content/Context;)Lcom/cbs/app/service/social/TwitterOAuthTokens;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/cbs/app/service/social/TwitterOAuthTokens;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->c:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/view/TwitterWebOAuthActivity;->d:Lcom/cbs/app/service/social/OAuthBuilder;

    invoke-virtual {v1}, Lcom/cbs/app/service/social/OAuthBuilder;->a()Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/cbs/app/view/TwitterWebOAuthActivity;->a()V

    goto :goto_0
.end method
