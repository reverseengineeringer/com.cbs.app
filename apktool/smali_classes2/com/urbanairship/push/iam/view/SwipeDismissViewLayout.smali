.class public Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$b;,
        Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/ViewDragHelper;

.field private b:F

.field private c:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 138
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->c:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->b:F

    .line 154
    new-instance v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$b;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;B)V

    invoke-static {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_0
.end method

.method static synthetic b(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->b:F

    return v0
.end method

.method static synthetic c(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 286
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 293
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInterceptTouchEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 312
    :cond_1
    :goto_0
    return v0

    .line 296
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 303
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 305
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 307
    iget-object v2, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 312
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 318
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;)V
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->c:Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinFlingVelocity(F)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->b:F

    .line 166
    return-void
.end method

.method public setXFraction(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$2;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;F)V

    .line 276
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setTranslationX(F)V

    goto :goto_0
.end method

.method public setYFraction(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$1;-><init>(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;F)V

    .line 231
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setTranslationY(F)V

    goto :goto_0
.end method
