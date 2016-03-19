.class public Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;
.super Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private mvpds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMvpds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;->mvpds:Ljava/util/List;

    return-object v0
.end method

.method public setMvpds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/MVPDInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakMvpdLocationEndpointResponse;->mvpds:Ljava/util/List;

    .line 20
    return-void
.end method
