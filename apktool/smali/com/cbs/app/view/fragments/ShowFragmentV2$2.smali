.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$2;
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
    .line 323
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->c(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 348
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->o(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->l(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 351
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
    .locals 3

    .prologue
    .line 340
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasPhotos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->b()V

    .line 343
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 326
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 328
    check-cast p1, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;

    .line 329
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->getShowAlbums()Ljava/util/List;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasPhotos"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    :goto_0
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->b()V

    .line 336
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$2;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasPhotos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
