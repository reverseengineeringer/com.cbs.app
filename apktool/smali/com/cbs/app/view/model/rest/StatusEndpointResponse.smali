.class public Lcom/cbs/app/view/model/rest/StatusEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47cb36563730ada2L


# instance fields
.field private appConfig:Lcom/cbs/app/view/model/AppConfig;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appConfig"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "NAME"
    .end annotation
.end field

.field private status:Lcom/cbs/app/view/model/Status;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appVersion"
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->success:Z

    return-void
.end method


# virtual methods
.method public getAppConfig()Lcom/cbs/app/view/model/AppConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->appConfig:Lcom/cbs/app/view/model/AppConfig;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/cbs/app/view/model/Status;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->status:Lcom/cbs/app/view/model/Status;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->success:Z

    return v0
.end method

.method public setAppConfig(Lcom/cbs/app/view/model/AppConfig;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->appConfig:Lcom/cbs/app/view/model/AppConfig;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStatus(Lcom/cbs/app/view/model/Status;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->status:Lcom/cbs/app/view/model/Status;

    .line 46
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/StatusEndpointResponse;->success:Z

    .line 38
    return-void
.end method
