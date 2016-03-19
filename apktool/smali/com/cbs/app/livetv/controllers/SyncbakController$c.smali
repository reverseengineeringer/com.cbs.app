.class final Lcom/cbs/app/livetv/controllers/SyncbakController$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/cbs/app/livetv/model/AsyncResult",
        "<",
        "Lcom/cbs/app/livetv/model/LiveTvChannel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 388
    .line 2392
    new-instance v4, Lcom/cbs/app/livetv/model/AsyncResult;

    invoke-direct {v4}, Lcom/cbs/app/livetv/model/AsyncResult;-><init>()V

    .line 2393
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 2394
    aget-object v1, p1, v10

    check-cast v1, Lcom/cbs/app/view/model/Affiliate;

    .line 2395
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2397
    iget-object v3, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v3}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getStationId()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v3, v5, v6, v7, v2}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;IJI)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v2

    .line 2400
    iget-object v3, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v3}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cbs/app/service/SyncbakService;->b(Landroid/content/Context;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v3

    .line 2402
    if-eqz v2, :cond_2

    instance-of v5, v2, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;

    if-eqz v5, :cond_2

    .line 2403
    new-instance v5, Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-direct {v5}, Lcom/cbs/app/livetv/model/LiveTvChannel;-><init>()V

    .line 2404
    invoke-virtual {v5, v0}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setChannel(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    .line 2405
    invoke-virtual {v5, v1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setAffiliate(Lcom/cbs/app/view/model/Affiliate;)V

    move-object v1, v2

    .line 2406
    check-cast v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;->getSchedule()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setPrograms(Ljava/util/List;)V

    .line 2408
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    instance-of v1, v3, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;

    if-eqz v1, :cond_1

    move-object v1, v3

    .line 2409
    check-cast v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;->getMvpds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/view/model/MVPDInfo;

    .line 2410
    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getStationId()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v1}, Lcom/cbs/app/view/model/MVPDInfo;->getStationId()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    .line 2411
    invoke-virtual {v5, v10}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setIsMvpd(Z)V

    .line 2416
    :cond_1
    invoke-virtual {v4, v5}, Lcom/cbs/app/livetv/model/AsyncResult;->setData(Ljava/lang/Object;)V

    .line 388
    :goto_0
    return-object v4

    .line 2418
    :cond_2
    const/16 v0, 0x7d1

    invoke-virtual {v4, v0}, Lcom/cbs/app/livetv/model/AsyncResult;->setErrorCode(I)V

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 388
    check-cast p1, Lcom/cbs/app/livetv/model/AsyncResult;

    .line 1425
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/AsyncResult;->getError()Lcom/cbs/app/livetv/model/AsyncResult$Error;

    move-result-object v1

    .line 1427
    if-nez v1, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/AsyncResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V

    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$c;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/model/AsyncResult$Error;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/cbs/app/livetv/model/AsyncResult$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
