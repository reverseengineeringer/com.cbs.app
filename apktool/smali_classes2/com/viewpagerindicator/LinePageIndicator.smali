.class public Lcom/viewpagerindicator/LinePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/viewpagerindicator/LinePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private e:I

.field private f:Z

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/viewpagerindicator/R$attr;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 67
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    sget v1, Lcom/viewpagerindicator/R$color;->default_line_indicator_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 73
    sget v2, Lcom/viewpagerindicator/R$color;->default_line_indicator_unselected_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 74
    sget v3, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_line_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 75
    sget v4, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_gap_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 76
    sget v5, Lcom/viewpagerindicator/R$dimen;->default_line_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 77
    sget v6, Lcom/viewpagerindicator/R$bool;->default_line_indicator_centered:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 80
    sget-object v6, Lcom/viewpagerindicator/R$styleable;->LinePageIndicator:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 82
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    .line 83
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    .line 84
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    .line 85
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 164
    if-eqz v8, :cond_0

    .line 168
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-lt v0, v8, :cond_2

    .line 169
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    add-float v9, v0, v1

    .line 174
    int-to-float v0, v8

    mul-float/2addr v0, v9

    iget v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    sub-float v1, v0, v1

    .line 175
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 176
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 177
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    .line 179
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 181
    iget-boolean v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    if-eqz v4, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    move v6, v0

    .line 186
    :goto_1
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v8, :cond_0

    .line 187
    int-to-float v0, v7

    mul-float/2addr v0, v9

    add-float v1, v6, v0

    .line 188
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    add-float v3, v1, v0

    .line 189
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-ne v7, v0, :cond_3

    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    :goto_3
    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 189
    :cond_3
    iget-object v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    goto :goto_3

    :cond_4
    move v6, v0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 345
    .line 1357
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1358
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1360
    if-eq v1, v7, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_3

    .line 1362
    :cond_0
    int-to-float v0, v2

    .line 1372
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v1, v0

    .line 1384
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1385
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1387
    if-ne v2, v7, :cond_4

    .line 1389
    int-to-float v0, v3

    .line 1398
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 345
    invoke-virtual {p0, v1, v0}, Lcom/viewpagerindicator/LinePageIndicator;->setMeasuredDimension(II)V

    .line 346
    return-void

    .line 1365
    :cond_3
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1366
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 1368
    if-ne v1, v6, :cond_1

    .line 1369
    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 1392
    :cond_4
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 1394
    if-ne v2, v6, :cond_2

    .line 1395
    int-to-float v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 326
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 330
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 331
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 333
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 403
    check-cast p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    .line 404
    invoke-virtual {p1}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    iget v0, p1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 406
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->requestLayout()V

    .line 407
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 413
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    iput v0, v1, Lcom/viewpagerindicator/LinePageIndicator$SavedState;->a:I

    .line 414
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 194
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 198
    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 202
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 204
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    goto :goto_0

    .line 209
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 210
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 211
    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    sub-float v2, v0, v2

    .line 213
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-nez v3, :cond_4

    .line 214
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->i:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 215
    iput-boolean v1, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    .line 219
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-eqz v3, :cond_0

    .line 220
    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 221
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    if-nez v3, :cond_7

    .line 232
    iget-object v3, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 233
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->getWidth()I

    move-result v4

    .line 234
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 235
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 237
    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 238
    if-eq v2, v8, :cond_0

    .line 239
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 242
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 243
    if-eq v2, v8, :cond_0

    .line 244
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 250
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->l:Z

    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 252
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 256
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 257
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    .line 258
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    goto/16 :goto_0

    .line 263
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 264
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 265
    iget v4, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    if-ne v3, v4, :cond_9

    .line 266
    if-nez v2, :cond_8

    move v0, v1

    .line 267
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    .line 269
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->k:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->j:F

    goto/16 :goto_0

    .line 202
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
    .line 102
    iput-boolean p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->f:Z

    .line 103
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 104
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 305
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->e:I

    .line 306
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 307
    return-void
.end method

.method public setGapWidth(F)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->h:F

    .line 149
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 150
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->g:F

    .line 130
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 131
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 341
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 122
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 141
    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    .line 113
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    .line 289
    iget-object v0, p0, Lcom/viewpagerindicator/LinePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/viewpagerindicator/LinePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 296
    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/LinePageIndicator;->setCurrentItem(I)V

    .line 297
    return-void
.end method
