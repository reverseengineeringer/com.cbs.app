.class public Lcom/cbs/app/view/model/rest/ShowConfigResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28dfdbf779771a77L


# instance fields
.field private configuration:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/ShowConfig;",
            ">;"
        }
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

.field private solrQuery:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "solrQuery"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/ShowConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->configuration:Ljava/util/List;

    return-object v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->numFound:I

    return v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getSolrQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->solrQuery:Ljava/lang/String;

    return-object v0
.end method

.method public setConfiguration(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/ShowConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->configuration:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->numFound:I

    .line 66
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 50
    return-void
.end method

.method public setSolrQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowConfigResponse;->solrQuery:Ljava/lang/String;

    .line 58
    return-void
.end method
