.class public Lcom/cbs/app/view/SubscriptionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/SubscriptionActivity$b;,
        Lcom/cbs/app/view/SubscriptionActivity$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field public b:Z

.field private d:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/cbs/app/view/SubscriptionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/SubscriptionActivity;->c:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/SubscriptionActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->b:Z

    .line 457
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/cbs/app/view/SubscriptionActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 2

    .prologue
    .line 67
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 69
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    .line 72
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v8, 0x9

    const/4 v5, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SubscriptionActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/cbs/app/view/SubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBS_COM"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/SubscriptionActivity;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/cbs/app/view/SubscriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "cid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v0, ""

    .line 95
    if-eqz v2, :cond_2

    .line 96
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserStatusDescription()Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v0, "CIAaca721d"

    .line 99
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 100
    if-eqz v3, :cond_1

    const-string v4, "exsubscriber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const-string v0, "CIA05f12b7"

    .line 110
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/?intcid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2194
    invoke-static {p0}, Lcom/cbs/app/uri/UriHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2195
    if-eqz v1, :cond_d

    .line 2197
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2202
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ftag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 114
    :goto_3
    if-eqz v2, :cond_5

    .line 115
    const v0, 0x7f0f016b

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    .line 2210
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v0

    .line 2211
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v1

    .line 2212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CBSWebView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2213
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3d4

    if-ge v0, v1, :cond_c

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (small)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_4
    iget-object v1, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/cbs/app/view/SubscriptionActivity$a;

    invoke-direct {v1, p0, p0}, Lcom/cbs/app/view/SubscriptionActivity$a;-><init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-direct {v1, p0, p0}, Lcom/cbs/app/view/SubscriptionActivity$b;-><init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/cbs/app/view/SubscriptionActivity$b;

    invoke-direct {v1, p0, p0}, Lcom/cbs/app/view/SubscriptionActivity$b;-><init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/content/Context;)V

    const-string v3, "Android"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2222
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v3

    .line 2225
    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2226
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 2227
    check-cast v0, Landroid/widget/Button;

    .line 2228
    new-instance v1, Lcom/cbs/app/view/SubscriptionActivity$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SubscriptionActivity$1;-><init>(Lcom/cbs/app/view/SubscriptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2246
    const v1, 0x7f0f0167

    invoke-virtual {p0, v1}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2247
    instance-of v4, v1, Landroid/widget/EditText;

    if-eqz v4, :cond_3

    .line 2248
    check-cast v1, Landroid/widget/EditText;

    .line 2250
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v6, 0x4062c00000000000L    # 150.0

    invoke-static {p0, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2253
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2254
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2255
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    new-instance v2, Lcom/cbs/app/view/SubscriptionActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/cbs/app/view/SubscriptionActivity$2;-><init>(Lcom/cbs/app/view/SubscriptionActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2267
    :cond_3
    const v0, 0x7f0f0169

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2268
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 2269
    check-cast v0, Landroid/widget/Button;

    .line 2270
    new-instance v1, Lcom/cbs/app/view/SubscriptionActivity$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SubscriptionActivity$3;-><init>(Lcom/cbs/app/view/SubscriptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2283
    :cond_4
    const v0, 0x7f0f016a

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2284
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 2285
    check-cast v0, Landroid/widget/Button;

    .line 2286
    new-instance v1, Lcom/cbs/app/view/SubscriptionActivity$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/SubscriptionActivity$4;-><init>(Lcom/cbs/app/view/SubscriptionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_5
    return-void

    .line 1375
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    .line 1378
    invoke-virtual {p0}, Lcom/cbs/app/view/SubscriptionActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1379
    if-eq v0, v5, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1381
    :cond_6
    invoke-virtual {p0, v8}, Lcom/cbs/app/view/SubscriptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1383
    :cond_7
    invoke-virtual {p0, v5}, Lcom/cbs/app/view/SubscriptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 1389
    :cond_8
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/cbs/app/view/SubscriptionActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 104
    :cond_9
    if-eqz v3, :cond_a

    const-string v0, "exsubscriber"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    const-string v0, "CIA47166c6"

    goto/16 :goto_1

    .line 107
    :cond_a
    const-string v0, "CIAb215627"

    goto/16 :goto_1

    .line 2200
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2216
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (big)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    move-object v2, v0

    goto/16 :goto_3

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 323
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 307
    :pswitch_0
    iget-object v1, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/cbs/app/view/SubscriptionActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 320
    :goto_1
    const/4 v0, 0x1

    .line 321
    goto :goto_0

    .line 309
    :cond_1
    sget-boolean v1, Lcom/cbs/app/GlobalConstants;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/cbs/app/view/SubscriptionActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    invoke-virtual {p0, v0}, Lcom/cbs/app/view/SubscriptionActivity;->setResult(I)V

    .line 311
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->O(Landroid/content/Context;)V

    .line 313
    invoke-virtual {p0}, Lcom/cbs/app/view/SubscriptionActivity;->finish()V

    goto :goto_0

    .line 316
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/SubscriptionActivity;->setResult(ILandroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/cbs/app/view/SubscriptionActivity;->finish()V

    goto :goto_1

    .line 304
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 0

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 333
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->c()V

    .line 334
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 362
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->b()V

    .line 363
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 184
    invoke-static {p0}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;)V

    .line 185
    return-void
.end method
