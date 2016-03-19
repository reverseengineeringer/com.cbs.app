.class public Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private isAuthenticated:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isAuthenticated"
    .end annotation
.end field

.field private markets:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "markets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakMarket;",
            ">;"
        }
    .end annotation
.end field

.field private serverTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "serverTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getMarkets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakMarket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;->markets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;->serverTime:J

    return-wide v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;->isAuthenticated:Z

    return v0
.end method

.method public setAuthenticated(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;->isAuthenticated:Z

    .line 45
    return-void
.end method

.method public setMarkets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakMarket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;->markets:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public setServerTime(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;->serverTime:J

    .line 37
    return-void
.end method
