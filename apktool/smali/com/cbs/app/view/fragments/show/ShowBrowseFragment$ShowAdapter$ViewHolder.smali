.class public Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/LinearLayout;

.field e:Landroid/animation/ObjectAnimator;

.field f:I

.field final synthetic g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;Landroid/widget/FrameLayout;I)V
    .locals 4

    .prologue
    .line 492
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    .line 493
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 494
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 495
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 496
    const v0, 0x7f0f0335

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    .line 497
    const v0, 0x7f0f0337

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 498
    const v0, 0x7f0f0336

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    .line 499
    const v0, 0x7f0f0338

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 500
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 501
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 502
    iget-object v1, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 503
    iget-object v1, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 504
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->e:Landroid/animation/ObjectAnimator;

    .line 507
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 508
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_0

    .line 506
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-boolean v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 518
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v1, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->f:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    invoke-interface {v1, v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowBrowseListener;->a(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 519
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->g:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->g:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->g:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 524
    :cond_0
    return-void
.end method
