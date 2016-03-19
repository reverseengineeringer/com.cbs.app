.class public Lcom/cbs/app/androiddata/model/rest/SyncbakStreamsEndpointResponse;
.super Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "streams"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;-><init>()V

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
            "Lcom/cbs/app/androiddata/model/SyncbakStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakStreamsEndpointResponse;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setStreams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakStreamsEndpointResponse;->a:Ljava/util/ArrayList;

    .line 29
    return-void
.end method
