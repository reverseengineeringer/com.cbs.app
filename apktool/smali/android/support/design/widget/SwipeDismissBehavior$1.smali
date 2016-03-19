.class final Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/SwipeDismissBehavior;

.field private b:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 288
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 292
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-nez v2, :cond_2

    .line 293
    if-eqz v0, :cond_1

    .line 294
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 295
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 313
    :goto_1
    invoke-static {v0, p2, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(III)I

    move-result v0

    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 298
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 300
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 301
    if-eqz v0, :cond_3

    .line 302
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 303
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 305
    :cond_3
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 306
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    goto :goto_1

    .line 309
    :cond_4
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 310
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    .line 223
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 323
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->e(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 325
    iget v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v3}, Landroid/support/design/widget/SwipeDismissBehavior;->f(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 328
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 329
    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 331
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 334
    :cond_1
    int-to-float v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    .line 335
    sub-float v0, v4, v0

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(F)F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1256
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_a

    .line 1257
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1260
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v1

    .line 238
    :goto_1
    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    if-ge v0, v2, :cond_d

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v3

    .line 248
    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v2}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$b;

    iget-object v2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {v0, v2, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior$b;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 1257
    goto :goto_0

    .line 1263
    :cond_2
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v4

    if-nez v4, :cond_6

    .line 1266
    if-eqz v0, :cond_4

    cmpg-float v0, p2, v6

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    cmpl-float v0, p2, v6

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    .line 1267
    :cond_6
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v4}, Landroid/support/design/widget/SwipeDismissBehavior;->c(Landroid/support/design/widget/SwipeDismissBehavior;)I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 1270
    if-eqz v0, :cond_8

    cmpl-float v0, p2, v6

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    cmpg-float v0, p2, v6

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    .line 1273
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    sub-int/2addr v0, v4

    .line 1274
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v5}, Landroid/support/design/widget/SwipeDismissBehavior;->d(Landroid/support/design/widget/SwipeDismissBehavior;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1275
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v2

    .line 1278
    goto :goto_1

    .line 239
    :cond_d
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 245
    :cond_e
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->b:I

    move v1, v2

    goto :goto_2

    .line 250
    :cond_f
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$a;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/design/widget/SwipeDismissBehavior$a;->a()V

    goto :goto_3
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->a:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
