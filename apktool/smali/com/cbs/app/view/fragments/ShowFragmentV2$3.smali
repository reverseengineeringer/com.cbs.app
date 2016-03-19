.class final Lcom/cbs/app/view/fragments/ShowFragmentV2$3;
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
    .line 354
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->i(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->d(Lcom/cbs/app/view/fragments/ShowFragmentV2;Z)Z

    .line 388
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->o(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->j(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->k(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->m(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->n(Lcom/cbs/app/view/fragments/ShowFragmentV2;)V

    .line 392
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
    .line 380
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasCast"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->b()V

    .line 383
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 357
    sget-object v0, Lcom/cbs/app/view/fragments/ShowFragmentV2;->h:Ljava/lang/String;

    .line 359
    check-cast p1, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;

    .line 360
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->getCastResponse()Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_4

    .line 363
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->getCastList()Ljava/util/List;

    move-result-object v0

    .line 365
    :goto_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->getHostResponse()Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    move-result-object v2

    .line 367
    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->getCastList()Ljava/util/List;

    move-result-object v1

    .line 370
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasCast"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    :goto_1
    invoke-direct {p0}, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->b()V

    .line 376
    return-void

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ShowFragmentV2$3;->a:Lcom/cbs/app/view/fragments/ShowFragmentV2;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/ShowFragmentV2;->b(Lcom/cbs/app/view/fragments/ShowFragmentV2;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hasCast"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
