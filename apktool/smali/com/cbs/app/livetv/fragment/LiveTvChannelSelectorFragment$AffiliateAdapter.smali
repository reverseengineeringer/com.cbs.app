.class public Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;
.super Lcom/cbs/app/livetv/widget/ArrayListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AffiliateAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;,
        Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cbs/app/livetv/widget/ArrayListAdapter",
        "<",
        "Lcom/cbs/app/view/model/Affiliate;",
        "Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    .line 178
    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/ArrayListAdapter;-><init>()V

    .line 179
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 174
    check-cast p1, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;

    .line 1193
    invoke-virtual {p0, p2}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Affiliate;

    .line 1194
    invoke-virtual {p1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$ViewHolder;->a(Lcom/cbs/app/view/model/Affiliate;)V

    .line 174
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 174
    .line 2188
    new-instance v0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->e(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter$AffiliateViewHolder;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;Landroid/view/View;)V

    .line 174
    return-object v0
.end method
