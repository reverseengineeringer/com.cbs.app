.class public Lcom/cbs/app/view/model/rest/DeviceCastResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private castList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

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
    .line 28
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->castList:Ljava/util/List;

    return-object v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getSolrQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->solrQuery:Ljava/lang/String;

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
    .line 32
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->castList:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 41
    return-void
.end method

.method public setSolrQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/DeviceCastResponse;->solrQuery:Ljava/lang/String;

    .line 49
    return-void
.end method
