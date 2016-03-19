.class public Lcom/cbs/app/visualon/player/CBSSeekBarV2;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

.field private c:[Z

.field private d:J

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 54
    iput-object v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->c:[Z

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 88
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 54
    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->c:[Z

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 106
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->h:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->h:Landroid/content/Context;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v2, v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v4, v0

    .line 110
    const-string v0, "#4282c3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 111
    const-string v0, "#090708"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 115
    if-eqz p2, :cond_1

    .line 117
    if-eqz p3, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->h:Landroid/content/Context;

    sget-object v5, Lcom/cbs/app/R$styleable;->seekBar:[I

    invoke-virtual {v0, p2, v5, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 125
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 128
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 131
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move v6, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v6

    .line 135
    :goto_1
    iget-object v4, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget-object v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->h:Landroid/content/Context;

    sget-object v5, Lcom/cbs/app/R$styleable;->seekBar:[I

    invoke-virtual {v0, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v2

    if-nez v2, :cond_a

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getPaddingLeft()I

    move-result v2

    int-to-float v3, v2

    .line 208
    const/4 v9, 0x0

    .line 209
    const/4 v8, 0x0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move v12, v2

    .line 222
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getHeight()I

    move-result v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v13, v4

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getWidth()I

    move-result v14

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getPaddingLeft()I

    move-result v15

    .line 233
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_a

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 1298
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    .line 1299
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v4

    .line 1303
    long-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->d:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move v10, v4

    .line 1312
    :goto_2
    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v2

    if-nez v2, :cond_1

    .line 1313
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    .line 1373
    :goto_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getTotalDuration()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-eqz v2, :cond_3

    .line 1374
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getSeekBarCurrentPosition()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getTotalDuration()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    move v4, v2

    .line 2364
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    .line 2365
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 255
    :goto_5
    int-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v5, v0

    sub-int v5, v13, v5

    .line 258
    int-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v6, v0

    add-int/2addr v6, v13

    .line 260
    add-int v16, v14, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_c

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 262
    if-eqz v9, :cond_5

    .line 264
    int-to-float v4, v5

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    :goto_6
    const/4 v2, 0x1

    move v3, v2

    move v2, v8

    .line 233
    :goto_7
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v8, v2

    move v9, v3

    move v3, v10

    goto/16 :goto_1

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->h:Landroid/content/Context;

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-static {v2, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    move v12, v2

    goto/16 :goto_0

    .line 1315
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->c:[Z

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_2

    .line 1316
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    goto/16 :goto_3

    .line 1318
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->e:Landroid/graphics/Paint;

    goto/16 :goto_3

    .line 1376
    :cond_3
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_4

    .line 2367
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 266
    :cond_5
    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 267
    int-to-float v4, v5

    int-to-float v6, v6

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 204
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 269
    :cond_6
    int-to-float v4, v5

    int-to-float v6, v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 273
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 274
    if-eqz v8, :cond_8

    .line 275
    int-to-float v4, v5

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 279
    :goto_8
    const/4 v2, 0x1

    move v3, v9

    goto :goto_7

    .line 277
    :cond_8
    int-to-float v4, v5

    int-to-float v6, v6

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 281
    :cond_9
    int-to-float v4, v5

    int-to-float v6, v6

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    const/4 v3, 0x0

    .line 283
    const/4 v2, 0x0

    goto :goto_7

    .line 294
    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    move v10, v3

    goto/16 :goto_2

    :cond_c
    move v2, v8

    move v3, v9

    goto/16 :goto_7
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAdsInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 338
    iput-object p1, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 339
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 344
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->d:J

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->b:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getCount()I

    move-result v2

    .line 352
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->c:[Z

    move v0, v1

    .line 353
    :goto_0
    if-ge v0, v2, :cond_2

    .line 354
    iget-object v3, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->c:[Z

    aput-boolean v1, v3, v0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CBSSeekBarV2;->c:[Z

    .line 359
    :cond_2
    return-void
.end method
