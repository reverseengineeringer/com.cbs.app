.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private b:Landroid/support/design/widget/q;

.field private c:F

.field private d:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    .line 3263
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$d;->f:I

    .line 438
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->d:Landroid/graphics/Rect;

    .line 449
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->d:Landroid/graphics/Rect;

    .line 450
    invoke-static {p1, p2, v0}, Landroid/support/design/widget/t;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 452
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 454
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->b()V

    .line 459
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p3}, Landroid/support/design/widget/FloatingActionButton;->a()V

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 405
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    .line 3526
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 3527
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    .line 3528
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3529
    instance-of v5, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v5, :cond_0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3527
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3535
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 3547
    invoke-static {p2}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v3

    .line 3549
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_3

    .line 3550
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    .line 3555
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$d;->rightMargin:I

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_4

    .line 3557
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 3562
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$d;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    .line 3564
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 3570
    :cond_2
    :goto_2
    invoke-virtual {p2, v2}, Landroid/support/design/widget/FloatingActionButton;->offsetTopAndBottom(I)V

    .line 3571
    invoke-virtual {p2, v1}, Landroid/support/design/widget/FloatingActionButton;->offsetLeftAndRight(I)V

    .line 3538
    :cond_3
    const/4 v0, 0x1

    .line 405
    return v0

    .line 3558
    :cond_4
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$d;->leftMargin:I

    if-gt v1, v4, :cond_6

    .line 3560
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_1

    .line 3565
    :cond_5
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$d;->topMargin:I

    if-gt v4, v0, :cond_2

    .line 3567
    iget v0, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v0

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public final bridge synthetic a_(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 405
    .line 5418
    sget-boolean v0, Landroid/support/design/widget/FloatingActionButton$Behavior;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 405
    goto :goto_0
.end method

.method public final synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 405
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    .line 4424
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_5

    .line 4464
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4509
    const/4 v1, 0x0

    .line 4510
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 4511
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    .line 4512
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4513
    instance-of v6, v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4514
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v6, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4511
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 4469
    :cond_0
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 4474
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 4477
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    invoke-virtual {v2}, Landroid/support/design/widget/q;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4478
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    invoke-virtual {v2}, Landroid/support/design/widget/q;->e()V

    .line 4481
    :cond_1
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f2ac083    # 0.667f

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 4484
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    if-nez v2, :cond_2

    .line 4485
    invoke-static {}, Landroid/support/design/widget/w;->a()Landroid/support/design/widget/q;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    .line 4486
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    sget-object v4, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/q;->a(Landroid/view/animation/Interpolator;)V

    .line 4488
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    new-instance v4, Landroid/support/design/widget/FloatingActionButton$Behavior$1;

    invoke-direct {v4, p0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior$1;-><init>(Landroid/support/design/widget/FloatingActionButton$Behavior;Landroid/support/design/widget/FloatingActionButton;)V

    invoke-virtual {v2, v4}, Landroid/support/design/widget/q;->a(Landroid/support/design/widget/q$c;)V

    .line 4497
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/q;->a(FF)V

    .line 4498
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->b:Landroid/support/design/widget/q;

    invoke-virtual {v0}, Landroid/support/design/widget/q;->a()V

    .line 4504
    :goto_2
    iput v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->c:F

    .line 405
    :cond_3
    :goto_3
    return v3

    .line 4501
    :cond_4
    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    .line 4426
    :cond_5
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_3

    .line 4429
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method
