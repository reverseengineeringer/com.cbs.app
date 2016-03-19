.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f08019d

    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 130
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 2064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 120
    :sswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 121
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 2060
    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 126
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7dd -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 138
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 3060
    invoke-virtual {v0, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/MessageUtil;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v0, "syncbakChannel"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getChannel()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    const-string v0, "syncbakStream"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const-string v0, "syncbakAffiliate"

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getAffiliate()Lcom/cbs/app/view/model/Affiliate;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 151
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    .line 152
    const-string v2, "showName"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "episodeName"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 4060
    invoke-virtual {v0, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0
.end method
