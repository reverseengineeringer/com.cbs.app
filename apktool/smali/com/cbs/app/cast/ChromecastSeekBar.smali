.class public Lcom/cbs/app/cast/ChromecastSeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/pid/CBSAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/cast/ChromecastSeekBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/cast/ChromecastSeekBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    .line 34
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/cast/ChromecastSeekBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 81
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, v0, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    .line 82
    const-string v0, "#666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 83
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 85
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 87
    if-eqz p3, :cond_1

    .line 88
    sget-object v0, Lcom/cbs/app/R$styleable;->seekBar:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 95
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 97
    const/4 v3, 0x3

    iget v4, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    :cond_0
    move v0, v1

    move v1, v2

    .line 100
    iget-object v2, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v1, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object v1, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->a:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    return-void

    .line 91
    :cond_1
    sget-object v0, Lcom/cbs/app/R$styleable;->seekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    .line 181
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 185
    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    sub-int v6, v1, v2

    .line 186
    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    add-int v7, v1, v0

    .line 187
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/pid/CBSAd;

    .line 188
    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->getStartTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    .line 190
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 191
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getMeasuredHeight()I

    .line 192
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getMax()I

    move-result v5

    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v10, v1

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    int-to-double v12, v4

    mul-double/2addr v10, v12

    .line 194
    int-to-double v4, v5

    div-double v4, v10, v4

    double-to-int v1, v4

    .line 1208
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 196
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getPaddingLeft()I

    move-result v4

    .line 197
    add-int/2addr v4, v1

    .line 198
    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_2

    .line 199
    :cond_1
    int-to-float v1, v4

    int-to-float v2, v6

    int-to-float v3, v4

    int-to-float v4, v7

    iget-object v5, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 201
    :cond_2
    int-to-float v1, v4

    int-to-float v2, v6

    int-to-float v3, v4

    int-to-float v4, v7

    :try_start_1
    iget-object v5, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAdAsWatched(Lcom/cbs/app/pid/CBSAd;)V
    .locals 4

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/pid/CBSAd;

    .line 137
    invoke-virtual {p1}, Lcom/cbs/app/pid/CBSAd;->getStartTime()I

    move-result v2

    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->getStartTime()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/cbs/app/pid/CBSAd;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cbs/app/pid/CBSAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cbs/app/pid/CBSAd;->setWatched(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/pid/CBSAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/pid/CBSAd;

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cbs/app/pid/CBSAd;->setWatched(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cbs/app/cast/ChromecastSeekBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cbs/app/cast/ChromecastSeekBar;->d:Z

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    .line 48
    :cond_0
    return-void
.end method
