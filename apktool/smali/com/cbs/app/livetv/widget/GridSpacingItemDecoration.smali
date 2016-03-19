.class public Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    .line 15
    iput p2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->c:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 21
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 22
    iget v1, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    rem-int v1, v0, v1

    .line 24
    iget-boolean v2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->c:Z

    if-eqz v2, :cond_2

    .line 25
    iget v2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    iget v3, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 26
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    div-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 28
    iget v1, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    if-ge v0, v1, :cond_0

    .line 29
    iget v0, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 31
    :cond_0
    iget v0, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget v2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    iget v2, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    div-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 35
    iget v1, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->a:I

    if-lt v0, v1, :cond_1

    .line 36
    iget v0, p0, Lcom/cbs/app/livetv/widget/GridSpacingItemDecoration;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
