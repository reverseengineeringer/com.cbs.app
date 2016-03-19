.class public final Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$a;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

.field private e:I

.field private f:Landroid/support/design/widget/Snackbar$b;

.field private final g:Landroid/support/design/widget/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v2}, Landroid/support/design/widget/Snackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/support/design/widget/Snackbar$3;

    invoke-direct {v0, p0}, Landroid/support/design/widget/Snackbar$3;-><init>(Landroid/support/design/widget/Snackbar;)V

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/support/design/widget/n$a;

    .line 179
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/design/widget/p;->a(Landroid/content/Context;)V

    .line 184
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    sget v1, Landroid/support/design/R$layout;->design_layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 187
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/support/design/widget/Snackbar;

    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 2333
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a()Landroid/widget/TextView;

    move-result-object v1

    .line 2334
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2357
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/Snackbar;->e:I

    .line 212
    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 238
    move-object v1, v2

    move-object v0, p0

    .line 240
    :cond_0
    instance-of v3, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_1

    .line 242
    check-cast v0, Landroid/view/ViewGroup;

    .line 262
    :goto_0
    return-object v0

    .line 243
    :cond_1
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1020002

    if-ne v1, v3, :cond_2

    .line 247
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 250
    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    :cond_3
    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 257
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/view/View;

    .line 259
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v1

    .line 262
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 257
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/widget/Snackbar;)V
    .locals 3

    .prologue
    .line 4394
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/support/design/widget/n$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$a;I)V

    .line 67
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->f()V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/n$a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/support/design/widget/n$a;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->e()V

    return-void
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->f:Landroid/support/design/widget/Snackbar$b;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 510
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/Snackbar$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$7;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$anim;->design_snackbar_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 532
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 533
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    new-instance v1, Landroid/support/design/widget/Snackbar$8;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$8;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$a;)V

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 607
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 608
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 610
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 383
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/Snackbar;->e:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/n;->a(ILandroid/support/design/widget/n$a;)V

    .line 384
    return-void
.end method

.method final a(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2616
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2618
    instance-of v2, v0, Landroid/support/design/widget/CoordinatorLayout$d;

    if-eqz v2, :cond_2

    .line 2619
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    .line 3288
    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$d;->a:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2622
    instance-of v2, v0, Landroid/support/design/widget/SwipeDismissBehavior;

    if-eqz v2, :cond_2

    .line 2623
    check-cast v0, Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->d()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 591
    :goto_0
    if-eqz v0, :cond_3

    .line 592
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->f()V

    .line 3555
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2623
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2627
    goto :goto_0

    .line 3554
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 3555
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/Snackbar$9;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/Snackbar$9;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 3571
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$anim;->design_snackbar_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3572
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3573
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3574
    new-instance v1, Landroid/support/design/widget/Snackbar$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/Snackbar$2;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3586
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Landroid/support/design/widget/n;->a()Landroid/support/design/widget/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->g:Landroid/support/design/widget/n$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/n;->e(Landroid/support/design/widget/n$a;)Z

    move-result v0

    return v0
.end method

.method final c()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 437
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$d;

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Landroid/support/design/widget/Snackbar$a;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$a;-><init>(Landroid/support/design/widget/Snackbar;)V

    .line 441
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$a;->b()V

    .line 442
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$a;->c()V

    .line 443
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$a;->a()V

    .line 444
    new-instance v2, Landroid/support/design/widget/Snackbar$4;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$4;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar$a;->a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V

    .line 465
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$d;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$d;->a(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v1, Landroid/support/design/widget/Snackbar$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$5;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Landroid/support/design/widget/Snackbar$SnackbarLayout$a;)V

    .line 492
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->e()V

    .line 505
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v1, Landroid/support/design/widget/Snackbar$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$6;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Landroid/support/design/widget/Snackbar$SnackbarLayout$b;)V

    goto :goto_0
.end method
