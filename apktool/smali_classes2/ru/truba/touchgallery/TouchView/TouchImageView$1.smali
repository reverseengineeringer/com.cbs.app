.class final Lru/truba/touchgallery/TouchView/TouchImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/truba/touchgallery/TouchView/TouchImageView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/truba/touchgallery/TouchView/TouchImageView;


# direct methods
.method constructor <init>(Lru/truba/touchgallery/TouchView/TouchImageView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 129
    invoke-static {p2}, Lru/truba/touchgallery/TouchView/c;->a(Landroid/view/MotionEvent;)Lru/truba/touchgallery/TouchView/c;

    move-result-object v1

    .line 130
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->b(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    .line 135
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->b()F

    move-result v2

    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->c()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 137
    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->a()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 267
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 268
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-virtual {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->invalidate()V

    .line 269
    return v10

    .line 139
    :pswitch_1
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput-boolean v10, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->B:Z

    .line 140
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 141
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->b()F

    move-result v2

    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->c()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 143
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput v4, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/c;)F

    move-result v2

    iput v2, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    .line 149
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 151
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->o:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Landroid/graphics/PointF;Lru/truba/touchgallery/TouchView/c;)V

    .line 152
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    const/4 v1, 0x2

    iput v1, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    goto :goto_0

    .line 157
    :pswitch_3
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput-boolean v4, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->B:Z

    .line 158
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput v10, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    .line 159
    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->b()F

    move-result v0

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 160
    invoke-virtual {v1}, Lru/truba/touchgallery/TouchView/c;->c()F

    move-result v1

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 162
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    const/16 v0, 0xa

    if-ge v1, v0, :cond_1

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-wide v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->z:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 168
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->c(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->c(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 169
    :cond_2
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    .line 171
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    div-float/2addr v0, v1

    .line 172
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->p:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 173
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    iput v1, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 180
    :goto_1
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->d(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    .line 181
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0, v6, v6}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/TouchImageView;FF)V

    .line 182
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->z:J

    .line 189
    :goto_2
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->e(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    div-float/2addr v1, v2

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    div-float/2addr v3, v8

    iget-object v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v4, v4, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    div-float/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 178
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    iput v1, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    goto :goto_1

    .line 185
    :cond_4
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput-wide v0, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->z:J

    .line 186
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/TouchImageView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 187
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->c(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lru/truba/touchgallery/TouchView/TouchImageView$b;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-direct {v1, v2, v10}, Lru/truba/touchgallery/TouchView/TouchImageView$b;-><init>(Lru/truba/touchgallery/TouchView/TouchImageView;B)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    .line 197
    :pswitch_4
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput v10, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    .line 198
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput v6, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    .line 199
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 200
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/c;)F

    move-result v1

    iput v1, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    goto/16 :goto_0

    .line 205
    :pswitch_5
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput-boolean v10, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->B:Z

    .line 206
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    if-ne v2, v4, :cond_5

    .line 207
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 208
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v6, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v6, v6, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    invoke-static {v0, v6}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v7, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-wide v8, v7, Lru/truba/touchgallery/TouchView/TouchImageView;->A:J

    sub-long v8, v4, v8

    long-to-float v7, v8

    div-float/2addr v6, v7

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    iput v6, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->y:F

    .line 213
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput-wide v4, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->A:J

    .line 215
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v3, v1, v2}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/TouchImageView;FF)V

    .line 216
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->x:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 217
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->n:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 219
    :cond_5
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/TouchImageView;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 220
    invoke-static {v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->a(Lru/truba/touchgallery/TouchView/c;)F

    move-result v2

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 224
    const/high16 v0, 0x41200000    # 10.0f

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 225
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    div-float v0, v2, v0

    .line 226
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iput v2, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->w:F

    .line 228
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 229
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v4, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v4, v0

    iput v4, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 230
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    iget-object v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v4, v4, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    .line 231
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    iput v3, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 232
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->v:F

    div-float/2addr v0, v2

    .line 238
    :cond_6
    :goto_3
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v2}, Lru/truba/touchgallery/TouchView/TouchImageView;->d(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    .line 239
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->h:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_7

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->i:F

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    .line 240
    :cond_7
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->l:F

    div-float/2addr v2, v8

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->m:F

    div-float/2addr v3, v8

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 241
    cmpg-float v1, v0, v7

    if-gez v1, :cond_8

    .line 242
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->b(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    .line 243
    cmpg-float v0, v0, v7

    if-gez v0, :cond_8

    .line 244
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->e(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    .line 262
    :cond_8
    :goto_4
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v0}, Lru/truba/touchgallery/TouchView/TouchImageView;->f(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    goto/16 :goto_0

    .line 233
    :cond_9
    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    iget-object v4, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v4, v4, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 234
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v3, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v3, v3, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    iput v3, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->t:F

    .line 235
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->u:F

    div-float/2addr v0, v2

    goto :goto_3

    .line 248
    :cond_a
    invoke-static {v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->b(Lru/truba/touchgallery/TouchView/c;)Landroid/graphics/PointF;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v3, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 250
    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    invoke-static {v1}, Lru/truba/touchgallery/TouchView/TouchImageView;->b(Lru/truba/touchgallery/TouchView/TouchImageView;)V

    .line 251
    cmpg-float v0, v0, v7

    if-gez v0, :cond_8

    .line 252
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 253
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->f:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 256
    :cond_b
    :goto_5
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 257
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    iget-object v2, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v2, v2, Lru/truba/touchgallery/TouchView/TouchImageView;->g:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 254
    :cond_c
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_b

    .line 255
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->r:F

    neg-float v1, v1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 258
    :cond_d
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    .line 259
    iget-object v0, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget-object v0, v0, Lru/truba/touchgallery/TouchView/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lru/truba/touchgallery/TouchView/TouchImageView$1;->a:Lru/truba/touchgallery/TouchView/TouchImageView;

    iget v1, v1, Lru/truba/touchgallery/TouchView/TouchImageView;->s:F

    neg-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_4

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
