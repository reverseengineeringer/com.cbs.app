.class public Lcom/cbs/app/view/model/rest/EventsEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private archiveEvents:Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "archive-events"
    .end annotation
.end field

.field private connectEvents:Lcom/cbs/app/view/model/rest/ConnectEventsResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "connect-events"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getArchiveEvents()Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/EventsEndpointResponse;->archiveEvents:Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;

    return-object v0
.end method

.method public getConnectEvents()Lcom/cbs/app/view/model/rest/ConnectEventsResponse;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/EventsEndpointResponse;->connectEvents:Lcom/cbs/app/view/model/rest/ConnectEventsResponse;

    return-object v0
.end method

.method public setArchiveEvents(Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/EventsEndpointResponse;->archiveEvents:Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;

    .line 36
    return-void
.end method

.method public setConnectEvents(Lcom/cbs/app/view/model/rest/ConnectEventsResponse;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/EventsEndpointResponse;->connectEvents:Lcom/cbs/app/view/model/rest/ConnectEventsResponse;

    .line 28
    return-void
.end method
