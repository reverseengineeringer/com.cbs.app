.class public Lcom/cbs/app/view/model/rest/HomeEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44d0fc7480c2071dL


# instance fields
.field private marqueeResponse:Lcom/cbs/app/view/model/rest/MarqueeResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "marquee"
    .end annotation
.end field

.field private scheduleResponse:Lcom/cbs/app/view/model/rest/ScheduleResponse;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "schedule"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarqueeResponse()Lcom/cbs/app/view/model/rest/MarqueeResponse;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->marqueeResponse:Lcom/cbs/app/view/model/rest/MarqueeResponse;

    return-object v0
.end method

.method public getScheduleResponse()Lcom/cbs/app/view/model/rest/ScheduleResponse;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->scheduleResponse:Lcom/cbs/app/view/model/rest/ScheduleResponse;

    return-object v0
.end method

.method public setMarqueeResponse(Lcom/cbs/app/view/model/rest/MarqueeResponse;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->marqueeResponse:Lcom/cbs/app/view/model/rest/MarqueeResponse;

    .line 37
    return-void
.end method

.method public setScheduleResponse(Lcom/cbs/app/view/model/rest/ScheduleResponse;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/HomeEndpointResponse;->scheduleResponse:Lcom/cbs/app/view/model/rest/ScheduleResponse;

    .line 29
    return-void
.end method
