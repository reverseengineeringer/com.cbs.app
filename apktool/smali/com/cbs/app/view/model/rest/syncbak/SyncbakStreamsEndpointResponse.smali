.class public Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;
.super Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private streams:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "streams"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cbs/app/view/model/rest/syncbak/SyncbakEndpointResponse;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getStreams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;->streams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/syncbak/SyncbakStreamsEndpointResponse;->streams:Ljava/util/ArrayList;

    .line 29
    return-void
.end method
