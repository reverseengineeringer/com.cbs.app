.class public Lcom/cbs/app/view/model/rest/MarqueeResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private deviceHomeList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceHome;",
            ">;"
        }
    .end annotation
.end field

.field private end:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end"
    .end annotation
.end field

.field private numFound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private start:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->deviceHomeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceHomeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceHome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->deviceHomeList:Ljava/util/List;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->end:I

    return v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->numFound:I

    return v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->start:I

    return v0
.end method

.method public setDeviceHomeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/DeviceHome;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->deviceHomeList:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setEnd(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->end:I

    .line 65
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->numFound:I

    .line 49
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 73
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/cbs/app/view/model/rest/MarqueeResponse;->start:I

    .line 57
    return-void
.end method
