.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/ShowFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/ShowFragmentV2;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->p(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    .line 317
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->o(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 320
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->b()V

    .line 312
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 300
    check-cast p1, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;

    .line 301
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->getItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasVideos"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$20;->b()V

    .line 306
    return-void
.end method
