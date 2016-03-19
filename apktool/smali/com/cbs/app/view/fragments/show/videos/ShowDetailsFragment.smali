.class public Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field a:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field b:Ljava/lang/String;

.field c:Landroid/os/Bundle;

.field d:I

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field public h:Lcom/cbs/app/androiddata/ResponseModelListener;

.field public i:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private k:Landroid/view/View;

.field private l:Lcom/cbs/app/view/model/Show;

.field private m:Lcom/cbs/app/view/model/ShowConfig;

.field private n:[Lcom/cbs/app/view/model/Asset;

.field private o:[Lcom/cbs/app/view/model/AssetCarouselItem;

.field private p:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 82
    sget-object v0, Lcom/cbs/app/view/model/registration/UserDescription;->ANONYMOUS:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    .line 85
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    .line 86
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f:I

    .line 89
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    .line 90
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->m:Lcom/cbs/app/view/model/ShowConfig;

    .line 91
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    .line 92
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->o:[Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 98
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$7;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$7;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 125
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$8;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$8;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;Lcom/cbs/app/view/model/UpsellInfo;)V
    .locals 8

    .prologue
    const v7, 0x7f0f0349

    const v6, 0x7f0f0347

    const v5, 0x7f0f0345

    const/16 v4, 0x8

    .line 71
    .line 3323
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3324
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3325
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v2, "totalEpisodeCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    .line 3326
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v2, "premiumEpisodeCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    .line 3327
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v2, "delayedEpisodeCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f:I

    .line 3329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bundle Values: free"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " premium:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3331
    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    .line 3332
    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    sub-int v3, v1, v2

    .line 3334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "totalFreeEpisode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totalCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "premiumCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3342
    if-gtz v3, :cond_0

    iget v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    if-lez v1, :cond_3

    .line 3344
    :cond_0
    const v1, 0x7f0f0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3345
    const v1, 0x7f0f0348

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3346
    if-eqz v0, :cond_3

    .line 3347
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3348
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$9;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$9;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3366
    if-eqz v3, :cond_4

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    if-eqz v2, :cond_4

    .line 3368
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3369
    if-eqz v2, :cond_1

    .line 3370
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3372
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3373
    if-eqz v0, :cond_2

    .line 3374
    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3376
    :cond_2
    if-eqz v1, :cond_3

    .line 3377
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3378
    invoke-virtual {p1}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3379
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$10;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3411
    :cond_3
    :goto_0
    return-void

    .line 3398
    :cond_4
    if-eqz v3, :cond_7

    .line 3400
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3401
    if-eqz v2, :cond_5

    .line 3402
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3404
    :cond_5
    const v2, 0x7f0f0346

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3405
    if-eqz v0, :cond_6

    .line 3406
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3408
    :cond_6
    if-eqz v1, :cond_3

    .line 3409
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3411
    :cond_7
    if-nez v3, :cond_3

    iget v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    if-eqz v2, :cond_3

    .line 3413
    const v2, 0x7f0f0344

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3414
    if-eqz v2, :cond_8

    .line 3415
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3417
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3418
    if-eqz v2, :cond_9

    .line 3419
    iget v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3421
    :cond_9
    if-eqz v1, :cond_3

    .line 3422
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3423
    invoke-virtual {p1}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3424
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$11;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$11;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Lcom/cbs/app/view/model/ShowConfig;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->m:Lcom/cbs/app/view/model/ShowConfig;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 577
    const/4 v2, 0x0

    .line 578
    const-string v0, "Landscape"

    .line 579
    if-ne p1, v10, :cond_0

    .line 580
    const-string v0, "Portrait"

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    if-eqz v1, :cond_4

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "assets length: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v1, v5, v3

    .line 585
    invoke-virtual {v1}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v7

    .line 587
    if-eqz v7, :cond_3

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Asset;->getFeature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 596
    :goto_1
    if-eqz v1, :cond_2

    .line 598
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v2, 0x7f0f018b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 600
    check-cast v0, Landroid/widget/ImageView;

    .line 601
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    invoke-virtual {v1}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v2

    .line 603
    if-eqz v2, :cond_2

    .line 605
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 608
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 611
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5, v3, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 612
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 616
    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-double v4, v3

    .line 617
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 618
    long-to-int v3, v4

    .line 620
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 621
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 622
    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 624
    :cond_1
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v1

    .line 625
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v3

    .line 626
    int-to-double v4, v1

    int-to-float v1, v3

    invoke-static {v2, v4, v5, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->c(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 632
    :cond_2
    return-void

    .line 584
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)Lcom/cbs/app/view/model/Show;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const v1, 0x7f0f00ea

    .line 188
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_2
    :goto_0
    return-void

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_2

    .line 198
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 222
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 226
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserStatus()Lcom/cbs/app/view/model/registration/UserStatus;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/cbs/app/view/model/registration/UserStatus;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    .line 2248
    :cond_0
    const/4 v0, 0x0

    .line 2249
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2250
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Classics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2251
    const/4 v0, 0x1

    .line 237
    :cond_1
    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getClassicsOverlayData()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->SUSPENDED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getAllAccessSeasonData()V

    .line 245
    :cond_3
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x35

    const/4 v3, -0x1

    .line 452
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 453
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_0

    .line 456
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 460
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3, v0, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 467
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 468
    invoke-virtual {v2, v0, v0, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 469
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, -0x1

    .line 486
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->o:[Lcom/cbs/app/view/model/AssetCarouselItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->o:[Lcom/cbs/app/view/model/AssetCarouselItem;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 489
    if-eqz v0, :cond_1

    .line 490
    const/4 v1, 0x0

    .line 491
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->o:[Lcom/cbs/app/view/model/AssetCarouselItem;

    array-length v5, v4

    move-object v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_0
    if-eqz v3, :cond_1

    .line 495
    invoke-virtual {v3}, Lcom/cbs/app/view/model/AssetCarouselItem;->getFilepath()Ljava/lang/String;

    move-result-object v4

    .line 496
    if-eqz v4, :cond_1

    .line 498
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 500
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 501
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0027

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 502
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 503
    int-to-float v6, v1

    mul-float/2addr v5, v6

    float-to-double v6, v5

    .line 504
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 505
    long-to-int v5, v6

    .line 506
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 507
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 510
    iget-object v7, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v7}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 512
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v1, v5

    .line 518
    :goto_1
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v5, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v5

    .line 520
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v6}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v6

    .line 522
    int-to-double v8, v5

    int-to-float v5, v6

    invoke-static {v4, v8, v9, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v4

    .line 542
    int-to-double v6, v1

    const-wide/high16 v8, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 544
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 545
    const/16 v1, 0xa

    invoke-virtual {v6, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 546
    const/16 v1, 0xb

    invoke-virtual {v6, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 548
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    invoke-static {v4, v0}, Lcom/cbs/app/view/utils/ImageHelper;->c(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 551
    invoke-virtual {v3}, Lcom/cbs/app/view/model/AssetCarouselItem;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v3}, Lcom/cbs/app/view/model/AssetCarouselItem;->getTarget()Ljava/util/ArrayList;

    move-result-object v3

    .line 553
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 554
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$12;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    :cond_1
    return-void

    .line 515
    :cond_2
    mul-int/lit8 v5, v6, 0x2

    sub-int/2addr v1, v5

    goto :goto_1
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 812
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e()V

    .line 814
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f()V

    .line 816
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 818
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b(I)V

    .line 2645
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2646
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 2648
    check-cast v0, Landroid/widget/Button;

    .line 2649
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2650
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$13;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$13;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2675
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 2676
    check-cast v0, Landroid/widget/Button;

    .line 2677
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    const-string v3, "Show Page"

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/service/ButtonServiceHelper;->b(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Show;Ljava/lang/String;)Z

    .line 2680
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2681
    if-eqz v0, :cond_3

    .line 2682
    const/4 v1, 0x0

    .line 2683
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    instance-of v2, v2, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v2, :cond_2

    .line 2684
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    check-cast v1, Lcom/cbs/app/view/NavigationActivity;

    .line 2685
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cbs/app/view/NavigationActivity;->a(J)Ljava/util/List;

    move-result-object v1

    .line 2689
    :cond_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2691
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2692
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2693
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/Episode;

    .line 2694
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    const-string v3, "Show Home"

    invoke-static {v0, v2, v1, v3}, Lcom/cbs/app/service/ButtonServiceHelper;->a(Landroid/view/View;Landroid/content/Context;Lcom/cbs/app/view/model/Episode;Ljava/lang/String;)Z

    .line 2700
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f0329

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2701
    if-eqz v0, :cond_4

    .line 2702
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2703
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$14;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$14;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2739
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2740
    if-eqz v0, :cond_5

    .line 2742
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2743
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2777
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2778
    if-eqz v0, :cond_6

    .line 2780
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2781
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    :cond_6
    return-void

    .line 2697
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 917
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 918
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 919
    const v0, 0x7f0300ef

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 920
    const v0, 0x7f0f0171

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 922
    check-cast v0, Landroid/widget/Button;

    .line 923
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$6;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$6;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_2

    .line 932
    const v0, 0x7f0f0170

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 933
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 934
    check-cast v0, Landroid/widget/TextView;

    .line 936
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :cond_1
    const v0, 0x7f0f0183

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 940
    check-cast v0, Landroid/widget/TextView;

    .line 942
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getAbout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 946
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e()V

    .line 297
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f()V

    .line 298
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b(I)V

    .line 300
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c()V

    .line 302
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/view/model/UpsellInfo;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 826
    invoke-virtual {p1}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v1

    .line 827
    invoke-virtual {p1}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    .line 829
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " Overlay view : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 831
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v3, 0x7f0f0342

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 832
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 833
    if-eqz v3, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " Overlay include : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 838
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->i(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 840
    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 845
    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 848
    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 849
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 850
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v3, 0x7f0f02d4

    invoke-static {v0, v3}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_1

    .line 855
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 859
    if-eqz v0, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 861
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 888
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->REGISTERED:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->b:Ljava/lang/String;

    sget-object v1, Lcom/cbs/app/view/model/registration/UserDescription;->EX_SUBSCRIBER:Lcom/cbs/app/view/model/registration/UserDescription;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/registration/UserDescription;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 890
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 909
    :cond_4
    :goto_2
    return-void

    .line 843
    :cond_5
    const/high16 v4, 0x42f00000    # 120.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    goto :goto_0

    .line 863
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 864
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$4;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 892
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    const v1, 0x7f0f0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 893
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$5;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment$5;-><init>(Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public final a([Lcom/cbs/app/view/model/AssetCarouselItem;III)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->o:[Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 309
    iput p2, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d:I

    .line 310
    iput p3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->e:I

    .line 311
    iput p4, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->f:I

    .line 314
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d()V

    .line 316
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->g()V

    .line 320
    return-void
.end method

.method public getAllAccessSeasonData()V
    .locals 4

    .prologue
    .line 267
    new-instance v0, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v0}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 268
    const-string v1, "ALL_ACCESS_SEASON_DATA"

    .line 270
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->i:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v2, v1, v3}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 271
    return-void
.end method

.method public getClassicsOverlayData()V
    .locals 4

    .prologue
    .line 259
    new-instance v0, Lcom/cbs/app/service/UpsellService;

    invoke-direct {v0}, Lcom/cbs/app/service/UpsellService;-><init>()V

    .line 260
    const-string v1, "CLASSICS_OVERLAY"

    .line 262
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->h:Lcom/cbs/app/androiddata/ResponseModelListener;

    invoke-virtual {v0, v2, v1, v3}, Lcom/cbs/app/service/UpsellService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    .line 263
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 155
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 163
    const v0, 0x7f0300ea

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    .line 164
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    .line 165
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowConfig;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->m:Lcom/cbs/app/view/model/ShowConfig;

    .line 168
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    instance-of v1, v0, [Lcom/cbs/app/view/model/Asset;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, [Lcom/cbs/app/view/model/Asset;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c:Landroid/os/Bundle;

    const-string v1, "assetCarousel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    instance-of v1, v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    if-eqz v1, :cond_1

    .line 174
    check-cast v0, [Lcom/cbs/app/view/model/AssetCarouselItem;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->o:[Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->l:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1480
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->g()V

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->c()V

    .line 184
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->k:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 637
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 639
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->a:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 640
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 211
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/show/videos/ShowDetailsFragment;->d()V

    .line 214
    return-void
.end method
