.class public Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x522622a23c0b0f56L


# instance fields
.field private episodes:Ljava/util/List;
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
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getEpisodes()Ljava/util/List;
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
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->episodes:Ljava/util/List;

    return-object v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->numFound:I

    return v0
.end method

.method public getSolrHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public setEpisodes(Ljava/util/List;)V
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
    .line 47
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->episodes:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->numFound:I

    .line 40
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowEpisodeResponse;->solrHeader:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 32
    return-void
.end method
