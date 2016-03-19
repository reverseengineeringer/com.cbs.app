.class public Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/cbs/app/analytics/Action;

.field private g:Landroid/view/View;

.field private h:Landroid/webkit/WebView;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "ARG_URL"

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a(Ljava/lang/String;I)Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    sget-object v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "ARG_TRACKING_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_TRACKING_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->e:I

    .line 87
    iget v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->e:I

    packed-switch v0, :pswitch_data_0

    .line 107
    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->b:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->c:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->d:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->f:Lcom/cbs/app/analytics/Action;

    .line 1173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->f:Lcom/cbs/app/analytics/Action;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 115
    :goto_1
    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v1, "pageTitle"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "evar_6"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "evar_10"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "pageView"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->f:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 125
    :cond_1
    return-void

    .line 89
    :pswitch_0
    const-string v0, "live-tv|faq modal"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->b:Ljava/lang/String;

    .line 90
    const-string v0, "liveTV|faq"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->c:Ljava/lang/String;

    .line 91
    const-string v0, "livetv_faq"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->d:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/cbs/app/analytics/Action;->cz:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->f:Lcom/cbs/app/analytics/Action;

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "live-tv|howto modal"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->b:Ljava/lang/String;

    .line 96
    const-string v0, "liveTV|howtowatch"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->c:Ljava/lang/String;

    .line 97
    const-string v0, "livetv_howtowatch"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->d:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/cbs/app/analytics/Action;->cA:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->f:Lcom/cbs/app/analytics/Action;

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "live-tv|options modal"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->b:Ljava/lang/String;

    .line 102
    const-string v0, "liveTV|options"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->c:Ljava/lang/String;

    .line 103
    const-string v0, "livetv_options"

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->d:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/cbs/app/analytics/Action;->cB:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->f:Lcom/cbs/app/analytics/Action;

    goto :goto_0

    .line 1173
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 134
    const v0, 0x7f030084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 137
    const v0, 0x7f0f0227

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    .line 139
    const v0, 0x7f0f0228

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->g:Landroid/view/View;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->i:Z

    .line 141
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    .line 195
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 196
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->i:Z

    .line 183
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 160
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 169
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 170
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment$a;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 149
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 152
    return-void
.end method
