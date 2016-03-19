.class public Lcom/cbs/app/livetv/widget/ListItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/cbs/app/livetv/widget/ListItemDecoration;->a:I

    .line 1026
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/livetv/widget/ListItemDecoration;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    iget v0, p0, Lcom/cbs/app/livetv/widget/ListItemDecoration;->b:I

    if-nez v0, :cond_1

    .line 35
    iget v0, p0, Lcom/cbs/app/livetv/widget/ListItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 37
    :cond_1
    iget v0, p0, Lcom/cbs/app/livetv/widget/ListItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
