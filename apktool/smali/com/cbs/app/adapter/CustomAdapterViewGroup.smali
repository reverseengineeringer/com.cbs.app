.class public Lcom/cbs/app/adapter/CustomAdapterViewGroup;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Lcom/cbs/app/view/ThumbNailView;

.field public c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;-><init>(Landroid/content/Context;IIZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    .line 40
    iput-boolean p4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a(Landroid/content/Context;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    .line 47
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 48
    sget-object v2, Lcom/cbs/app/R$styleable;->CustomAdapterViewGroup:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 49
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    .line 52
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 53
    const/4 v4, 0x0

    const/16 v5, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 54
    const/4 v5, 0x1

    int-to-float v6, v4

    const v7, 0x3eb851ec    # 0.36f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 55
    invoke-direct {p0, p1, v4, v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a(Landroid/content/Context;II)V

    .line 56
    iget-object v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void

    .line 56
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 47
    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method private a(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    .line 64
    iput p2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    .line 65
    iput p3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->j:I

    .line 69
    new-instance v0, Lcom/cbs/app/view/ThumbNailView;

    invoke-direct {v0, p1}, Lcom/cbs/app/view/ThumbNailView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    .line 70
    new-instance v0, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    invoke-direct {v0, p0, p1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;-><init>(Lcom/cbs/app/adapter/CustomAdapterViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    .line 72
    int-to-float v0, p2

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->g:I

    .line 73
    int-to-float v0, p2

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    .line 74
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->i:I

    .line 76
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->addView(Landroid/view/View;)V

    .line 78
    iget-boolean v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 82
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 83
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    const v1, 0x7f0201a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101030e

    aput v1, v0, v3

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->j:I

    return v0
.end method

.method static synthetic c(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->i:I

    return v0
.end method

.method static synthetic e(Lcom/cbs/app/adapter/CustomAdapterViewGroup;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-boolean v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 126
    :cond_0
    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v2}, Lcom/cbs/app/view/ThumbNailView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 127
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    iget v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->g:I

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget v5, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/cbs/app/view/ThumbNailView;->layout(IIII)V

    .line 128
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget-object v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v3}, Lcom/cbs/app/view/ThumbNailView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v4}, Lcom/cbs/app/view/ThumbNailView;->getFlagTopMargin()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->layout(IIII)V

    .line 130
    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 131
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    iget v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    sub-int v0, v3, v0

    iget v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->g:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->g:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    iget v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    iget v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/cbs/app/view/ThumbNailView;->layout(IIII)V

    .line 135
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v2}, Lcom/cbs/app/view/ThumbNailView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 97
    iget-boolean v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->d:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    int-to-double v2, v1

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/ThumbNailView;->measure(II)V

    .line 99
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->i:I

    iget v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 100
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v1}, Lcom/cbs/app/view/ThumbNailView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    sub-int/2addr v0, v1

    .line 101
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 102
    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    invoke-virtual {v2, v0, v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->measure(II)V

    .line 114
    :goto_0
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->setMeasuredDimension(II)V

    .line 115
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/cbs/app/view/ThumbNailView;->measure(II)V

    .line 107
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    sub-int/2addr v0, v1

    .line 108
    iget v1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->b:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v2}, Lcom/cbs/app/view/ThumbNailView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 109
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 110
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 111
    iget-object v2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->c:Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;

    invoke-virtual {v2, v0, v1}, Lcom/cbs/app/adapter/CustomAdapterViewGroup$TextGroup;->measure(II)V

    goto :goto_0
.end method

.method public setWidthAndHeight(II)V
    .locals 2

    .prologue
    .line 141
    iput p1, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    .line 142
    iput p2, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->f:I

    .line 143
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    int-to-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->g:I

    .line 144
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    int-to-float v0, v0

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->h:I

    .line 145
    iget v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->e:I

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->i:I

    .line 146
    invoke-virtual {p0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->invalidate()V

    .line 147
    invoke-virtual {p0}, Lcom/cbs/app/adapter/CustomAdapterViewGroup;->requestLayout()V

    .line 148
    return-void
.end method
