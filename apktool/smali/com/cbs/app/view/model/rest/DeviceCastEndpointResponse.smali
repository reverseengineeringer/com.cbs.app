.class public Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d531b01035910f0L


# instance fields
.field private castResponse:Lcom/cbs/app/view/model/rest/DeviceCastResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cast"
    .end annotation
.end field

.field private hostResponse:Lcom/cbs/app/view/model/rest/DeviceCastResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getCastResponse()Lcom/cbs/app/view/model/rest/DeviceCastResponse;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->castResponse:Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    return-object v0
.end method

.method public getHostResponse()Lcom/cbs/app/view/model/rest/DeviceCastResponse;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->hostResponse:Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    return-object v0
.end method

.method public setCastResponse(Lcom/cbs/app/view/model/rest/DeviceCastResponse;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->castResponse:Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    .line 35
    return-void
.end method

.method public setHostResponse(Lcom/cbs/app/view/model/rest/DeviceCastResponse;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/DeviceCastEndpointResponse;->hostResponse:Lcom/cbs/app/view/model/rest/DeviceCastResponse;

    .line 43
    return-void
.end method
