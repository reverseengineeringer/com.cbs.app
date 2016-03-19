.class public Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemCount"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "resultSize"
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->d:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->b:I

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->d:Ljava/util/List;

    return-object v0
.end method

.method public getResultSize()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->c:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->b:I

    .line 48
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->d:Ljava/util/List;

    .line 64
    return-void
.end method

.method public setResultSize(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoEndpointResponse;->c:I

    .line 56
    return-void
.end method
