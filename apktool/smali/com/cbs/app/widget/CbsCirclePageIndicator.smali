.class public Lcom/cbs/app/widget/CbsCirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:F

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:F

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f010189

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->p:F

    .line 62
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 68
    const v2, 0x7f0d0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 69
    const v3, 0x7f0c0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 70
    const v4, 0x7f0d0052

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 71
    const v5, 0x7f0a00e7

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 72
    const v6, 0x7f0a00e6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 73
    const v7, 0x7f090009

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 74
    const v8, 0x7f09000a

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 77
    sget-object v8, Lcom/viewpagerindicator/R$styleable;->CirclePageIndicator:[I

    invoke-virtual {p1, p2, v8, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 79
    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->m:Z

    .line 80
    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    .line 81
    iget-object v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v7, 0x5

    invoke-virtual {v8, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    const/16 v3, 0x8

    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {v8, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->d:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    const/4 v1, 0x6

    invoke-virtual {v8, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    .line 89
    const/4 v1, 0x7

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->n:Z

    .line 91
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->o:I

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 5

    .prologue
    .line 454
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 455
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 457
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 471
    :cond_1
    :goto_0
    return v0

    .line 464
    :cond_2
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 467
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 468
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 482
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 483
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 485
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 496
    :goto_0
    return v0

    .line 490
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 492
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 493
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 181
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    if-lt v0, v9, :cond_1

    .line 191
    invoke-virtual {p0, v5}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    if-nez v0, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getWidth()I

    move-result v3

    .line 201
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 202
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 211
    :goto_1
    iget v4, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v4

    .line 212
    int-to-float v0, v0

    iget v4, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    add-float/2addr v4, v0

    .line 213
    int-to-float v0, v2

    iget v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    add-float/2addr v0, v7

    .line 214
    iget-boolean v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->m:Z

    if-eqz v7, :cond_2

    .line 215
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v6

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 221
    :cond_2
    iget v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    .line 222
    iget-object v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 227
    :cond_3
    :goto_2
    if-ge v5, v9, :cond_8

    .line 228
    int-to-float v2, v5

    mul-float/2addr v2, v6

    add-float/2addr v2, v0

    .line 229
    iget v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    if-nez v3, :cond_7

    move v3, v2

    move v2, v4

    .line 237
    :goto_3
    iget-object v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-lez v7, :cond_4

    .line 238
    iget-object v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    :cond_4
    iget v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_5

    .line 242
    iget v7, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    iget-object v8, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 227
    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 205
    :cond_6
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getHeight()I

    move-result v3

    .line 206
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 208
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_7
    move v3, v4

    .line 233
    goto :goto_3

    .line 247
    :cond_8
    iget-boolean v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->n:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->i:I

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 248
    iget-boolean v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->n:Z

    if-nez v2, :cond_9

    .line 249
    iget v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->j:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 251
    :cond_9
    iget v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    if-nez v2, :cond_b

    .line 252
    add-float/2addr v0, v1

    .line 258
    :goto_5
    iget v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    iget-object v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 247
    :cond_a
    iget v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    goto :goto_4

    .line 256
    :cond_b
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    if-nez v0, :cond_0

    .line 440
    invoke-direct {p0, p1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setMeasuredDimension(II)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0, p1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 393
    iput p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->k:I

    .line 397
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 406
    iput p2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->j:F

    .line 407
    rem-int/lit8 v0, p1, 0x5

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    .line 408
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 409
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 412
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 418
    rem-int/lit8 v0, p1, 0x5

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    .line 419
    rem-int/lit8 v0, p1, 0x5

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->i:I

    .line 420
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 422
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 425
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 501
    check-cast p1, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;

    .line 502
    invoke-virtual {p1}, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 503
    iget v0, p1, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    .line 504
    iget v0, p1, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->i:I

    .line 505
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->requestLayout()V

    .line 506
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 510
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 512
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    iput v0, v1, Lcom/cbs/app/widget/CbsCirclePageIndicator$SavedState;->a:I

    .line 513
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 263
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 267
    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 271
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 273
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->p:F

    goto :goto_0

    .line 278
    :pswitch_2
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 279
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 280
    iget v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->p:F

    sub-float v2, v0, v2

    .line 282
    iget-boolean v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->q:Z

    if-nez v3, :cond_4

    .line 283
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->o:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 284
    iput-boolean v1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->q:Z

    .line 288
    :cond_4
    iget-boolean v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->q:Z

    if-eqz v3, :cond_0

    .line 289
    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->p:F

    .line 290
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 300
    :pswitch_3
    iget-boolean v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->q:Z

    if-nez v3, :cond_7

    .line 303
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->getWidth()I

    move-result v3

    .line 304
    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 305
    int-to-float v3, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v3, v5

    .line 307
    iget v5, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    if-lez v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v6, v4, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 308
    if-eq v2, v7, :cond_0

    .line 309
    iget-object v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 310
    iget v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->onPageSelected(I)V

    goto/16 :goto_0

    .line 315
    :cond_6
    iget v5, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    const/4 v6, 0x4

    if-ge v5, v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v3, v4

    cmpl-float v3, v5, v3

    if-lez v3, :cond_7

    .line 316
    if-eq v2, v7, :cond_0

    .line 317
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 323
    :cond_7
    iput-boolean v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->q:Z

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    .line 325
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 331
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 332
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->p:F

    .line 333
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    goto/16 :goto_0

    .line 338
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 339
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 340
    iget v4, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    if-ne v3, v4, :cond_9

    .line 341
    if-nez v2, :cond_8

    move v0, v1

    .line 342
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    .line 344
    :cond_9
    iget v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->a:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->p:F

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->m:Z

    .line 106
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 107
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 379
    iput p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->h:I

    .line 380
    if-nez p1, :cond_1

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->onPageSelected(I)V

    .line 384
    :cond_1
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 125
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 430
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    iput p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->l:I

    .line 136
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->requestLayout()V

    .line 137
    return-void

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 116
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->e:F

    .line 167
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 168
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->n:Z

    .line 176
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 177
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 150
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    .line 159
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2
    iput-object p1, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    .line 363
    iget-object v0, p0, Lcom/cbs/app/widget/CbsCirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 370
    invoke-virtual {p0, p2}, Lcom/cbs/app/widget/CbsCirclePageIndicator;->setCurrentItem(I)V

    .line 371
    return-void
.end method
