.class public Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;
.super Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;,
        Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;,
        Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cbs/app/livetv/widget/ArrayListAdapter",
        "<",
        "Lcom/cbs/app/view/model/MVPDConfig;",
        "Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;-><init>()V

    .line 575
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a:I

    .line 579
    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$1;-><init>(Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    return-void
.end method

.method protected final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 571
    check-cast p2, Lcom/cbs/app/view/model/MVPDConfig;

    .line 1613
    invoke-virtual {p2}, Lcom/cbs/app/view/model/MVPDConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1614
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 571
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a:I

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 571
    check-cast p1, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;

    .line 2607
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 2608
    invoke-virtual {p1, v0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ViewHolder;->a(Lcom/cbs/app/view/model/MVPDConfig;)V

    .line 571
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 571
    .line 3593
    packed-switch p2, :pswitch_data_0

    .line 3599
    new-instance v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300bc

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$TextModeViewHolder;-><init>(Landroid/view/View;)V

    .line 3595
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300bb

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter$ImageModeViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 665
    iput p1, p0, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->a:I

    .line 666
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/ProviderSelectionFragment$ProviderAdapter;->notifyItemRangeChanged(II)V

    .line 669
    :cond_0
    return-void
.end method
