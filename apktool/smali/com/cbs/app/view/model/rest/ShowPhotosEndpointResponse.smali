.class public Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2eb23991080f0d40L


# instance fields
.field private header:Lcom/cbs/app/view/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private numfound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private showAlbums:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/ShowAlbum;",
            ">;"
        }
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
.method public getHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumfound()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->numfound:I

    return v0
.end method

.method public getShowAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/ShowAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->showAlbums:Ljava/util/List;

    return-object v0
.end method

.method public setHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 43
    return-void
.end method

.method public setNumfound(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->numfound:I

    .line 51
    return-void
.end method

.method public setShowAlbums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/ShowAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowPhotosEndpointResponse;->showAlbums:Ljava/util/List;

    .line 35
    return-void
.end method
