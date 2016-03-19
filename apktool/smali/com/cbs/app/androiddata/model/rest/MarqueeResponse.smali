.class public Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;
.super Ljava/lang/Object;
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
            "Lcom/cbs/app/androiddata/model/DeviceHome;",
            ">;"
        }
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "numFound"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end"
    .end annotation
.end field

.field private e:Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeviceHomeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/DeviceHome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->a:Ljava/util/List;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->d:I

    return v0
.end method

.method public getNumFound()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->b:I

    return v0
.end method

.method public getSolrHeader()Lcom/cbs/app/androiddata/model/rest/SolrHeader;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->e:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->c:I

    return v0
.end method

.method public setDeviceHomeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/DeviceHome;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->a:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setEnd(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->d:I

    .line 73
    return-void
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->b:I

    .line 57
    return-void
.end method

.method public setSolrHeader(Lcom/cbs/app/androiddata/model/rest/SolrHeader;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->e:Lcom/cbs/app/androiddata/model/rest/SolrHeader;

    .line 81
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeResponse;->c:I

    .line 65
    return-void
.end method
