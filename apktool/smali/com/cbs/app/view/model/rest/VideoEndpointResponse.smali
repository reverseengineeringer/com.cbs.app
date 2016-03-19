.class public Lcom/cbs/app/view/model/rest/VideoEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21f61408b21e3dd7L


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field private itemCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemCount"
    .end annotation
.end field

.field private itemList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private resultSize:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "resultSize"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->itemList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->itemCount:I

    return v0
.end method

.method public getItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->itemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResultSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->resultSize:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->action:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->itemCount:I

    .line 57
    return-void
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->itemList:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method public setResultSize(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/cbs/app/view/model/rest/VideoEndpointResponse;->resultSize:I

    .line 65
    return-void
.end method
