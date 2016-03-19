.class final Landroid/support/design/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Paint;

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:Z

.field private final I:Landroid/text/TextPaint;

.field private J:Landroid/view/animation/Interpolator;

.field private K:Landroid/view/animation/Interpolator;

.field private L:F

.field private M:F

.field private N:F

.field private O:I

.field private P:F

.field private Q:F

.field private R:F

.field private S:I

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:F

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Landroid/graphics/Typeface;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/graphics/Typeface;

.field private x:Ljava/lang/CharSequence;

.field private y:Ljava/lang/CharSequence;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/d;->a:Z

    .line 47
    const/4 v0, 0x0

    .line 48
    sput-object v0, Landroid/support/design/widget/d;->b:Landroid/graphics/Paint;

    .line 52
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Landroid/support/design/widget/d;->i:I

    .line 63
    iput v1, p0, Landroid/support/design/widget/d;->j:I

    .line 64
    iput v0, p0, Landroid/support/design/widget/d;->k:F

    .line 65
    iput v0, p0, Landroid/support/design/widget/d;->l:F

    .line 106
    iput-object p1, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    .line 108
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    .line 109
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    .line 114
    return-void
.end method

.method private static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    .prologue
    .line 645
    if-eqz p3, :cond_0

    .line 646
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 648
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5

    .prologue
    .line 635
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 636
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 637
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 638
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 639
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    .line 640
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(FF)Z
    .locals 2

    .prologue
    .line 617
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 317
    .line 1418
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1420
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/d;->o:F

    iget v2, p0, Landroid/support/design/widget/d;->p:F

    iget-object v3, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1422
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1424
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 318
    iget v0, p0, Landroid/support/design/widget/d;->q:F

    iget v1, p0, Landroid/support/design/widget/d;->r:F

    iget-object v2, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->s:F

    .line 320
    iget v0, p0, Landroid/support/design/widget/d;->o:F

    iget v1, p0, Landroid/support/design/widget/d;->p:F

    iget-object v2, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->t:F

    .line 323
    iget v0, p0, Landroid/support/design/widget/d;->k:F

    iget v1, p0, Landroid/support/design/widget/d;->l:F

    iget-object v2, p0, Landroid/support/design/widget/d;->K:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/d;->d(F)V

    .line 326
    iget v0, p0, Landroid/support/design/widget/d;->n:I

    iget v1, p0, Landroid/support/design/widget/d;->m:I

    if-eq v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/d;->m:I

    iget v2, p0, Landroid/support/design/widget/d;->n:I

    invoke-static {v1, v2, p1}, Landroid/support/design/widget/d;->a(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 334
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/d;->P:F

    iget v2, p0, Landroid/support/design/widget/d;->L:F

    invoke-static {v1, v2, p1, v5}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/d;->Q:F

    iget v3, p0, Landroid/support/design/widget/d;->M:F

    invoke-static {v2, v3, p1, v5}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/d;->R:F

    iget v4, p0, Landroid/support/design/widget/d;->N:F

    invoke-static {v3, v4, p1, v5}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/d;->S:I

    iget v5, p0, Landroid/support/design/widget/d;->O:I

    invoke-static {v4, v5, p1}, Landroid/support/design/widget/d;->a(IIF)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 340
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 341
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/d;->n:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private d(F)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 485
    invoke-direct {p0, p1}, Landroid/support/design/widget/d;->e(F)V

    .line 488
    sget-boolean v0, Landroid/support/design/widget/d;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/d;->F:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/d;->A:Z

    .line 490
    iget-boolean v0, p0, Landroid/support/design/widget/d;->A:Z

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 496
    return-void

    :cond_1
    move v0, v2

    .line 488
    goto :goto_0

    .line 1556
    :cond_2
    invoke-direct {p0, v4}, Landroid/support/design/widget/d;->c(F)V

    .line 1557
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->D:F

    .line 1558
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->E:F

    .line 1560
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1561
    iget v1, p0, Landroid/support/design/widget/d;->E:F

    iget v3, p0, Landroid/support/design/widget/d;->D:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1563
    if-lez v0, :cond_0

    if-lez v5, :cond_0

    .line 1567
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    .line 1569
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1570
    iget-object v1, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1572
    iget-object v0, p0, Landroid/support/design/widget/d;->C:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1574
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/d;->C:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method private e(F)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Landroid/support/design/widget/d;->x:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    invoke-static {p1, v0}, Landroid/support/design/widget/d;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 506
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 507
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    .line 508
    iput v6, p0, Landroid/support/design/widget/d;->F:F

    .line 509
    iget-object v4, p0, Landroid/support/design/widget/d;->w:Landroid/graphics/Typeface;

    iget-object v5, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    if-eq v4, v5, :cond_b

    .line 510
    iget-object v4, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    iput-object v4, p0, Landroid/support/design/widget/d;->w:Landroid/graphics/Typeface;

    move v4, v3

    move v3, v0

    move v0, v1

    .line 530
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 531
    iget v5, p0, Landroid/support/design/widget/d;->G:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/support/design/widget/d;->H:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    .line 532
    :goto_2
    iput v3, p0, Landroid/support/design/widget/d;->G:F

    .line 533
    iput-boolean v2, p0, Landroid/support/design/widget/d;->H:Z

    .line 536
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_0

    .line 537
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/d;->G:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 538
    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/widget/d;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 541
    iget-object v0, p0, Landroid/support/design/widget/d;->x:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 543
    iget-object v3, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 544
    iput-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    .line 545
    iget-object v3, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    .line 2477
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 2479
    :goto_3
    if-eqz v1, :cond_9

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v3, v2, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 545
    iput-boolean v0, p0, Landroid/support/design/widget/d;->z:Z

    goto :goto_0

    .line 514
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    .line 515
    iget v3, p0, Landroid/support/design/widget/d;->k:F

    .line 516
    iget-object v0, p0, Landroid/support/design/widget/d;->w:Landroid/graphics/Typeface;

    iget-object v5, p0, Landroid/support/design/widget/d;->v:Landroid/graphics/Typeface;

    if-eq v0, v5, :cond_a

    .line 517
    iget-object v0, p0, Landroid/support/design/widget/d;->v:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/design/widget/d;->w:Landroid/graphics/Typeface;

    move v0, v1

    .line 521
    :goto_5
    iget v5, p0, Landroid/support/design/widget/d;->k:F

    invoke-static {p1, v5}, Landroid/support/design/widget/d;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 523
    iput v6, p0, Landroid/support/design/widget/d;->F:F

    goto :goto_1

    .line 526
    :cond_6
    iget v5, p0, Landroid/support/design/widget/d;->k:F

    div-float v5, p1, v5

    iput v5, p0, Landroid/support/design/widget/d;->F:F

    goto :goto_1

    :cond_7
    move v0, v2

    .line 531
    goto :goto_2

    :cond_8
    move v1, v2

    .line 2477
    goto :goto_3

    .line 2479
    :cond_9
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v4, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_1
.end method

.method private g(I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10103ac

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 247
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 252
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    :goto_0
    return-object v0

    .line 252
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/d;->d:Z

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/support/design/widget/d;->e:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/d;->c(F)V

    .line 314
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    .line 610
    :cond_0
    return-void
.end method


# virtual methods
.method final a()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method final a(F)V
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/support/design/widget/d;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 128
    iput p1, p0, Landroid/support/design/widget/d;->k:F

    .line 129
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 131
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/support/design/widget/d;->n:I

    if-eq v0, p1, :cond_0

    .line 142
    iput p1, p0, Landroid/support/design/widget/d;->n:I

    .line 143
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 145
    :cond_0
    return-void
.end method

.method final a(IIII)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/d;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/d;->H:Z

    .line 158
    invoke-direct {p0}, Landroid/support/design/widget/d;->g()V

    .line 160
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 431
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/d;->d:Z

    if-eqz v0, :cond_2

    .line 432
    iget v4, p0, Landroid/support/design/widget/d;->s:F

    .line 433
    iget v5, p0, Landroid/support/design/widget/d;->t:F

    .line 435
    iget-boolean v0, p0, Landroid/support/design/widget/d;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 441
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/d;->G:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 443
    if-eqz v0, :cond_4

    .line 444
    iget v1, p0, Landroid/support/design/widget/d;->D:F

    iget v3, p0, Landroid/support/design/widget/d;->F:F

    mul-float/2addr v1, v3

    .line 457
    :goto_1
    if-eqz v0, :cond_0

    .line 458
    add-float/2addr v5, v1

    .line 461
    :cond_0
    iget v1, p0, Landroid/support/design/widget/d;->F:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 462
    iget v1, p0, Landroid/support/design/widget/d;->F:F

    iget v3, p0, Landroid/support/design/widget/d;->F:F

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 465
    :cond_1
    if-eqz v0, :cond_5

    .line 467
    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/d;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 473
    :cond_2
    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 474
    return-void

    :cond_3
    move v0, v2

    .line 435
    goto :goto_0

    .line 447
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    const/4 v1, 0x0

    .line 448
    iget-object v3, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    goto :goto_1

    .line 469
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method final a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 259
    iput-object p1, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    .line 260
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 262
    :cond_0
    return-void
.end method

.method final a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/design/widget/d;->K:Landroid/view/animation/Interpolator;

    .line 118
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 119
    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 593
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->x:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/d;->x:Ljava/lang/CharSequence;

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    .line 596
    invoke-direct {p0}, Landroid/support/design/widget/d;->i()V

    .line 597
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 599
    :cond_1
    return-void
.end method

.method final b()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Landroid/support/design/widget/d;->e:F

    return v0
.end method

.method final b(F)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 292
    .line 1026
    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    move p1, v0

    .line 294
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/design/widget/d;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 295
    iput p1, p0, Landroid/support/design/widget/d;->e:F

    .line 296
    invoke-direct {p0}, Landroid/support/design/widget/d;->h()V

    .line 298
    :cond_1
    return-void

    .line 1026
    :cond_2
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/support/design/widget/d;->m:I

    if-eq v0, p1, :cond_0

    .line 149
    iput p1, p0, Landroid/support/design/widget/d;->m:I

    .line 150
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 152
    :cond_0
    return-void
.end method

.method final b(IIII)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/d;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/d;->H:Z

    .line 166
    invoke-direct {p0}, Landroid/support/design/widget/d;->g()V

    .line 168
    :cond_0
    return-void
.end method

.method final b(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/design/widget/d;->v:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 266
    iput-object p1, p0, Landroid/support/design/widget/d;->v:Landroid/graphics/Typeface;

    .line 267
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 269
    :cond_0
    return-void
.end method

.method final b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Landroid/support/design/widget/d;->J:Landroid/view/animation/Interpolator;

    .line 123
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 124
    return-void
.end method

.method final c()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    return v0
.end method

.method final c(I)V
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/support/design/widget/d;->i:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Landroid/support/design/widget/d;->i:I

    .line 178
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 180
    :cond_0
    return-void
.end method

.method final c(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Landroid/support/design/widget/d;->v:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    .line 273
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 274
    return-void
.end method

.method public final d()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 579
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 3344
    iget v5, p0, Landroid/support/design/widget/d;->G:F

    .line 3347
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/d;->e(F)V

    .line 3348
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0, v2, v4, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 3350
    :goto_0
    iget v6, p0, Landroid/support/design/widget/d;->j:I

    iget-boolean v2, p0, Landroid/support/design/widget/d;->z:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v6, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 3352
    and-int/lit8 v6, v2, 0x70

    sparse-switch v6, :sswitch_data_0

    .line 3361
    iget-object v6, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v7, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 3362
    div-float/2addr v6, v8

    iget-object v7, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 3363
    iget-object v7, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/d;->p:F

    .line 3366
    :goto_2
    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_1

    .line 3375
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/d;->r:F

    .line 3379
    :goto_3
    iget v0, p0, Landroid/support/design/widget/d;->k:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/d;->e(F)V

    .line 3380
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/design/widget/d;->y:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 3382
    :cond_0
    iget v0, p0, Landroid/support/design/widget/d;->i:I

    iget-boolean v2, p0, Landroid/support/design/widget/d;->z:Z

    if-eqz v2, :cond_4

    :goto_4
    invoke-static {v0, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 3384
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_2

    .line 3393
    iget-object v2, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 3394
    div-float/2addr v2, v8

    iget-object v3, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 3395
    iget-object v3, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/d;->o:F

    .line 3398
    :goto_5
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_3

    .line 3407
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/d;->q:F

    .line 3412
    :goto_6
    invoke-direct {p0}, Landroid/support/design/widget/d;->i()V

    .line 3414
    invoke-direct {p0, v5}, Landroid/support/design/widget/d;->d(F)V

    .line 583
    invoke-direct {p0}, Landroid/support/design/widget/d;->h()V

    .line 585
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 3348
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 3350
    goto/16 :goto_1

    .line 3354
    :sswitch_0
    iget-object v6, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/d;->p:F

    goto :goto_2

    .line 3357
    :sswitch_1
    iget-object v6, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/support/design/widget/d;->p:F

    goto/16 :goto_2

    .line 3368
    :sswitch_2
    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v8

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/d;->r:F

    goto/16 :goto_3

    .line 3371
    :sswitch_3
    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/d;->r:F

    goto/16 :goto_3

    :cond_4
    move v3, v4

    .line 3382
    goto :goto_4

    .line 3386
    :sswitch_4
    iget-object v2, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/d;->o:F

    goto :goto_5

    .line 3389
    :sswitch_5
    iget-object v2, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->I:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/d;->o:F

    goto :goto_5

    .line 3400
    :sswitch_6
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/d;->q:F

    goto :goto_6

    .line 3403
    :sswitch_7
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/d;->q:F

    goto :goto_6

    .line 3352
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 3366
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 3384
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 3398
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method final d(I)V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/support/design/widget/d;->j:I

    if-eq v0, p1, :cond_0

    .line 188
    iput p1, p0, Landroid/support/design/widget/d;->j:I

    .line 189
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 191
    :cond_0
    return-void
.end method

.method final e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/design/widget/d;->x:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final e(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    iget v2, p0, Landroid/support/design/widget/d;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->n:I

    .line 203
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/d;->l:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/d;->l:F

    .line 207
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->O:I

    .line 208
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->M:F

    .line 209
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->N:F

    .line 210
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->L:F

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 214
    invoke-direct {p0, p1}, Landroid/support/design/widget/d;->g(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/d;->u:Landroid/graphics/Typeface;

    .line 217
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 218
    return-void
.end method

.method final f()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Landroid/support/design/widget/d;->n:I

    return v0
.end method

.method final f(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    iget v2, p0, Landroid/support/design/widget/d;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->m:I

    .line 226
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/d;->k:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/d;->k:F

    .line 230
    :cond_1
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->S:I

    .line 231
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->Q:F

    .line 232
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->R:F

    .line 233
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->P:F

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 237
    invoke-direct {p0, p1}, Landroid/support/design/widget/d;->g(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/d;->v:Landroid/graphics/Typeface;

    .line 240
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    .line 241
    return-void
.end method
