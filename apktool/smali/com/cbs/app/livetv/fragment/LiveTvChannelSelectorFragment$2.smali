.class final Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;
.super Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/widget/RecyclerItemClickListener$OnItemClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Affiliate;

    .line 141
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Affiliate;->getAffiliateStation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;Ljava/lang/String;)Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v2

    .line 142
    const-string v3, "ARG_CHANNEL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    const-string v2, "ARG_AFFILIATE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    move-result-object v0

    const/16 v2, 0x45a

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 145
    return-void
.end method
