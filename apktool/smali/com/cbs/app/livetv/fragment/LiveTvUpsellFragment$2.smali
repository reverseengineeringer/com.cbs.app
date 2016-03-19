.class final Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    if-eqz v0, :cond_0

    .line 404
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 405
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment$2;->a:Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/fragment/LiveTvUpsellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;)V

    goto :goto_0
.end method
