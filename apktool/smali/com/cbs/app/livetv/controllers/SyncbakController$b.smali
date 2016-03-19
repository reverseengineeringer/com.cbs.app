.class final Lcom/cbs/app/livetv/controllers/SyncbakController$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/controllers/SyncbakController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/cbs/app/livetv/model/AsyncResult",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/cbs/app/view/model/syncbak/SyncbakChannel;",
        "Lcom/cbs/app/view/model/Affiliate;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/livetv/controllers/SyncbakController;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/controllers/SyncbakController;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 436
    .line 2440
    new-instance v2, Lcom/cbs/app/livetv/model/AsyncResult;

    invoke-direct {v2}, Lcom/cbs/app/livetv/model/AsyncResult;-><init>()V

    .line 2441
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/service/SyncbakService;->a(Landroid/content/Context;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    .line 2442
    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    if-eqz v1, :cond_3

    .line 2443
    check-cast v0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;

    .line 2444
    invoke-virtual {v0}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakChannelsEndpointResponse;->getChannels()Ljava/util/ArrayList;

    move-result-object v0

    .line 2445
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2446
    new-instance v3, Lcom/cbs/app/service/AffiliateService;

    invoke-direct {v3}, Lcom/cbs/app/service/AffiliateService;-><init>()V

    .line 2447
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2448
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 2449
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lcom/cbs/app/service/AffiliateService;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v1

    .line 2450
    instance-of v6, v1, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;

    if-eqz v6, :cond_0

    .line 2451
    check-cast v1, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;

    .line 2452
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AffiliateEndpointResponse;->getAffiliate()Lcom/cbs/app/view/model/Affiliate;

    move-result-object v1

    .line 2453
    if-eqz v1, :cond_0

    .line 2454
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2458
    :cond_1
    invoke-virtual {v2, v4}, Lcom/cbs/app/livetv/model/AsyncResult;->setData(Ljava/lang/Object;)V

    .line 436
    :cond_2
    :goto_1
    return-object v2

    .line 2461
    :cond_3
    const/16 v0, 0x7d2

    invoke-virtual {v2, v0}, Lcom/cbs/app/livetv/model/AsyncResult;->setErrorCode(I)V

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 436
    check-cast p1, Lcom/cbs/app/livetv/model/AsyncResult;

    .line 1468
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/AsyncResult;->getError()Lcom/cbs/app/livetv/model/AsyncResult$Error;

    move-result-object v1

    .line 1470
    if-nez v1, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/AsyncResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/callbacks/SyncbakCallback;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/SyncbakController$b;->a:Lcom/cbs/app/livetv/controllers/SyncbakController;

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
