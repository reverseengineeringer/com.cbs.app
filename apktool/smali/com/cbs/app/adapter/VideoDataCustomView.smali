.class public Lcom/cbs/app/adapter/VideoDataCustomView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/cbs/app/view/ThumbNailView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cbs/app/adapter/VideoDataCustomView;-><init>(Landroid/content/Context;B)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1036
    iput v3, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->f:I

    .line 1037
    iput v3, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->g:I

    .line 1038
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1040
    new-instance v0, Lcom/cbs/app/view/ThumbNailView;

    invoke-direct {v0, p1}, Lcom/cbs/app/view/ThumbNailView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->d:Lcom/cbs/app/view/ThumbNailView;

    .line 1041
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v0, v3}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    .line 1043
    const v0, 0x7f030025

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/cbs/app/adapter/VideoDataCustomView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    .line 1044
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f00b1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->b:Landroid/widget/TextView;

    .line 1045
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f00b2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->a:Landroid/widget/TextView;

    .line 1046
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f00b3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->c:Landroid/widget/TextView;

    .line 1048
    iget v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->f:I

    int-to-float v0, v0

    const v2, 0x3d8f5c29    # 0.07f

    mul-float/2addr v0, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    .line 1049
    iget-object v1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1050
    iget-object v1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->a:Landroid/widget/TextView;

    mul-float v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1051
    iget-object v1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->c:Landroid/widget/TextView;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1053
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1054
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1057
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/VideoDataCustomView;->addView(Landroid/view/View;)V

    .line 1058
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/cbs/app/adapter/VideoDataCustomView;->addView(Landroid/view/View;)V

    .line 1060
    new-array v0, v5, [I

    const v1, 0x101030e

    aput v1, v0, v3

    .line 1061
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1062
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1063
    invoke-virtual {p0, v1}, Lcom/cbs/app/adapter/VideoDataCustomView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v0}, Lcom/cbs/app/view/ThumbNailView;->getMeasuredHeight()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v1, v2, v2, p4, v0}, Lcom/cbs/app/view/ThumbNailView;->layout(IIII)V

    .line 87
    iget-object v1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0, p4, p5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 88
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 69
    iget v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->g:I

    int-to-float v0, v0

    const v1, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 71
    iget v1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->f:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 72
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 73
    iget-object v3, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->d:Lcom/cbs/app/view/ThumbNailView;

    invoke-virtual {v3, v1, v2}, Lcom/cbs/app/view/ThumbNailView;->measure(II)V

    .line 75
    iget v2, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->g:I

    sub-int v0, v2, v0

    .line 76
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 77
    iget-object v2, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 79
    iget v0, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->g:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/cbs/app/adapter/VideoDataCustomView;->setMeasuredDimension(II)V

    .line 81
    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->f:I

    .line 93
    iput p2, p0, Lcom/cbs/app/adapter/VideoDataCustomView;->g:I

    .line 94
    invoke-virtual {p0}, Lcom/cbs/app/adapter/VideoDataCustomView;->invalidate()V

    .line 95
    invoke-virtual {p0}, Lcom/cbs/app/adapter/VideoDataCustomView;->requestLayout()V

    .line 96
    return-void
.end method
