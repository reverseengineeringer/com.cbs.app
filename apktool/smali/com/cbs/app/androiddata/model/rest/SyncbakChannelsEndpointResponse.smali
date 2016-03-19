.class public Lcom/cbs/app/androiddata/model/rest/SyncbakChannelsEndpointResponse;
.super Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "channels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/cbs/app/androiddata/model/rest/SyncbakEndpointResponse;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getChannels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakChannelsEndpointResponse;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setChannels(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/SyncbakChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/SyncbakChannelsEndpointResponse;->a:Ljava/util/ArrayList;

    .line 28
    return-void
.end method
