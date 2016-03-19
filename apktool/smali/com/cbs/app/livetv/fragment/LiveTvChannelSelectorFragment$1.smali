.class final Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 66
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Z

    .line 100
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 2064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakChannel;",
            "Lcom/cbs/app/view/model/Affiliate;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Z

    .line 71
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;Ljava/util/List;)Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 75
    :cond_0
    if-eqz p1, :cond_3

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v2, "ARG_CHANNEL"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v2, "ARG_AFFILIATE"

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    move-result-object v0

    const/16 v2, 0x459

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 83
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->b()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@@ onChannelsLoaded: channel  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/cbs/app/view/model/Affiliate;

    .line 85
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$AffiliateAdapter;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    invoke-virtual {v0, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;->d(Lcom/cbs/app/livetv/fragment/LiveTvChannelSelectorFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
