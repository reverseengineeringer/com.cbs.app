.class public Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/truba/touchgallery/GalleryWidget/GalleryViewPager$a;
    }
.end annotation


# instance fields
.field a:Landroid/graphics/PointF;

.field public b:Lru/truba/touchgallery/TouchView/TouchImageView;

.field protected c:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager$a;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private static a(FFFF)Z
    .locals 3

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    .line 164
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 165
    sub-float v1, p2, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 166
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)[F
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 55
    :pswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a:Landroid/graphics/PointF;

    goto :goto_0

    .line 59
    :pswitch_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    aput v2, v0, v4

    const/4 v2, 0x1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    aput v1, v0, v2

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 126
    iget v3, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->d:F

    iget v4, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->e:F

    invoke-static {v3, v1, v4, v2}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a(FFFF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->c:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager$a;

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->getCurrentItem()I

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->d:F

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->e:F

    .line 141
    :cond_1
    invoke-direct {p0, p1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a(Landroid/view/MotionEvent;)[F

    move-result-object v1

    .line 143
    iget-object v2, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v2}, Lru/truba/touchgallery/TouchView/TouchImageView;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :cond_2
    :goto_1
    return v0

    .line 131
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 147
    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    if-eqz v2, :cond_5

    aget v2, v1, v0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 151
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    if-eqz v2, :cond_6

    aget v2, v1, v0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 155
    :cond_6
    if-nez v1, :cond_2

    iget-object v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    if-eqz v1, :cond_2

    .line 157
    :cond_7
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 73
    iget v3, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->d:F

    iget v4, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->e:F

    invoke-static {v3, v1, v4, v2}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a(FFFF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    iget-object v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->c:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager$a;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->getCurrentItem()I

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->d:F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->e:F

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->a(Landroid/view/MotionEvent;)[F

    move-result-object v1

    .line 95
    iget-object v2, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v2}, Lru/truba/touchgallery/TouchView/TouchImageView;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 113
    :cond_2
    :goto_1
    return v0

    .line 79
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 99
    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    if-eqz v2, :cond_5

    aget v2, v1, v0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 103
    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    if-eqz v2, :cond_6

    aget v2, v1, v0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 107
    :cond_6
    if-nez v1, :cond_2

    iget-object v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->C:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->b:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-boolean v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->E:Z

    if-eqz v1, :cond_2

    .line 109
    :cond_7
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public setOnItemClickListener(Lru/truba/touchgallery/GalleryWidget/GalleryViewPager$a;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lru/truba/touchgallery/GalleryWidget/GalleryViewPager;->c:Lru/truba/touchgallery/GalleryWidget/GalleryViewPager$a;

    return-void
.end method
