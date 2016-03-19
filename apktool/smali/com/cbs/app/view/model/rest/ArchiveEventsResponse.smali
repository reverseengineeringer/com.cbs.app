.class public Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private events:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/ConnectArchive;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lcom/cbs/app/view/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private numFound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/ConnectArchive;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;->events:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;->numFound:I

    return v0
.end method

.method public setEvents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/ConnectArchive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;->events:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public setHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 50
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/cbs/app/view/model/rest/ArchiveEventsResponse;->numFound:I

    .line 42
    return-void
.end method
