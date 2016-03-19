.class public Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;
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
            "Lcom/cbs/app/androiddata/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "solrQuery"
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
.method public getCastList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/DeviceCast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public getSolrHeader()Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;->b:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    return-object v0
.end method

.method public getSolrQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setCastList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/DeviceCast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;->a:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/androiddata/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;->b:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    .line 38
    return-void
.end method

.method public setSolrQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;->c:Ljava/lang/String;

    .line 46
    return-void
.end method
