.class final Lcom/github/amlcurran/showcaseview/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/amlcurran/showcaseview/a;


# instance fields
.field private final a:Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/b;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;JLcom/github/amlcurran/showcaseview/a$a;)V
    .locals 4

    .prologue
    .line 64
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/github/amlcurran/showcaseview/b$2;

    invoke-direct {v2, p0, p4}, Lcom/github/amlcurran/showcaseview/b$2;-><init>(Lcom/github/amlcurran/showcaseview/b;Lcom/github/amlcurran/showcaseview/a$a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 84
    return-void
.end method

.method public final a(Landroid/view/View;JLcom/github/amlcurran/showcaseview/a$b;)V
    .locals 4

    .prologue
    .line 40
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/github/amlcurran/showcaseview/b$1;

    invoke-direct {v2, p0, p4}, Lcom/github/amlcurran/showcaseview/b$1;-><init>(Lcom/github/amlcurran/showcaseview/b;Lcom/github/amlcurran/showcaseview/a$b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 60
    return-void

    .line 40
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Lcom/github/amlcurran/showcaseview/ShowcaseView;Landroid/graphics/Point;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 89
    const-string v1, "showcaseX"

    new-array v2, v6, [I

    iget v3, p2, Landroid/graphics/Point;->x:I

    aput v3, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 90
    const-string v2, "showcaseY"

    new-array v3, v6, [I

    iget v4, p2, Landroid/graphics/Point;->y:I

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 91
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 92
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/b;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 94
    return-void
.end method
