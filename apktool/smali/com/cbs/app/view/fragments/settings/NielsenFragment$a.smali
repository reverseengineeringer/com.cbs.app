.class final Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/NielsenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;


# direct methods
.method private constructor <init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;B)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;-><init>(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "comparing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->c(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->c(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->c(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d()V

    .line 257
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    sget-object v1, Lcom/cbs/app/analytics/Action;->s:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a(Lcom/cbs/app/view/fragments/settings/NielsenFragment;Lcom/cbs/app/analytics/Action;)Lcom/cbs/app/analytics/Action;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    const-string v1, "appState"

    const-string v2, "cbscom:Settings Page"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "eVar2"

    const-string v2, "us"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "eVar3"

    const-string v2, "native app"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "eVar5"

    const-string v2, "cbsicsapp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "rsid"

    const-string v2, "cbsicsapp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->e(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->f(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Lcom/cbs/app/analytics/Action;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 268
    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d()V

    .line 283
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a()V

    .line 284
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 273
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedSslError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->d()V

    .line 275
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->a()V

    .line 276
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 227
    const-string v0, "close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->e()V

    .line 236
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->b(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Lcom/nielsen/app/sdk/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->h:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/NielsenFragment$a;->a:Lcom/cbs/app/view/fragments/settings/NielsenFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/NielsenFragment;->b(Lcom/cbs/app/view/fragments/settings/NielsenFragment;)Lcom/nielsen/app/sdk/l;

    invoke-static {p2}, Lcom/nielsen/app/sdk/l;->d(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;

    goto :goto_0
.end method
