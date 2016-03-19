.class public Lcom/cbs/app/view/PagerContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field a:Z

.field private final b:Landroid/graphics/Point;

.field private final c:Landroid/graphics/Point;

.field private d:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    .line 21
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/PagerContainer;->a:Z

    .line 30
    invoke-direct {p0}, Lcom/cbs/app/view/PagerContainer;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    .line 21
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/PagerContainer;->a:Z

    .line 39
    invoke-direct {p0}, Lcom/cbs/app/view/PagerContainer;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    .line 21
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/PagerContainer;->a:Z

    .line 48
    invoke-direct {p0}, Lcom/cbs/app/view/PagerContainer;->a()V

    .line 50
    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/PagerContainer;->setClipChildren(Z)V

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/view/PagerContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cbs/app/view/PagerContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cbs/app/view/PagerContainer;->d:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 81
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The root child of PagerContainer must be a ViewPager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/PagerContainer;->a:Z

    .line 160
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/cbs/app/view/PagerContainer;->a:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/cbs/app/view/PagerContainer;->invalidate()V

    .line 145
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 99
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/cbs/app/view/PagerContainer;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 118
    iget-object v0, p0, Lcom/cbs/app/view/PagerContainer;->c:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
