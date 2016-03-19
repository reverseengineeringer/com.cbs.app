.class public Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private c:Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "solrQuery"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->f:I

    return v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->b:I

    return v0
.end method

.method public getScheduleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public getSolrHeader()Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->c:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    return-object v0
.end method

.method public getSolrQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->e:I

    return v0
.end method

.method public setEndIndex(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->f:I

    .line 91
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->b:I

    .line 59
    return-void
.end method

.method public setScheduleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/Schedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->a:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/androiddata/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->c:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    .line 67
    return-void
.end method

.method public setSolrQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->d:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/ScheduleResponse;->e:I

    .line 83
    return-void
.end method
