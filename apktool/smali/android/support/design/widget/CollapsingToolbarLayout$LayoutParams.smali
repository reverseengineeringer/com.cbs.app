.class public Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field a:I

.field b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 837
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 833
    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->a:I

    .line 834
    iput v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->b:F

    .line 839
    sget-object v0, Landroid/support/design/R$styleable;->CollapsingAppBarLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 841
    sget v1, Landroid/support/design/R$styleable;->CollapsingAppBarLayout_LayoutParams_layout_collapseMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->a:I

    .line 844
    sget v1, Landroid/support/design/R$styleable;->CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 1901
    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->b:F

    .line 847
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 848
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 859
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->a:I

    .line 834
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->b:F

    .line 860
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 867
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->a:I

    .line 834
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->b:F

    .line 868
    return-void
.end method
