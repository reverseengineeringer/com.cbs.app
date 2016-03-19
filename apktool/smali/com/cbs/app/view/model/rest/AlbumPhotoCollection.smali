.class public Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


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

.field private results:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/AlbumPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumfound()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->numfound:I

    return v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/AlbumPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->results:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 36
    return-void
.end method

.method public setNumfound(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->numfound:I

    .line 44
    return-void
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/AlbumPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/AlbumPhotoCollection;->results:Ljava/util/ArrayList;

    .line 52
    return-void
.end method
