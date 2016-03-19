.class final Lcom/cbs/app/livetv/controllers/SyncbakController$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/cbs/app/livetv/model/AsyncResult",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/cbs/app/livetv/model/LiveTvChannel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 330
    check-cast p1, [Ljava/lang/Integer;

    .line 2334
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2335
    new-instance v5, Lcom/cbs/app/livetv/model/AsyncResult;

    invoke-direct {v5}, Lcom/cbs/app/livetv/model/AsyncResult;-><init>()V

    .line 2337
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    if-eqz v1, :cond_3

    .line 2339
    check-cast v0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    .line 2340
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;->getChannels()Ljava/util/ArrayList;

    move-result-object v0

    .line 2341
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2342
    new-instance v6, Lcom/cbs/app/service/AffiliateService;

    invoke-direct {v6}, Lcom/cbs/app/service/AffiliateService;-><init>()V

    .line 2343
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2344
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 2348
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/cbs/app/service/AffiliateService;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v1

    .line 2349
    if-eqz v1, :cond_5

    instance-of v2, v1, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;

    if-eqz v2, :cond_5

    .line 2350
    check-cast v1, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;->getAffiliate()Lcom/cbs/app/view/model/Affiliate;

    move-result-object v1

    move-object v2, v1

    .line 2354
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getStationId()I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v1, v9, v10, v11, v4}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;IJI)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v1

    .line 2356
    if-eqz v1, :cond_4

    instance-of v9, v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;

    if-eqz v9, :cond_4

    .line 2357
    check-cast v1, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakScheduleEndpointResponse;->getSchedule()Ljava/util/ArrayList;

    move-result-object v1

    .line 2359
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2360
    new-instance v9, Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-direct {v9}, Lcom/cbs/app/livetv/model/LiveTvChannel;-><init>()V

    .line 2361
    invoke-virtual {v9, v0}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setChannel(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    .line 2362
    invoke-virtual {v9, v2}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setAffiliate(Lcom/cbs/app/view/model/Affiliate;)V

    .line 2363
    invoke-virtual {v9, v1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->setPrograms(Ljava/util/List;)V

    .line 2364
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2367
    :cond_1
    invoke-virtual {v5, v7}, Lcom/cbs/app/livetv/model/AsyncResult;->setData(Ljava/lang/Object;)V

    .line 330
    :cond_2
    :goto_3
    return-object v5

    .line 2370
    :cond_3
    const/16 v0, 0x7d1

    invoke-virtual {v5, v0}, Lcom/cbs/app/livetv/model/AsyncResult;->setErrorCode(I)V

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 330
    check-cast p1, Lcom/cbs/app/livetv/model/AsyncResult;

    .line 1377
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/AsyncResult;->getError()Lcom/cbs/app/livetv/model/AsyncResult$Error;

    move-result-object v1

    .line 1379
    if-nez v1, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/AsyncResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->b(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$a;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

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
