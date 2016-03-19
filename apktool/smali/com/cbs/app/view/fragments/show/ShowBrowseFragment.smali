.class public Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;
.implements Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$RecyclerSpacer;,
        Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;,
        Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field protected a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

.field protected b:Landroid/support/v7/widget/RecyclerView;

.field protected c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

.field protected d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

.field protected e:Lcom/cbs/app/view/BackButtonListener;

.field protected f:Z

.field protected g:Landroid/view/MenuItem;

.field protected h:Landroid/app/Activity;

.field protected i:Landroid/app/ProgressDialog;

.field private k:Landroid/support/v7/widget/GridLayoutManager;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->m:I

    .line 62
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->e:Lcom/cbs/app/view/BackButtonListener;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->l:I

    return v0
.end method

.method private a(Lcom/cbs/app/analytics/Action;)V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "appState"

    invoke-virtual {p1}, Lcom/cbs/app/analytics/Action;->getAppState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 328
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;Lcom/cbs/app/analytics/Action;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a(Lcom/cbs/app/analytics/Action;)V

    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->m:I

    return v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->p:I

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->q:I

    return v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->r:I

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b01a3

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    .line 111
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 112
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    const v1, 0x103001d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 114
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 119
    :cond_1
    return-void
.end method

.method private h()I
    .locals 7

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x3c75c28f    # 0.015f

    .line 246
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3ccccccd    # 0.025f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    .line 251
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    .line 252
    const/4 v0, 0x2

    .line 269
    :goto_0
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    int-to-float v1, v1

    const v2, 0x3fa21be0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->p:I

    .line 270
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->r:I

    .line 271
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    const/16 v2, 0x190

    if-le v1, v2, :cond_3

    .line 272
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->q:I

    .line 276
    :goto_1
    return v0

    .line 254
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    .line 255
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    .line 256
    const/4 v0, 0x3

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    .line 261
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    .line 262
    const/4 v0, 0x4

    goto :goto_0

    .line 264
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3bc49ba6    # 0.006f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    .line 265
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    .line 266
    const/4 v0, 0x5

    goto :goto_0

    .line 274
    :cond_3
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->n:I

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->q:I

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 292
    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->o:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d()V

    .line 355
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showIsLoaded() called with: showsId = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showIsLoaded: itemcount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/Shows;->group:Lcom/cbs/app/view/fragments/show/model/Group;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/Group;->showGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/Shows;->group:Lcom/cbs/app/view/fragments/show/model/Group;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/Group;->showGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(Ljava/util/ArrayList;)V

    .line 2236
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    if-eqz v0, :cond_0

    .line 2237
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 2238
    if-eqz v0, :cond_0

    .line 2239
    const v1, 0x7f0f0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2240
    sget-object v1, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/Shows;->group:Lcom/cbs/app/view/fragments/show/model/Group;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/model/Group;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 346
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d()V

    .line 348
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 321
    return-void
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->g()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 301
    iput p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->m:I

    .line 302
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    invoke-interface {v0, p1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;->a(I)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0, p1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(I)V

    .line 307
    sget-object v1, Lcom/cbs/app/analytics/Action;->bZ:Lcom/cbs/app/analytics/Action;

    .line 308
    sget-object v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a:Lcom/cbs/app/view/fragments/show/model/Shows;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/Shows;->showGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowGroups;->title:Ljava/lang/String;

    .line 309
    if-eqz v0, :cond_1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShowsBrowse"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Tapped"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v1, v0}, Lcom/cbs/app/analytics/Action;->setName(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v0}, Lcom/cbs/app/analytics/Action;->setAppState(Ljava/lang/String;)V

    .line 314
    :cond_1
    invoke-direct {p0, v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a(Lcom/cbs/app/analytics/Action;)V

    .line 315
    invoke-virtual {v1}, Lcom/cbs/app/analytics/Action;->getName()Ljava/lang/String;

    .line 316
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 361
    const-wide/16 v2, -0x1

    const-string v1, "ShowBrowse"

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/cbs/app/view/NavigationActivity;->a(JLjava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 95
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->g()V

    .line 96
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    instance-of v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    check-cast v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    .line 102
    new-instance v0, Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0, p0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setShowServiceListener(Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;)V

    .line 104
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->getEverything()V

    .line 105
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement ShowBrowseFragment.ShowBrowseListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->l:I

    .line 283
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->l:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 284
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i()V

    .line 285
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->notifyDataSetChanged()V

    .line 286
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->m:I

    .line 87
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    const v0, 0x7f03008d

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 144
    const v1, 0x7f0f0249

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    .line 145
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h()I

    move-result v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->l:I

    .line 146
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 147
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    iget v3, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->l:I

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    .line 148
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;-><init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V

    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    .line 150
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v2, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 161
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->k:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 162
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$RecyclerSpacer;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$RecyclerSpacer;-><init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 163
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->i()V

    .line 1332
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v1, :cond_1

    .line 1333
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    check-cast v1, Lcom/cbs/app/view/NavigationActivity;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->e:Lcom/cbs/app/view/BackButtonListener;

    invoke-virtual {v1, v2}, Lcom/cbs/app/view/NavigationActivity;->a(Lcom/cbs/app/view/BackButtonListener;)V

    .line 165
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->e:Lcom/cbs/app/view/BackButtonListener;

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;->c(Lcom/cbs/app/view/BackButtonListener;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->c()V

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 135
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    .line 136
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    .line 137
    iput-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 173
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->e()V

    .line 175
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 224
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->m:I

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->setLastId(I)V

    .line 2182
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 2183
    if-eqz v2, :cond_1

    .line 2184
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2185
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3d449ba6    # 0.048f

    .line 2186
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 2187
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2188
    if-eqz v3, :cond_0

    .line 2189
    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 2190
    int-to-float v5, v4

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v4

    const v7, 0x3fd9999a    # 1.7f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v8, v5, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2192
    :cond_0
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v0, v1

    .line 2193
    const v0, 0x7f0f0248

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2194
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2195
    const v1, 0x7f0f0247

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2196
    invoke-virtual {v0, v9, v9, v3, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2197
    new-instance v1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2214
    const v0, 0x7f0f0246

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2215
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2216
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d:Lcom/cbs/app/view/fragments/show/ShowServiceManager;

    iget v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->m:I

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(I)V

    .line 232
    :cond_2
    return-void

    .line 2185
    :cond_3
    const v0, 0x3d1ba5e3    # 0.038f

    goto/16 :goto_0
.end method

.method public setAlreadyClicked(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 179
    return-void
.end method
