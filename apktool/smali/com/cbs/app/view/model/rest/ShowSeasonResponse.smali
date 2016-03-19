.class public Lcom/cbs/app/view/model/rest/ShowSeasonResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5dd2451603a70d7dL


# instance fields
.field private numFound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private seasons:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Season;",
            ">;"
        }
    .end annotation
.end field

.field private solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
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
.method public getNumFound()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->numFound:I

    return v0
.end method

.method public getSeasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Season;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->numFound:I

    .line 42
    return-void
.end method

.method public setSeasons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/Season;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->seasons:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 34
    return-void
.end method
