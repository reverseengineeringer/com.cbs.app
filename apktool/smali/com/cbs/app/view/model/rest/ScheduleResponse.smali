.class public Lcom/cbs/app/view/model/rest/ScheduleResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7947869314ea1c33L


# instance fields
.field private endIndex:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end"
    .end annotation
.end field

.field private numFound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private scheduleList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation
.end field

.field private solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private solrQuery:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "solrQuery"
    .end annotation
.end field

.field private startIndex:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->scheduleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->endIndex:I

    return v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->numFound:I

    return v0
.end method

.method public getScheduleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->scheduleList:Ljava/util/List;

    return-object v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getSolrQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->solrQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->startIndex:I

    return v0
.end method

.method public setEndIndex(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->endIndex:I

    .line 87
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->numFound:I

    .line 55
    return-void
.end method

.method public setScheduleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->scheduleList:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 63
    return-void
.end method

.method public setSolrQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->solrQuery:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/cbs/app/view/model/rest/ScheduleResponse;->startIndex:I

    .line 79
    return-void
.end method
