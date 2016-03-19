.class public Lcom/cbs/app/androiddata/ServerRequestTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Double;",
        "Lcom/cbs/app/androiddata/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/cbs/app/androiddata/RequestHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/cbs/app/androiddata/ResponseModelListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cbs/app/androiddata/ResponseModel;",
            ">;",
            "Lcom/cbs/app/androiddata/ResponseModelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 27
    new-instance v0, Lcom/cbs/app/androiddata/RequestHelper;

    invoke-direct {v0, p1, p2, p3}, Lcom/cbs/app/androiddata/RequestHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/cbs/app/androiddata/ResponseModelListener;)V

    iput-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    .line 29
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .line 2033
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 2035
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->a([Ljava/lang/String;)Lcom/cbs/app/androiddata/ResponseModel;

    move-result-object v0

    .line 2037
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 15
    return-object v0
.end method

.method public getCbsAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getCbsAppSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncbakDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getSyncbakDeviceData()Lcom/cbs/app/androiddata/model/DeviceData;

    move-result-object v0

    return-object v0
.end method

.method public getSyncbakKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getSyncbakKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncbakSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getSyncbakSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getTtl()J

    move-result-wide v0

    return-wide v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/cbs/app/androiddata/ResponseModel;

    .line 1044
    invoke-static {}, Lcom/cbs/app/androiddata/LG;->a()V

    .line 1045
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1046
    if-eqz p1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getListener()Lcom/cbs/app/androiddata/ResponseModelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cbs/app/androiddata/ResponseModelListener;->a(Lcom/cbs/app/androiddata/ResponseModel;)V

    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0}, Lcom/cbs/app/androiddata/RequestHelper;->getListener()Lcom/cbs/app/androiddata/ResponseModelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cbs/app/androiddata/ResponseModelListener;->a()V

    goto :goto_0
.end method

.method public setCbsAppSecret(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setCbsAppSecret(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setIsCbsEndpont(Z)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setIsCbsEndpont(Z)V

    .line 99
    return-void
.end method

.method public setRetry(Z)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setRetry(Z)V

    .line 139
    return-void
.end method

.method public setShouldWeLogThisRequest(Z)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setShouldWeLogThisRequest(Z)V

    .line 91
    return-void
.end method

.method public setStaleOk(Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setStaleOk(Z)V

    .line 71
    return-void
.end method

.method public setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setSyncbakDeviceData(Lcom/cbs/app/androiddata/model/DeviceData;)V

    .line 123
    return-void
.end method

.method public setSyncbakKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setSyncbakKey(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setSyncbakSecret(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setSyncbakSecret(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setTtl(J)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cbs/app/androiddata/RequestHelper;->setTtl(J)V

    .line 79
    return-void
.end method

.method public setUseCache(Z)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cbs/app/androiddata/ServerRequestTask;->a:Lcom/cbs/app/androiddata/RequestHelper;

    invoke-virtual {v0, p1}, Lcom/cbs/app/androiddata/RequestHelper;->setUseCache(Z)V

    .line 83
    return-void
.end method
