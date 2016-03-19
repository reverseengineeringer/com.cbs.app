.class Landroid/support/design/widget/h;
.super Landroid/support/design/widget/g;
.source "SourceFile"


# instance fields
.field private j:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/m;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/g;-><init>(Landroid/view/View;Landroid/support/design/widget/m;)V

    .line 31
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/h;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/support/design/widget/h;->j:Z

    return p1
.end method


# virtual methods
.method final b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Landroid/support/design/widget/h;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/h$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/h$1;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/i$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 96
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 97
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/h$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/h$2;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/i$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 120
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method final e()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/design/widget/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    .line 1130
    iget-object v1, p0, Landroid/support/design/widget/h;->d:Landroid/support/design/widget/l;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Landroid/support/design/widget/h;->d:Landroid/support/design/widget/l;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/l;->a(F)V

    .line 1133
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/b;

    if-eqz v1, :cond_1

    .line 1134
    iget-object v1, p0, Landroid/support/design/widget/h;->c:Landroid/support/design/widget/b;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/b;->b(F)V

    .line 41
    :cond_1
    return-void
.end method
