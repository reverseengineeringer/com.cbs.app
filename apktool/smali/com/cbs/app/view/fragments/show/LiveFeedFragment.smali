.class public Lcom/cbs/app/view/fragments/show/LiveFeedFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field h:Z

.field i:Lcom/cbs/app/view/model/UpsellInfo;

.field j:Ljava/lang/String;

.field k:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->h:Z

    .line 49
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->j:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->m:J

    .line 53
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->n:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->o:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->p:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->q:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->r:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->s:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->k:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->setRetainInstance(Z)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 10

    .prologue
    const/16 v1, 0x384

    const v9, 0x3f19999a    # 0.6f

    const/4 v8, 0x0

    .line 232
    if-eqz p1, :cond_1

    .line 233
    const v0, 0x7f0f01e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 234
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 235
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 236
    if-nez v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->q:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://www.cbs.com/base/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 243
    if-le v2, v1, :cond_2

    .line 244
    :goto_0
    invoke-static {v3, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 245
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0, v2}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 253
    :cond_0
    :goto_1
    const v0, 0x7f0f01e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 254
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v5, v1

    .line 257
    const v1, 0x7f0f01ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 258
    const v2, 0x7f0f01eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 259
    const v3, 0x7f0f01ed

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 260
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    const v7, 0x3ced9168    # 0.029f

    mul-float/2addr v6, v7

    iget v7, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    .line 261
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    const v1, 0x3f2e147b    # 0.68f

    mul-float/2addr v1, v6

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 263
    mul-float v1, v6, v9

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 264
    const/high16 v1, 0x41600000    # 14.0f

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v5, v8, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v2

    .line 243
    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 249
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 250
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 251
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 266
    :cond_4
    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 267
    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_0

    .line 276
    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a(Landroid/view/View;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Title: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const v0, 0x7f0f01ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v0, 0x7f0f01ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "meg: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const v0, 0x7f0f01eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 292
    const v0, 0x7f0f01ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 293
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    new-instance v1, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_0
    return-void
.end method

.method public getUpsellInfo()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 167
    .line 169
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 171
    new-instance v2, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v2}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 175
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->t:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    if-eqz v1, :cond_3

    .line 181
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "android-phone"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->k:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v2, v1, v0, v3}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 197
    :cond_1
    return-void

    .line 177
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "android-tablet"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const-string v0, "android-phone/shows/big_brother/live_feed"

    goto :goto_1

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v0, "android-tablet/shows/big_brother/live_feed"

    goto :goto_1
.end method

.method public getuserStatus()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->j:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->j:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->h:Z

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->h:Z

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onAttach(Landroid/app/Activity;)V

    .line 314
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->getUpsellInfo()V

    .line 315
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/cbs/app/view/AbstractAsyncFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const v0, 0x7f030077

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 129
    const-string v2, "showId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->m:J

    .line 131
    const-string v2, "pageUrl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->t:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->getuserStatus()V

    .line 135
    return-object v0

    .line 124
    :cond_1
    const v0, 0x7f030076

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroy()V

    .line 229
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 319
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 320
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a()V

    .line 219
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onStart()V

    .line 224
    return-void
.end method
