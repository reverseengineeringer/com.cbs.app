.class final Lcom/cbs/app/widget/HorizontalListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->a()Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0, p3}, Lcom/cbs/app/widget/HorizontalListView;->a(F)Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    iget v2, v0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/cbs/app/widget/HorizontalListView;->c:I

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->requestLayout()V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 90
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/cbs/app/widget/HorizontalListView;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/cbs/app/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 96
    invoke-virtual {v1, v0, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v0}, Lcom/cbs/app/widget/HorizontalListView;->a(Lcom/cbs/app/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v0}, Lcom/cbs/app/widget/HorizontalListView;->a(Lcom/cbs/app/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    iget-object v3, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v3}, Lcom/cbs/app/widget/HorizontalListView;->b(Lcom/cbs/app/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    iget-object v4, v4, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v5}, Lcom/cbs/app/widget/HorizontalListView;->b(Lcom/cbs/app/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v0}, Lcom/cbs/app/widget/HorizontalListView;->c(Lcom/cbs/app/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v0}, Lcom/cbs/app/widget/HorizontalListView;->c(Lcom/cbs/app/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    iget-object v3, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v3}, Lcom/cbs/app/widget/HorizontalListView;->b(Lcom/cbs/app/widget/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    iget-object v4, v4, Lcom/cbs/app/widget/HorizontalListView;->a:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/cbs/app/widget/HorizontalListView$1;->a:Lcom/cbs/app/widget/HorizontalListView;

    invoke-static {v5}, Lcom/cbs/app/widget/HorizontalListView;->b(Lcom/cbs/app/widget/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 112
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0
.end method
