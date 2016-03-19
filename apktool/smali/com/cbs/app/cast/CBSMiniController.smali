.class public Lcom/cbs/app/cast/CBSMiniController;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/widgets/a;


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ProgressBar;

.field f:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

.field g:Landroid/view/View$OnClickListener;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Lcom/google/android/libraries/cast/companionlibrary/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/cast/CBSMiniController;->n:I

    .line 89
    new-instance v0, Lcom/cbs/app/cast/CBSMiniController$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSMiniController$1;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 213
    new-instance v0, Lcom/cbs/app/cast/CBSMiniController$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSMiniController$4;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->g:Landroid/view/View$OnClickListener;

    .line 233
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSMiniController;->b()V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v1, p0, Lcom/cbs/app/cast/CBSMiniController;->n:I

    .line 89
    new-instance v0, Lcom/cbs/app/cast/CBSMiniController$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSMiniController$1;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 213
    new-instance v0, Lcom/cbs/app/cast/CBSMiniController$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSMiniController$4;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->g:Landroid/view/View$OnClickListener;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    const v2, 0x7f0300b7

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->j:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->k:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020216

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->o:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSMiniController;->b()V

    .line 72
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v2

    .line 1159
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->L()Z
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1160
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->K()D
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v4

    .line 1161
    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    move v2, v0

    .line 1171
    :goto_0
    if-eqz v2, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1176
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/cbs/app/cast/CBSMiniController$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSMiniController$2;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/cbs/app/cast/CBSMiniController$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSMiniController$3;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_1
    return-void

    .line 1165
    :catch_0
    move-exception v0

    move v2, v3

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->printStackTrace()V

    goto :goto_0

    .line 1167
    :catch_1
    move-exception v0

    move v2, v3

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->printStackTrace()V

    goto :goto_0

    .line 1169
    :catch_2
    move-exception v0

    move v2, v3

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/a;->printStackTrace()V

    goto :goto_0

    .line 1174
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 1169
    :catch_3
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_4

    .line 1167
    :catch_4
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_3

    .line 1165
    :catch_5
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_2
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSMiniController;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 243
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 245
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "override image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->a:Landroid/widget/ImageView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;II)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "MiniController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    const-string v1, "MiniController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSMiniController;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->e:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 393
    return-void

    .line 392
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/cast/CBSMiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->i:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 368
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->h:Landroid/widget/ImageView;

    .line 369
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 370
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 371
    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x190

    if-le v1, v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    :cond_0
    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->a:Landroid/widget/ImageView;

    .line 375
    const v0, 0x7f0f0125

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->b:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0f0126

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->c:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    .line 378
    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->e:Landroid/widget/ProgressBar;

    .line 379
    const v0, 0x7f0f02a6

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->l:Landroid/view/View;

    .line 380
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->m:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/cbs/app/cast/CBSMiniController$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSMiniController$5;-><init>(Lcom/cbs/app/cast/CBSMiniController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 82
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2111
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 2113
    if-eqz v0, :cond_0

    .line 2114
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 275
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->p:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->p:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->p:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 2121
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSMiniController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2122
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 2123
    if-eqz v0, :cond_1

    .line 2124
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->f:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 280
    :cond_1
    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSMiniController;->a()V

    .line 240
    return-void
.end method

.method public setIcon(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIcon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSMiniController;->a()V

    .line 269
    return-void
.end method

.method public setOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;)V
    .locals 0

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iput-object p1, p0, Lcom/cbs/app/cast/CBSMiniController;->i:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    .line 138
    :cond_0
    return-void
.end method

.method public setPlaybackStatus(II)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPlaybackStatus state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " idleReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 356
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    invoke-direct {p0, v2}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    .line 360
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    .line 2397
    iget v0, p0, Lcom/cbs/app/cast/CBSMiniController;->n:I

    packed-switch v0, :pswitch_data_1

    .line 2403
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->j:Landroid/graphics/drawable/Drawable;

    .line 325
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-direct {p0, v2}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    goto :goto_0

    .line 2399
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 2401
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-direct {p0, v2}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    goto :goto_0

    .line 334
    :pswitch_4
    iget v0, p0, Lcom/cbs/app/cast/CBSMiniController;->n:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 336
    :pswitch_5
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    invoke-direct {p0, v2}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    goto :goto_0

    .line 340
    :pswitch_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-direct {p0, v2}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    invoke-direct {p0, v2}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    goto :goto_0

    .line 352
    :pswitch_7
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cbs/app/cast/CBSMiniController;->a(Z)V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 2397
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 334
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setStreamType(I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/cbs/app/cast/CBSMiniController;->n:I

    .line 152
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 293
    const-string v1, ""

    .line 294
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 298
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 305
    :goto_0
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 315
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/cast/CBSMiniController;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-void

    .line 299
    :catch_0
    move-exception v2

    .line 300
    const-string v3, "MiniController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :catch_1
    move-exception v2

    .line 303
    const-string v3, "MiniController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/cbs/app/cast/CBSMiniController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method
