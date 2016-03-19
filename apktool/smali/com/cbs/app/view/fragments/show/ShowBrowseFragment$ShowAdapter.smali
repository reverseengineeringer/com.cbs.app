.class public Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/fragments/show/model/ShowItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 390
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    const/16 v1, 0x3e7

    if-le p2, v1, :cond_0

    .line 453
    const-string v0, "999+"

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/fragments/show/model/ShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f:Z

    .line 394
    if-eqz p1, :cond_0

    .line 395
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    .line 396
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->notifyDataSetChanged()V

    .line 398
    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 477
    goto :goto_0

    .line 479
    :cond_2
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 381
    check-cast p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;

    .line 1417
    invoke-virtual {p0, p2}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1420
    iget-object v0, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1421
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1422
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1423
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->d(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1424
    iget-object v0, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->c(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1426
    :cond_1
    iput p2, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->f:I

    .line 1427
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->filepathShowGroupItemLogo:Ljava/lang/String;

    .line 1428
    const-string v1, "/thumbnails/photos/w"

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->e(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)I

    move-result v2

    iget-object v3, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 1435
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->episodeVideoCount:Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;

    iget v0, v0, Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;->totalEpisodes:I

    .line 1436
    if-lez v0, :cond_3

    .line 1437
    const-string v1, " Episode"

    invoke-static {p1, v1, v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;Ljava/lang/String;I)V

    .line 1430
    :goto_0
    iget-object v0, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 381
    :cond_2
    return-void

    .line 1439
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/model/ShowItem;->episodeVideoCount:Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;

    iget v0, v0, Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;->totalClips:I

    .line 1440
    if-lez v0, :cond_4

    .line 1441
    const-string v1, " Clip"

    invoke-static {p1, v1, v0}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;Ljava/lang/String;I)V

    goto :goto_0

    .line 1443
    :cond_4
    iget-object v0, p1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 381
    .line 2404
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2405
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2411
    :goto_0
    new-instance v1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;

    invoke-direct {v1, p0, v0, p2}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter$ViewHolder;-><init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;Landroid/widget/FrameLayout;I)V

    .line 381
    return-object v1

    .line 2408
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$ShowAdapter;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
