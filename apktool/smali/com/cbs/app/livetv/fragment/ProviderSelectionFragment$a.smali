.class final Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 543
    iput p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    .line 544
    iput p2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->c:Z

    .line 546
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 550
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 551
    iget v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    rem-int v1, v0, v1

    .line 553
    iget-boolean v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->c:Z

    if-eqz v2, :cond_2

    .line 554
    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    iget v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 555
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    div-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 557
    iget v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    if-ge v0, v1, :cond_0

    .line 558
    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 560
    :cond_0
    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 568
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 563
    iget v2, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    div-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 564
    iget v1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->a:I

    if-lt v0, v1, :cond_1

    .line 565
    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$a;->b:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
