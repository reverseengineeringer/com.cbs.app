.class public Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;
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
            "Lcom/cbs/app/androiddata/model/ShowAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;->b:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumfound()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;->c:I

    return v0
.end method

.method public getShowAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public setHeader(Lcom/cbs/app/androiddata/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;->b:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    .line 36
    return-void
.end method

.method public setNumfound(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;->c:I

    .line 44
    return-void
.end method

.method public setShowAlbums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/ShowAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/ShowPhotosEndpointResponse;->a:Ljava/util/List;

    .line 28
    return-void
.end method
