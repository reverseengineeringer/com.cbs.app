.class final Lru/truba/touchgallery/TouchView/TouchImageView$a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/truba/touchgallery/TouchView/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lru/truba/touchgallery/TouchView/TouchImageView;


# direct methods
.method private constructor <init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/truba/touchgallery/TouchView/TouchImageView;B)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lru/truba/touchgallery/TouchView/TouchImageView$a;-><init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 455
    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 456
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 457
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v3, v0

    iput v3, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 458
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 459
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    iput v2, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 460
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    div-float/2addr v0, v1

    .line 465
    :cond_0
    :goto_0
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    mul-float/2addr v3, v6

    iget-object v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v4, v4, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    .line 466
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    mul-float/2addr v3, v6

    iget-object v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v4, v4, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    .line 467
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->h:F

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->i:F

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 468
    :cond_1
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    div-float/2addr v2, v6

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    div-float/2addr v3, v6

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 469
    cmpg-float v1, v0, v7

    if-gez v1, :cond_2

    .line 470
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 471
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    aget v1, v1, v8

    .line 472
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    aget v2, v2, v9

    .line 473
    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    .line 474
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->h:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 475
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    .line 476
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 503
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 461
    :cond_3
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 462
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    iput v2, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 463
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 477
    :cond_4
    cmpl-float v0, v2, v5

    if-lez v0, :cond_2

    .line 478
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 480
    :cond_5
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6

    .line 481
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 482
    :cond_6
    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    .line 483
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 488
    :cond_7
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 489
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 490
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    aget v1, v1, v8

    .line 491
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    aget v2, v2, v9

    .line 492
    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    .line 493
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    .line 494
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 497
    :cond_8
    :goto_2
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_a

    .line 498
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 495
    :cond_9
    cmpl-float v0, v1, v5

    if-lez v0, :cond_8

    .line 496
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 499
    :cond_a
    cmpl-float v0, v2, v5

    if-lez v0, :cond_2

    .line 500
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$a;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    const/4 v1, 0x2

    iput v1, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    .line 450
    const/4 v0, 0x1

    return v0
.end method
