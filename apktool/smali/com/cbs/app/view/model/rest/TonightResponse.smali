.class public Lcom/cbs/app/view/model/rest/TonightResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private episodes:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
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
    .line 26
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/cbs/app/view/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/TonightResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    return-object v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/cbs/app/view/model/rest/TonightResponse;->numFound:I

    return v0
.end method

.method public getTonightEpisodes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/TonightResponse;->episodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setHeader(Lcom/cbs/app/view/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/TonightResponse;->header:Lcom/cbs/app/view/model/rest/SolrHeader;

    .line 51
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/cbs/app/view/model/rest/TonightResponse;->numFound:I

    .line 43
    return-void
.end method

.method public setTonightEpisodes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/TonightResponse;->episodes:Ljava/util/ArrayList;

    .line 35
    return-void
.end method
