.class final Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b()Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1064
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 98
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    move-result-object v0

    .line 1060
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 79
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b()Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->getItemCount()I

    move-result v0

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 84
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video size2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$1;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->a(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
