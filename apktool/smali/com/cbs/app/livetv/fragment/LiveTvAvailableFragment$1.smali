.class final Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;
.super Lcom/cbs/app/livetv/callbacks/SyncbakCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-direct {p0}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError() called with: errorCode = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], errorMessage = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Z

    .line 154
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 155
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/livetv/model/LiveTvChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAllSchedulesLoaded channels count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Z

    .line 137
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a()V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a(Ljava/util/Collection;)V

    .line 146
    :cond_1
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAllSchedulesLoaded: adapter count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
