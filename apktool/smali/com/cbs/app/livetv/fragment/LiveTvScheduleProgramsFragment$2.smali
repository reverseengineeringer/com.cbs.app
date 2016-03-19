.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 164
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/controllers/SyncbakController;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getChannel()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    .line 168
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 169
    return-void
.end method
