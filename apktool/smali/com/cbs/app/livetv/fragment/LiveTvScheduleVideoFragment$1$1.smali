.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;
.super Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a(Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

.field final synthetic b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iput-object p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/google/android/gms/cast/d;)Lcom/google/android/gms/cast/d;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 2068
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 161
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)V

    .line 162
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c(I)V
    .locals 5

    .prologue
    const v4, 0x7f0f020c

    .line 139
    invoke-super {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->c(I)V

    .line 140
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a()Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 2060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 142
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-static {v1, v2, v3}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/visualon/player/PlayerFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    .line 144
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 146
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const v4, 0x7f0f020c

    .line 129
    invoke-super {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;->e()V

    .line 130
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->b:Lcom/cbs/app/view/model/Affiliate;

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->a:Lcom/cbs/app/view/model/syncbak/SyncbakStream;

    invoke-static {v1, v2, v3}, Lcom/cbs/app/visualon/player/PlayerFragment;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/cbs/app/view/model/Affiliate;Lcom/cbs/app/view/model/syncbak/SyncbakStream;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;Lcom/cbs/app/visualon/player/PlayerFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    .line 133
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1$1;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment$1;->c:Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleVideoFragment;)Lcom/cbs/app/visualon/player/PlayerFragment;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 135
    :cond_0
    return-void
.end method
