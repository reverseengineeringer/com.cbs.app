.class public Lcom/cbs/app/view/ThumbNailView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;

.field private static d:Landroid/graphics/drawable/Drawable;

.field private static e:Landroid/graphics/drawable/Drawable;

.field private static f:F


# instance fields
.field public a:Ljava/lang/String;

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Paint;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/cbs/app/view/ThumbNailView;->a()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/cbs/app/view/ThumbNailView;->a()V

    .line 50
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/cbs/app/view/ThumbNailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/cbs/app/view/ThumbNailView;->b:Landroid/graphics/drawable/Drawable;

    .line 55
    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/cbs/app/view/ThumbNailView;->c:Landroid/graphics/drawable/Drawable;

    .line 56
    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/cbs/app/view/ThumbNailView;->d:Landroid/graphics/drawable/Drawable;

    .line 57
    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/ThumbNailView;->e:Landroid/graphics/drawable/Drawable;

    .line 58
    sget-object v0, Lcom/cbs/app/view/ThumbNailView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/cbs/app/view/ThumbNailView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/cbs/app/view/ThumbNailView;->f:F

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/ThumbNailView;->i:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/ThumbNailView;->j:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/ThumbNailView;->j:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public final getFlagTopMargin()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/cbs/app/view/ThumbNailView;->k:I

    return v0
.end method

.method public final declared-synchronized getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/ThumbNailView;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/ThumbNailView;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/cbs/app/view/ThumbNailView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    :goto_0
    iget v0, p0, Lcom/cbs/app/view/ThumbNailView;->g:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/cbs/app/view/ThumbNailView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/ThumbNailView;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cbs/app/view/ThumbNailView;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/cbs/app/view/ThumbNailView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :pswitch_1
    sget-object v0, Lcom/cbs/app/view/ThumbNailView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 122
    :pswitch_2
    sget-object v0, Lcom/cbs/app/view/ThumbNailView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 69
    int-to-float v1, v0

    const v2, 0x3f147ae1    # 0.58f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 71
    int-to-float v2, v0

    const v3, 0x3e23d70a    # 0.16f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 72
    div-int/lit8 v3, v2, 0x3

    .line 73
    sget-object v4, Lcom/cbs/app/view/ThumbNailView;->e:Landroid/graphics/drawable/Drawable;

    sub-int v5, v1, v2

    sub-int/2addr v5, v3

    add-int/2addr v2, v3

    sub-int v6, v1, v3

    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget v2, p0, Lcom/cbs/app/view/ThumbNailView;->g:I

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/cbs/app/view/ThumbNailView;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    iput v7, p0, Lcom/cbs/app/view/ThumbNailView;->k:I

    .line 89
    :goto_0
    sget-object v2, Lcom/cbs/app/view/ThumbNailView;->d:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/cbs/app/view/ThumbNailView;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/ThumbNailView;->setMeasuredDimension(II)V

    .line 95
    return-void

    .line 79
    :cond_0
    int-to-float v2, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 80
    int-to-float v3, v2

    sget v4, Lcom/cbs/app/view/ThumbNailView;->f:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 81
    sget-object v4, Lcom/cbs/app/view/ThumbNailView;->c:Landroid/graphics/drawable/Drawable;

    sub-int v5, v0, v2

    invoke-virtual {v4, v5, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    sget-object v4, Lcom/cbs/app/view/ThumbNailView;->b:Landroid/graphics/drawable/Drawable;

    sub-int v2, v0, v2

    invoke-virtual {v4, v2, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    int-to-float v2, v3

    const v3, 0x3ed58106    # 0.417f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/cbs/app/view/ThumbNailView;->k:I

    .line 84
    iget-object v2, p0, Lcom/cbs/app/view/ThumbNailView;->i:Landroid/graphics/Rect;

    iget v3, p0, Lcom/cbs/app/view/ThumbNailView;->k:I

    int-to-float v4, v0

    const v5, 0x3f758106    # 0.959f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 100
    if-lez p3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/cbs/app/view/ThumbNailView;->requestLayout()V

    .line 102
    :cond_0
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cbs/app/view/ThumbNailView;->h:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0}, Lcom/cbs/app/view/ThumbNailView;->invalidate()V

    .line 138
    return-void
.end method

.method public final setFlagVisibility(I)V
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/cbs/app/view/ThumbNailView;->g:I

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    .line 148
    :goto_0
    iput p1, p0, Lcom/cbs/app/view/ThumbNailView;->g:I

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/cbs/app/view/ThumbNailView;->requestLayout()V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/view/ThumbNailView;->invalidate()V

    .line 152
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized setUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/cbs/app/view/ThumbNailView;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
