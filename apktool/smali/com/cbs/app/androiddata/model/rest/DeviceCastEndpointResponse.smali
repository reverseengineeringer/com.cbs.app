.class public Lcom/cbs/app/androiddata/model/rest/DeviceCastEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private a:Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cast"
    .end annotation
.end field

.field private b:Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCastResponse()Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastEndpointResponse;->a:Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;

    return-object v0
.end method

.method public getHostResponse()Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastEndpointResponse;->b:Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;

    return-object v0
.end method

.method public setCastResponse(Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastEndpointResponse;->a:Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;

    .line 24
    return-void
.end method

.method public setHostResponse(Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/DeviceCastEndpointResponse;->b:Lcom/cbs/app/androiddata/model/rest/DeviceCastResponse;

    .line 32
    return-void
.end method
