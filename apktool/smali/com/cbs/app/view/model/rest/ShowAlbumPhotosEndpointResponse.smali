.class public Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15c4801d27a88101L


# instance fields
.field private albums:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/rest/Album;",
            ">;"
        }
    .end annotation
.end field

.field private header:Lcom/cbs/app/view/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private numFound:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
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
.method public getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/rest/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumfound()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->numFound:I

    return v0
.end method

.method public setAlbums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/rest/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->albums:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 46
    return-void
.end method

.method public setNumfound(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowAlbumPhotosEndpointResponse;->numFound:I

    .line 54
    return-void
.end method
