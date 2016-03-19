.class public Lcom/cbs/app/view/fragments/settings/NielsenFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;
    }
.end annotation


# static fields
.field protected static final h:Ljava/lang/String;


# instance fields
.field private i:Lcom/nielsen/app/sdk/l;

.field private j:Landroid/webkit/WebView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    .line 48
    const-string v0, "{\"appName\" : \"CBS\", \"appVersion\" : \"2.9.0\", \"sfcode\" : \"us\", \"appId\" : \"P1576C728-1641-4B4C-AE19-343CF249BCA8\",  \"nol_devDebug\": \"true\" }"

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->l:Ljava/lang/String;

    .line 221
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/NielsenFragment;Lcom/cbs/app/analytics/Action;)Lcom/cbs/app/analytics/Action;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d:Lcom/cbs/app/analytics/Action;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/NielsenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V
    .locals 3

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->l:Ljava/lang/String;

    new-instance v2, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment$4;-><init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)Lcom/nielsen/app/sdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->i:Lcom/nielsen/app/sdk/l;

    .line 39
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Lcom/nielsen/app/sdk/l;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->i:Lcom/nielsen/app/sdk/l;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->f()V

    return-void
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Lcom/cbs/app/analytics/Action;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d:Lcom/cbs/app/analytics/Action;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "nielsen_settings_url"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nielsen urlStr nielsenSdk is not null: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d()V

    .line 167
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f0b00e9

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v1, "The Nielsen site is unreachable at this time. Please try again later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "CBS"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/view/fragments/settings/NielsenFragment$3;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment$3;-><init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 120
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 126
    const-string v1, "settings_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 127
    check-cast v0, Lcom/cbs/app/view/fragments/settings/SettingsFragment;

    .line 128
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/SettingsFragment;->e()V

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const v0, 0x7f0300df

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    const v0, 0x7f0f0325

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->j:Landroid/webkit/WebView;

    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->j:Landroid/webkit/WebView;

    new-instance v2, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;

    invoke-direct {v2, p0, v3}, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;-><init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->j:Landroid/webkit/WebView;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 64
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getNielsenSdk()Lcom/nielsen/app/sdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->i:Lcom/nielsen/app/sdk/l;

    .line 74
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->b()V

    .line 76
    invoke-static {}, Lcom/nielsen/app/sdk/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->f()V

    .line 103
    :goto_0
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->l:Ljava/lang/String;

    new-instance v3, Lcom/cbs/app/view/fragments/settings/NielsenFragment$1;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    invoke-static {v0, v2, v3}, Lcom/nielsen/app/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)Lcom/nielsen/app/sdk/l;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cbs/app/view/fragments/settings/NielsenFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment$2;-><init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 209
    const v1, 0x7f0f0325

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 217
    :cond_0
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 218
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 174
    sget-object v0, Lcom/cbs/app/analytics/Action;->q:Lcom/cbs/app/analytics/Action;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d:Lcom/cbs/app/analytics/Action;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    const-string v1, "appState"

    const-string v2, "cbscom:Settings Page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "eVar2"

    const-string v2, "us"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "eVar3"

    const-string v2, "native app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "eVar5"

    const-string v2, "cbsicsapp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "rsid"

    const-string v2, "cbsicsapp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 183
    return-void
.end method
