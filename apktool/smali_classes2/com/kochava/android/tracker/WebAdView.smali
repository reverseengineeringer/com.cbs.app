.class public Lcom/kochava/android/tracker/WebAdView;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/android/tracker/WebAdView$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Z

.field c:Z

.field d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/kochava/android/tracker/WebAdView;->b:Z

    .line 44
    iput-boolean v0, p0, Lcom/kochava/android/tracker/WebAdView;->c:Z

    .line 224
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 208
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    sget-boolean v0, Lcom/kochava/android/tracker/c;->a:Z

    .line 211
    sget-object v0, Lcom/kochava/android/tracker/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "slide_down"

    const-string v2, "anim"

    invoke-virtual {p0}, Lcom/kochava/android/tracker/WebAdView;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/kochava/android/tracker/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "stay"

    const-string v2, "anim"

    invoke-virtual {p0}, Lcom/kochava/android/tracker/WebAdView;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/kochava/android/tracker/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "slide_down"

    const-string v3, "anim"

    invoke-virtual {p0}, Lcom/kochava/android/tracker/WebAdView;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kochava/android/tracker/WebAdView;->overridePendingTransition(II)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Lcom/kochava/android/tracker/WebAdView;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xa

    const/4 v10, 0x7

    const/4 v9, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iput-object p0, p0, Lcom/kochava/android/tracker/WebAdView;->a:Landroid/app/Activity;

    .line 50
    invoke-virtual {p0}, Lcom/kochava/android/tracker/WebAdView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 63
    new-instance v0, Lcom/kochava/android/tracker/WebAdView$a;

    invoke-direct {v0, p0, v11}, Lcom/kochava/android/tracker/WebAdView$a;-><init>(Lcom/kochava/android/tracker/WebAdView;B)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 66
    new-instance v0, Lcom/kochava/android/tracker/WebAdView$1;

    invoke-direct {v0, p0}, Lcom/kochava/android/tracker/WebAdView$1;-><init>(Lcom/kochava/android/tracker/WebAdView;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 126
    invoke-virtual {p0, v9}, Lcom/kochava/android/tracker/WebAdView;->requestWindowFeature(I)Z

    .line 128
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 149
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 150
    const-string v0, "Close"

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/high16 v0, -0x1000000

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    const/4 v0, 0x3

    const/4 v5, 0x5

    invoke-virtual {v4, v10, v0, v10, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 155
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 156
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v0, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 157
    const/4 v0, 0x3

    const/4 v6, 0x5

    invoke-virtual {v5, v10, v0, v10, v6}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 159
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 160
    new-array v6, v11, [I

    invoke-virtual {v0, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    new-instance v0, Lcom/kochava/android/tracker/WebAdView$2;

    invoke-direct {v0, p0}, Lcom/kochava/android/tracker/WebAdView$2;-><init>(Lcom/kochava/android/tracker/WebAdView;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 176
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0, v2, v3}, Lcom/kochava/android/tracker/WebAdView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    .line 182
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 183
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v11}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 187
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/kochava/android/tracker/WebAdView$3;

    invoke-direct {v1, p0}, Lcom/kochava/android/tracker/WebAdView$3;-><init>(Lcom/kochava/android/tracker/WebAdView;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 198
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 200
    return-void

    .line 155
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data
.end method
