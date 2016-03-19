.class public Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "serverTime"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isAuthenticated"
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "markets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakMarket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 26
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
            "Lcom/cbs/app/androiddata/model/SyncbakMarket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;->a:J

    return-wide v0
.end method

.method public setAuthenticated(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;->b:Z

    .line 42
    return-void
.end method

.method public setMarkets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakMarket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;->c:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public setServerTime(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;->a:J

    .line 34
    return-void
.end method
