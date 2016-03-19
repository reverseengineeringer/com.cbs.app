.class public Lcom/urbanairship/widget/UAWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebViewClient;

.field private b:Ljava/lang/String;

.field private c:Lcom/urbanairship/richpush/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/widget/UAWebView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/widget/UAWebView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 132
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1333
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "urbanairship"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1338
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 137
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 138
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/R$styleable;->UAWebView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 141
    :try_start_0
    sget v2, Lcom/urbanairship/R$styleable;->UAWebView_mixed_content_mode:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    :cond_2
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 150
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 155
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebView;->b:Ljava/lang/String;

    .line 6323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 355
    if-eqz v0, :cond_0

    .line 7323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 355
    instance-of v0, v0, Lcom/urbanairship/widget/a;

    if-eqz v0, :cond_0

    .line 8323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 356
    check-cast v0, Lcom/urbanairship/widget/a;

    .line 358
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1, p2, p3}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 301
    iput-object v2, p0, Lcom/urbanairship/widget/UAWebView;->c:Lcom/urbanairship/richpush/c;

    .line 2323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 303
    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/urbanairship/widget/a;

    invoke-direct {v0}, Lcom/urbanairship/widget/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/urbanairship/widget/UAWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 310
    if-eqz v0, :cond_1

    .line 4323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 310
    instance-of v0, v0, Lcom/urbanairship/widget/a;

    if-eqz v0, :cond_1

    .line 5323
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 311
    check-cast v0, Lcom/urbanairship/widget/a;

    .line 312
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;)V

    .line 313
    iput-object v2, p0, Lcom/urbanairship/widget/UAWebView;->b:Ljava/lang/String;

    .line 315
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/richpush/c;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebView;->c:Lcom/urbanairship/richpush/c;

    return-object v0
.end method

.method public final a(Lcom/urbanairship/richpush/c;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v0

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v2, "Authorization"

    invoke-virtual {v0}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/urbanairship/widget/UAWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p1}, Lcom/urbanairship/richpush/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    :goto_1
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebView;->c:Lcom/urbanairship/richpush/c;

    .line 273
    invoke-virtual {p1}, Lcom/urbanairship/richpush/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/richpush/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/urbanairship/widget/UAWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/richpush/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->b()V

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->b()V

    .line 197
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->b()V

    .line 209
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 212
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    const-string v2, "Authorization"

    invoke-virtual {v0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/urbanairship/widget/UAWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-super {p0, p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    :goto_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/urbanairship/widget/UAWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_1
    return-void

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebView;->b()V

    .line 238
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->l()Lcom/urbanairship/a;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/urbanairship/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/urbanairship/widget/UAWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getScrollY()I

    move-result v0

    .line 180
    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->getScrollX()I

    move-result v1

    .line 181
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/urbanairship/widget/UAWebView;->onScrollChanged(IIII)V

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebView;->a:Landroid/webkit/WebViewClient;

    .line 293
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 294
    return-void
.end method
