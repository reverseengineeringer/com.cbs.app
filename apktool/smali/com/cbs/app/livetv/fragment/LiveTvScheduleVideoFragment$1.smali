.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field final synthetic b:Lcom/cbs/app/view/model/Affiliate;

.field final synthetic c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iput-object p3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 175
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 178
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 185
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setMessage(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 3064
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    const v2, 0x7f08019d

    invoke-virtual {v1, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setMessage(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 2064
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x7dd
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
    .locals 4

    .prologue
    const v3, 0x7f0f020c

    .line 111
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1068
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 118
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    invoke-virtual {v0, v1, v2, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V

    .line 125
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;)Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    invoke-static {v1, v2, p1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/visualon/player/PlayerFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    .line 122
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    invoke-static {v1, v2, p1}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/visualon/player/PlayerFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    .line 168
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method
