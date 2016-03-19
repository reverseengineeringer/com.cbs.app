.class public Lcom/cbs/app/androiddata/model/rest/MarqueeEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/DeviceHome;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumFound()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeEndpointResponse;->a:I

    return v0
.end method

.method public getResults()Ljava/util/List;
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
    .line 27
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeEndpointResponse;->b:Ljava/util/List;

    return-object v0
.end method

.method public setNumFound(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeEndpointResponse;->a:I

    .line 24
    return-void
.end method

.method public setResults(Ljava/util/List;)V
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
    .line 31
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/MarqueeEndpointResponse;->b:Ljava/util/List;

    .line 32
    return-void
.end method
