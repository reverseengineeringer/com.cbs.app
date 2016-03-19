.class public Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private castList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cast"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private castTweetMap:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tweets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private success:Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCastList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;->castList:Ljava/util/List;

    return-object v0
.end method

.method public getCastTweetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;->castTweetMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;->success:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCastList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;->castList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setCastTweetMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;->castTweetMap:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public setSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/CastLatestTweetEndpointResponse;->success:Ljava/lang/Boolean;

    .line 51
    return-void
.end method
