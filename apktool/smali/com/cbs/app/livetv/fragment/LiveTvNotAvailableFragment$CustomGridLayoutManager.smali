.class public Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomGridLayoutManager"
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

.field private b:[I


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    .line 327
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 330
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->b:[I

    .line 328
    return-void
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 14

    .prologue
    .line 335
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 336
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 337
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 338
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 339
    const/4 v2, 0x0

    .line 340
    const/4 v1, 0x0

    .line 341
    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 342
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->b:[I

    .line 1382
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v11

    .line 1383
    if-eqz v11, :cond_0

    .line 1384
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1385
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v8, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1387
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v9, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1389
    invoke-virtual {v11, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1390
    const/4 v8, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v12, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v9, v12

    iget v12, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v9, v12

    aput v9, v10, v8

    .line 1391
    const/4 v8, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v12, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v12

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v0, v9

    aput v0, v10, v8

    .line 1392
    invoke-virtual {p1, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_3

    .line 348
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getSpanCount()I

    move-result v0

    rem-int v0, v1, v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->b:[I

    const/4 v8, 0x0

    aget v0, v0, v8

    add-int/2addr v3, v0

    .line 351
    :cond_1
    if-nez v1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->b:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    .line 341
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->getSpanCount()I

    move-result v0

    rem-int v0, v1, v0

    if-nez v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->b:[I

    const/4 v8, 0x1

    aget v0, v0, v8

    add-int/2addr v2, v0

    .line 358
    :cond_4
    if-nez v1, :cond_2

    .line 359
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->b:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    goto :goto_1

    .line 363
    :cond_5
    packed-switch v6, :pswitch_data_0

    .line 370
    :goto_2
    packed-switch v7, :pswitch_data_1

    .line 377
    :goto_3
    invoke-virtual {p0, v3, v2}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$CustomGridLayoutManager;->setMeasuredDimension(II)V

    .line 378
    return-void

    :pswitch_0
    move v3, v5

    .line 365
    goto :goto_2

    :pswitch_1
    move v2, v4

    .line 372
    goto :goto_3

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch

    .line 370
    :pswitch_data_1
    .packed-switch 0x40000000
        :pswitch_1
    .end packed-switch
.end method
