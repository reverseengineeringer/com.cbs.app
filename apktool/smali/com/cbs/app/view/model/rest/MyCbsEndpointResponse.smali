.class public Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private showVideoArray:[Lcom/cbs/app/view/model/ShowVideo;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "results"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getShowVideoArray()[Lcom/cbs/app/view/model/ShowVideo;
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    iget-object v1, p0, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;->showVideoArray:[Lcom/cbs/app/view/model/ShowVideo;

    if-eqz v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;->showVideoArray:[Lcom/cbs/app/view/model/ShowVideo;

    invoke-virtual {v0}, [Lcom/cbs/app/view/model/ShowVideo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/ShowVideo;

    .line 23
    :cond_0
    return-object v0
.end method

.method public setShowVideoArray([Lcom/cbs/app/view/model/ShowVideo;)V
    .locals 1

    .prologue
    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Lcom/cbs/app/view/model/ShowVideo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/view/model/ShowVideo;

    :goto_0
    iput-object v0, p0, Lcom/cbs/app/view/model/rest/MyCbsEndpointResponse;->showVideoArray:[Lcom/cbs/app/view/model/ShowVideo;

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
