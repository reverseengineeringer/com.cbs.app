.class public final Lcom/adobe/adobepass/accessenabler/api/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/adobe/adobepass/accessenabler/api/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/adobe/adobepass/accessenabler/api/b;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/os/CountDownTimer;

.field private final g:Landroid/webkit/WebViewClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/adobe/adobepass/accessenabler/api/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "PassiveAuthnService"

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->a:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/f$1;

    invoke-direct {v0, p0}, Lcom/adobe/adobepass/accessenabler/api/f$1;-><init>(Lcom/adobe/adobepass/accessenabler/api/f;)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->g:Landroid/webkit/WebViewClient;

    .line 46
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/f;->b:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/api/f;->c:Lcom/adobe/adobepass/accessenabler/api/b;

    .line 49
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->d:Landroid/webkit/WebView;

    .line 50
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 53
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/f;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/adobe/adobepass/accessenabler/api/f;)Lcom/adobe/adobepass/accessenabler/api/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->c:Lcom/adobe/adobepass/accessenabler/api/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/adobe/adobepass/accessenabler/api/b;)Lcom/adobe/adobepass/accessenabler/api/f;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/f;->f:Lcom/adobe/adobepass/accessenabler/api/f;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/f;

    invoke-direct {v0, p0, p1}, Lcom/adobe/adobepass/accessenabler/api/f;-><init>(Landroid/content/Context;Lcom/adobe/adobepass/accessenabler/api/b;)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/f;->f:Lcom/adobe/adobepass/accessenabler/api/f;

    .line 59
    :cond_0
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/f;->f:Lcom/adobe/adobepass/accessenabler/api/f;

    .line 1137
    new-instance v1, Lcom/adobe/adobepass/accessenabler/api/f$2;

    invoke-direct {v1, v0}, Lcom/adobe/adobepass/accessenabler/api/f$2;-><init>(Lcom/adobe/adobepass/accessenabler/api/f;)V

    .line 1132
    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/f;->e:Landroid/os/CountDownTimer;

    .line 1133
    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/f;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 60
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/f;->f:Lcom/adobe/adobepass/accessenabler/api/f;

    return-object v0
.end method

.method static synthetic b(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->e:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic c(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/adobe/adobepass/accessenabler/api/f;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->d:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/f;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 71
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    const-string v6, "PassiveAuthnService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Injecting cookie: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for domain: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 81
    return-void
.end method
