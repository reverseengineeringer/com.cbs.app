.class public Lcom/cbs/app/visualon/player/CBSSeekBarV3;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/visualon/player/AdPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:F

.field private f:J

.field private g:Landroid/util/SparseBooleanArray;

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    .line 36
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    .line 37
    const v0, -0xff0100

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->g:Landroid/util/SparseBooleanArray;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->i:Z

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    .line 36
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    .line 37
    const v0, -0xff0100

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->g:Landroid/util/SparseBooleanArray;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->i:Z

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    .line 36
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    .line 37
    const v0, -0xff0100

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->g:Landroid/util/SparseBooleanArray;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->i:Z

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    .line 36
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    .line 37
    const v0, -0xff0100

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->g:Landroid/util/SparseBooleanArray;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->i:Z

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 78
    if-eqz p2, :cond_0

    .line 80
    if-eqz p3, :cond_1

    .line 81
    sget-object v0, Lcom/cbs/app/R$styleable;->AdPodProgressBar:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    :goto_0
    const/high16 v1, -0x10000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    .line 88
    const v1, -0xff0100

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    .line 91
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 93
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 94
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->h:F

    .line 96
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->e:F

    .line 100
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    return-void

    .line 84
    :cond_1
    sget-object v0, Lcom/cbs/app/R$styleable;->AdPodProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;FI)V
    .locals 6

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->e:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 174
    iget v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->e:F

    add-float v4, v2, v0

    .line 176
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v5, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/AdPeriod;

    .line 222
    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->g:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 228
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 263
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 265
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public getAdPeriods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/visualon/player/AdPeriod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->i:Z

    if-nez v0, :cond_8

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 115
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->e:F

    .line 126
    :goto_0
    const/4 v2, 0x0

    .line 127
    const/4 v1, 0x0

    .line 128
    const/4 v3, 0x1

    .line 129
    const-wide/16 v4, 0x0

    .line 132
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 133
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/AdPeriod;

    .line 134
    if-eqz v0, :cond_b

    .line 135
    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->a()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 136
    iget-object v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 137
    long-to-float v1, v4

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    long-to-float v0, v4

    iget-object v4, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-long v0, v0

    .line 138
    iget-object v4, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v6, v4, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->b:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40c00000    # 6.0f

    sub-float/2addr v4, v5

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    :goto_2
    invoke-direct {p0, p1, v4, v2}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/graphics/Canvas;FI)V

    .line 142
    const/4 v4, 0x0

    .line 143
    const/4 v2, 0x0

    move v12, v3

    move v3, v2

    move v2, v12

    .line 132
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide v12, v0

    move v1, v3

    move v3, v2

    move v2, v4

    move-wide v4, v12

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->e:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    goto :goto_2

    .line 145
    :cond_2
    const/4 v4, 0x1

    move v12, v3

    move v3, v2

    move v2, v12

    .line 149
    goto :goto_3

    :cond_3
    if-eqz v2, :cond_b

    .line 150
    if-eqz v3, :cond_5

    .line 152
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/AdPeriod;

    .line 1183
    const/4 v2, 0x0

    .line 1184
    iget-wide v8, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->f:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_a

    .line 1185
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingLeft()I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0xc

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1186
    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getStartTime()J

    move-result-wide v8

    long-to-float v0, v8

    iget-wide v8, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->f:J

    long-to-float v3, v8

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 1190
    :goto_4
    int-to-float v2, v0

    .line 152
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    :goto_5
    invoke-direct {p0, p1, v2, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/graphics/Canvas;FI)V

    .line 154
    const/4 v1, 0x0

    .line 155
    const/4 v0, 0x0

    .line 161
    :goto_6
    const/4 v2, 0x0

    move v3, v0

    move-wide v12, v4

    move v4, v1

    move-wide v0, v12

    goto :goto_3

    .line 152
    :cond_4
    iget v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    goto :goto_5

    .line 1194
    :cond_5
    const/4 v3, 0x0

    .line 1195
    iget-wide v8, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->f:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 1196
    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xc

    sub-int/2addr v3, v8

    int-to-float v3, v3

    .line 1198
    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getStartTime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    long-to-float v0, v8

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v0, v8

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    .line 1201
    :goto_7
    int-to-float v3, v0

    .line 158
    if-eqz v1, :cond_6

    iget v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->d:I

    :goto_8
    invoke-direct {p0, p1, v3, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a(Landroid/graphics/Canvas;FI)V

    move v0, v1

    move v1, v2

    goto :goto_6

    :cond_6
    iget v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->c:I

    goto :goto_8

    .line 167
    :cond_7
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    move v0, v3

    goto :goto_7

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move-wide v12, v4

    move v4, v2

    move v2, v3

    move v3, v1

    move-wide v0, v12

    goto/16 :goto_3
.end method

.method public setAdPeriods(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/visualon/player/AdPeriod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    .line 212
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/AdPeriod;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->f:J

    .line 217
    :cond_0
    return-void
.end method

.method public final setAdsInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 238
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    if-eqz p1, :cond_2

    .line 241
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 244
    if-eqz v6, :cond_0

    .line 245
    iget-object v9, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/cbs/app/visualon/player/AdPeriod;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v1

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v2

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v4

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/visualon/player/AdPeriod;-><init>(IJJZ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/AdPeriod;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/AdPeriod;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->f:J

    .line 257
    :cond_3
    return-void
.end method

.method public setHideAds(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->i:Z

    .line 51
    return-void
.end method
