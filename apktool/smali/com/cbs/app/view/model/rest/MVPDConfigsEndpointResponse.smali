.class public Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# instance fields
.field private mvpdConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMvpdConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;->mvpdConfigList:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;->success:Z

    return v0
.end method

.method public setMvpdConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;->mvpdConfigList:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;->success:Z

    .line 23
    return-void
.end method
