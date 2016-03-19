.class public Lcom/cbs/app/view/model/rest/AssetCarouselResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/AssetCarouselItem;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/AssetCarouselItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->numFound:I

    return v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/AssetCarouselItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->items:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->numFound:I

    .line 44
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AssetCarouselResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 36
    return-void
.end method
