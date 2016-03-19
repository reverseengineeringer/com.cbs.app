.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Landroid/support/design/widget/q;

.field private e:I

.field private f:Z

.field private g:F

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/design/widget/AppBarLayout$Behavior$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 675
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    .line 682
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 685
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 675
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    .line 686
    return-void
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;)V
    .locals 5

    .prologue
    .line 986
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->h(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;

    move-result-object v2

    .line 990
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 991
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    .line 992
    if-eqz v0, :cond_0

    .line 1648
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->b()I

    move-result v4

    .line 993
    invoke-interface {v0, p1, v4}, Landroid/support/design/widget/AppBarLayout$a;->a(Landroid/support/design/widget/AppBarLayout;I)V

    .line 990
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 996
    :cond_1
    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .locals 4

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v0

    .line 809
    if-ne v0, p3, :cond_1

    .line 810
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->e()V

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    if-nez v1, :cond_2

    .line 817
    invoke-static {}, Landroid/support/design/widget/w;->a()Landroid/support/design/widget/q;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    .line 818
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    sget-object v2, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/q;->a(Landroid/view/animation/Interpolator;)V

    .line 819
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q$c;)V

    .line 831
    :goto_1
    sub-int v1, v0, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 833
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/design/widget/q;->a(I)V

    .line 835
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    invoke-virtual {v1, v0, p3}, Landroid/support/design/widget/q;->a(II)V

    .line 836
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->a()V

    goto :goto_0

    .line 827
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    invoke-virtual {v1}, Landroid/support/design/widget/q;->e()V

    goto :goto_1
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 1047
    .line 2648
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->b()I

    move-result v0

    .line 1047
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 4948
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v4

    .line 4951
    if-eqz p4, :cond_3

    if-lt v4, p4, :cond_3

    if-gt v4, p5, :cond_3

    .line 4955
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/k;->a(III)I

    move-result v2

    .line 4957
    if-eq v4, v2, :cond_3

    .line 4958
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->g(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4999
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 5001
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    .line 5002
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5003
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 5640
    iget-object v8, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->b:Landroid/view/animation/Interpolator;

    .line 5006
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v5, v9, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v5, v9, :cond_4

    .line 5007
    if-eqz v8, :cond_5

    .line 6616
    iget v3, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->a:I

    .line 5010
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_7

    .line 5012
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 5015
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_0

    .line 5018
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5022
    :cond_0
    :goto_1
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5023
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->i(Landroid/support/design/widget/AppBarLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 5026
    :cond_1
    if-lez v0, :cond_5

    .line 5027
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v5, v1

    .line 5028
    int-to-float v3, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-interface {v8, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5032
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 6648
    :goto_2
    invoke-super {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->a(I)Z

    move-result v3

    .line 4965
    sub-int v1, v4, v2

    .line 4967
    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:I

    .line 4969
    if-nez v3, :cond_2

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->g(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4974
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    .line 4978
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)V

    .line 648
    :cond_3
    return v1

    .line 5001
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 4958
    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method final bridge synthetic a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 648
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 2942
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    .line 648
    return v0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 8052
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    .line 8648
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->b()I

    move-result v4

    .line 8056
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 8057
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8058
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    .line 8060
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    .line 8061
    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8062
    iput v3, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    .line 8063
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    .line 8065
    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    move-object v0, v1

    .line 8066
    :goto_1
    return-object v0

    .line 8056
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 648
    goto :goto_1
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I[I)V
    .locals 7

    .prologue
    .line 648
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 10711
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    if-nez v0, :cond_0

    .line 10713
    if-gez p3, :cond_1

    .line 10715
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    neg-int v4, v0

    .line 10716
    invoke-static {v2}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    add-int v5, v4, v0

    .line 10722
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p4, v6

    .line 648
    :cond_0
    return-void

    .line 10719
    :cond_1
    invoke-static {v2}, Landroid/support/design/widget/AppBarLayout;->c(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v4, v0

    .line 10720
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 9077
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 9078
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 9079
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 9080
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    .line 9081
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:F

    .line 9082
    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:Z

    .line 9083
    :goto_0
    return-void

    .line 9084
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 9085
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 10746
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Z

    if-nez v0, :cond_0

    .line 10850
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v5

    .line 11840
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_2

    .line 11841
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 11842
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v6, v5

    if-gt v3, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v6, v5

    if-lt v3, v6, :cond_1

    move-object v3, v0

    .line 10852
    :goto_1
    if-eqz v3, :cond_0

    .line 10853
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 12616
    iget v1, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->a:I

    .line 10854
    and-int/lit8 v1, v1, 0x11

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 10856
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v2, v1

    .line 10857
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 13616
    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->a:I

    .line 10860
    and-int/lit8 v0, v0, 0x2

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    .line 10862
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    .line 10865
    :goto_2
    add-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    if-ge v5, v1, :cond_3

    .line 10867
    :goto_3
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v4}, Landroid/support/design/widget/k;->a(III)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 10752
    :cond_0
    iput-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    .line 10753
    iput-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Z

    .line 10755
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    .line 648
    return-void

    .line 11840
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 11846
    :cond_2
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 10865
    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 648
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->a(I)Z

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;FZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 9762
    const/4 v1, 0x0

    .line 9764
    if-nez p4, :cond_0

    .line 9766
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    neg-int v0, v0

    neg-float v1, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IF)Z

    move-result v0

    .line 9793
    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Z

    .line 648
    return v0

    .line 9771
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_1

    .line 9773
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v2

    neg-int v2, v2

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9775
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 9778
    invoke-direct {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_0

    .line 9783
    :cond_1
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->c(Landroid/support/design/widget/AppBarLayout;)I

    move-result v2

    neg-int v2, v2

    .line 9784
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 9787
    invoke-direct {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 6876
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    .line 6878
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->e(Landroid/support/design/widget/AppBarLayout;)I

    move-result v3

    .line 6879
    if-eqz v3, :cond_5

    .line 6880
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6881
    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    .line 6882
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->c(Landroid/support/design/widget/AppBarLayout;)I

    move-result v1

    neg-int v1, v1

    .line 6883
    if-eqz v0, :cond_2

    .line 6884
    invoke-direct {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    .line 6907
    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->f(Landroid/support/design/widget/AppBarLayout;)V

    .line 6908
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    .line 6911
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)V

    .line 648
    return v2

    :cond_1
    move v0, v1

    .line 6880
    goto :goto_0

    .line 6886
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 6888
    :cond_3
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 6889
    if-eqz v0, :cond_4

    .line 6890
    invoke-direct {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    .line 6892
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 6895
    :cond_5
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    if-ltz v0, :cond_0

    .line 6896
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6897
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 6898
    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:Z

    if-eqz v3, :cond_6

    .line 6899
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    .line 7648
    :goto_2
    invoke-super {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->a(I)Z

    goto :goto_1

    .line 6901
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 648
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 13693
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 13697
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    if-eqz v1, :cond_0

    .line 13699
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/design/widget/q;

    invoke-virtual {v1}, Landroid/support/design/widget/q;->e()V

    .line 13703
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    .line 648
    return v0

    .line 13693
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic b()I
    .locals 1

    .prologue
    .line 648
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->b()I

    move-result v0

    return v0
.end method

.method final synthetic b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 648
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 3937
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->d(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v0, v0

    .line 648
    return v0
.end method

.method public final synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 648
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 10730
    if-gez p3, :cond_0

    .line 10733
    invoke-static {v2}, Landroid/support/design/widget/AppBarLayout;->d(Landroid/support/design/widget/AppBarLayout;)I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 10736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    :goto_0
    return-void

    .line 10739
    :cond_0
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    goto :goto_0
.end method

.method final synthetic c(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 648
    .line 4918
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Landroid/support/design/widget/AppBarLayout$Behavior$a;

    if-eqz v0, :cond_0

    .line 4920
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->i:Landroid/support/design/widget/AppBarLayout$Behavior$a;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior$a;->a()Z

    move-result v0

    .line 4927
    :goto_0
    return v0

    .line 4924
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 4926
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4927
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4931
    :cond_2
    const/4 v0, 0x1

    .line 648
    goto :goto_0
.end method
