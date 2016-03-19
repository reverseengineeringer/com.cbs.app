.class public Lru/truba/touchgallery/TouchView/TouchImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/truba/touchgallery/TouchView/TouchImageView$c;,
        Lru/truba/touchgallery/TouchView/TouchImageView$a;,
        Lru/truba/touchgallery/TouchView/TouchImageView$b;
    }
.end annotation


# instance fields
.field A:J

.field B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field private G:I

.field private H:Landroid/content/Context;

.field private I:Ljava/util/Timer;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Ljava/lang/Object;

.field private L:Landroid/os/Handler;

.field private M:Z

.field a:Landroid/graphics/Matrix;

.field b:Landroid/graphics/Matrix;

.field c:I

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Landroid/graphics/PointF;

.field o:Landroid/graphics/PointF;

.field p:Landroid/graphics/PointF;

.field q:[F

.field r:F

.field s:F

.field t:F

.field u:F

.field v:F

.field w:F

.field x:Landroid/graphics/PointF;

.field y:F

.field z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->G:I

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->b:Landroid/graphics/Matrix;

    .line 58
    iput v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->o:Landroid/graphics/PointF;

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    .line 69
    iput v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 70
    iput v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    .line 71
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    .line 72
    iput v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->x:Landroid/graphics/PointF;

    .line 75
    iput v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    .line 77
    iput-wide v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->z:J

    iput-wide v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->A:J

    .line 78
    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->B:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->L:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->M:Z

    .line 97
    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->D:Z

    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->F:Z

    .line 101
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 102
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->H:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->b()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->G:I

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->b:Landroid/graphics/Matrix;

    .line 58
    iput v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    .line 64
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->o:Landroid/graphics/PointF;

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    .line 69
    iput v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 70
    iput v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    .line 71
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    .line 72
    iput v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->x:Landroid/graphics/PointF;

    .line 75
    iput v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    .line 77
    iput-wide v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->z:J

    iput-wide v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->A:J

    .line 78
    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->B:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->L:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->M:Z

    .line 97
    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->D:Z

    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    iput-boolean v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->F:Z

    .line 109
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 110
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->H:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->b()V

    .line 113
    return-void
.end method

.method static synthetic a(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 41
    .line 2410
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method static synthetic a(Lru/truba/touchgallery/TouchView/c;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    .line 1415
    invoke-virtual {p0, v2}, Lru/truba/touchgallery/TouchView/c;->a(I)F

    move-result v0

    invoke-virtual {p0, v3}, Lru/truba/touchgallery/TouchView/c;->a(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1416
    invoke-virtual {p0, v2}, Lru/truba/touchgallery/TouchView/c;->b(I)F

    move-result v1

    invoke-virtual {p0, v3}, Lru/truba/touchgallery/TouchView/c;->b(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1417
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 41
    return v0
.end method

.method static synthetic a(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->K:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lru/truba/touchgallery/TouchView/TouchImageView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->I:Ljava/util/Timer;

    return-object p1
.end method

.method private a(FF)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 310
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->h:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 311
    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->i:F

    iget v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 312
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->e()V

    .line 313
    iget v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 315
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    add-float/2addr v1, p2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 316
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    neg-float p2, v1

    move p1, v0

    .line 337
    :cond_0
    :goto_0
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 338
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->c()V

    .line 339
    return-void

    .line 317
    :cond_1
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    add-float/2addr v1, p2

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 318
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    add-float/2addr v1, v2

    neg-float p2, v1

    move p1, v0

    goto :goto_0

    .line 319
    :cond_2
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_4

    .line 321
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    add-float/2addr v1, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 322
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    neg-float p1, v1

    move p2, v0

    goto :goto_0

    .line 323
    :cond_3
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    add-float/2addr v1, p1

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 324
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    add-float/2addr v1, v2

    neg-float p1, v1

    move p2, v0

    goto :goto_0

    .line 327
    :cond_4
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    add-float/2addr v1, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    .line 328
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    neg-float p1, v1

    .line 332
    :cond_5
    :goto_1
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    add-float/2addr v1, p2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    .line 333
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    neg-float p2, v0

    goto :goto_0

    .line 329
    :cond_6
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    add-float/2addr v1, p1

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 330
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    add-float/2addr v1, v2

    neg-float p1, v1

    goto :goto_1

    .line 334
    :cond_7
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    add-float/2addr v0, p2

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 335
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    add-float/2addr v0, v1

    neg-float p2, v0

    goto :goto_0

    :cond_8
    move p2, v0

    goto :goto_0

    :cond_9
    move p1, v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/graphics/PointF;Lru/truba/touchgallery/TouchView/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 41
    .line 1423
    invoke-virtual {p1, v2}, Lru/truba/touchgallery/TouchView/c;->a(I)F

    move-result v0

    invoke-virtual {p1, v4}, Lru/truba/touchgallery/TouchView/c;->a(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 1424
    invoke-virtual {p1, v2}, Lru/truba/touchgallery/TouchView/c;->b(I)F

    move-result v1

    invoke-virtual {p1, v4}, Lru/truba/touchgallery/TouchView/c;->b(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 1425
    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    return-void
.end method

.method static synthetic a(Lru/truba/touchgallery/TouchView/TouchImageView;FF)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(FF)V

    return-void
.end method

.method static synthetic b(Lru/truba/touchgallery/TouchView/c;)Landroid/graphics/PointF;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 41
    .line 2429
    invoke-virtual {p0, v2}, Lru/truba/touchgallery/TouchView/c;->a(I)F

    move-result v0

    invoke-virtual {p0, v4}, Lru/truba/touchgallery/TouchView/c;->a(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 2430
    invoke-virtual {p0, v2}, Lru/truba/touchgallery/TouchView/c;->b(I)F

    move-result v1

    invoke-virtual {p0, v4}, Lru/truba/touchgallery/TouchView/c;->b(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 2431
    new-instance v2, Landroid/graphics/PointF;

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 41
    return-object v2
.end method

.method private b()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    new-instance v0, Lru/truba/touchgallery/TouchView/TouchImageView$c;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/TouchImageView$c;-><init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->L:Landroid/os/Handler;

    .line 118
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    .line 120
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 121
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 124
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->H:Landroid/content/Context;

    new-instance v2, Lru/truba/touchgallery/TouchView/TouchImageView$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lru/truba/touchgallery/TouchView/TouchImageView$a;-><init>(Lru/truba/touchgallery/TouchView/TouchImageView;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->K:Ljava/lang/Object;

    .line 126
    :cond_0
    new-instance v0, Lru/truba/touchgallery/TouchView/TouchImageView$1;

    invoke-direct {v0, p0}, Lru/truba/touchgallery/TouchView/TouchImageView$1;-><init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    return-void
.end method

.method static synthetic b(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->e()V

    return-void
.end method

.method static synthetic c(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->I:Ljava/util/Timer;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    .line 342
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->e()V

    .line 344
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->h:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 345
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->i:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 346
    const/4 v2, 0x0

    iput-boolean v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->F:Z

    iput-boolean v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->D:Z

    iput-boolean v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    iput-boolean v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    .line 347
    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    neg-float v2, v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iput-boolean v5, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    .line 349
    :cond_0
    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    add-float/2addr v2, v0

    iget v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_3

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    neg-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 350
    :cond_2
    iput-boolean v5, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    .line 351
    :cond_3
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    neg-float v0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iput-boolean v5, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->D:Z

    .line 352
    :cond_4
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    neg-float v0, v0

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    iput-boolean v5, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->F:Z

    .line 353
    :cond_5
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 356
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v0, v1

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    sub-float/2addr v0, v1

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    mul-float/2addr v1, v3

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    .line 357
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v0, v1

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    sub-float/2addr v0, v1

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    mul-float/2addr v1, v3

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    .line 358
    return-void
.end method

.method static synthetic d(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 362
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    .line 363
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->q:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    .line 364
    return-void
.end method

.method static synthetic e(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 41
    .line 2367
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 2368
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2369
    :cond_0
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 2370
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 41
    :cond_1
    return-void
.end method

.method static synthetic f(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->c()V

    return-void
.end method

.method static synthetic g(Lru/truba/touchgallery/TouchView/TouchImageView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lru/truba/touchgallery/TouchView/TouchImageView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->J:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 289
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 295
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 296
    iget-boolean v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->B:Z

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->x:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->x:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    mul-float/2addr v1, v2

    .line 298
    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 302
    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iput v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    .line 303
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 304
    :cond_2
    invoke-direct {p0, v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(FF)V

    .line 305
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 381
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 382
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    .line 383
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    .line 386
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->j:F

    div-float/2addr v0, v1

    .line 387
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->k:F

    div-float/2addr v1, v2

    .line 388
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 389
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 391
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 392
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 395
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->k:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    .line 396
    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->j:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    .line 397
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    div-float/2addr v0, v3

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    .line 398
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    div-float/2addr v0, v3

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    .line 400
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    iget v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 402
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->d:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->h:F

    .line 403
    iget v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    iget v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->e:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->i:F

    .line 404
    invoke-direct {p0}, Lru/truba/touchgallery/TouchView/TouchImageView;->d()V

    .line 405
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 406
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->j:F

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->k:F

    .line 377
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->J:Landroid/view/View$OnClickListener;

    .line 437
    return-void
.end method

.method public setZoomToOriginalSize(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView;->M:Z

    .line 95
    return-void
.end method
