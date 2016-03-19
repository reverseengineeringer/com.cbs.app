.class final Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Z)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iput-boolean p2, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->a:Z

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->a:Z

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/livetv/model/LiveTvChannel;)Lcom/cbs/app/livetv/model/LiveTvChannel;

    .line 242
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    .line 243
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment$2;->b:Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;->d(Lcom/cbs/app/livetv/fragment/LiveTvScheduleFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
