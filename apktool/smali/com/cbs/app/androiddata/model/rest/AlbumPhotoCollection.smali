.class public Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/AlbumPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;->a:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumfound()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;->b:I

    return v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/AlbumPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setHeader(Lcom/cbs/app/androiddata/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;->a:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    .line 35
    return-void
.end method

.method public setNumfound(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;->b:I

    .line 43
    return-void
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/androiddata/model/AlbumPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/AlbumPhotoCollection;->c:Ljava/util/ArrayList;

    .line 51
    return-void
.end method
